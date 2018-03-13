using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using MySql.Data;
using MySql.Data.MySqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class movie_detail : System.Web.UI.Page
{
	// ******************************************************************************************************************
	// Global Variables
	// ******************************************************************************************************************

	public string __OutputImgHTML;
	public string __OutputTextHTML;
	public int MovieID;

	// ******************************************************************************************************************
	// Page Load
	// ******************************************************************************************************************
	protected void Page_Load(object sender, EventArgs e)
	{
		//get MovieID passed in URL and assign to C# global variable MovieID
		MovieID = Convert.ToInt32(Request.QueryString["MovieID"]);

		//call funtion to display full movie details base on MovieID parameter passed in URL
		DisplayMovieDetails();
	}

	// ******************************************************************************************************************
	// Display Full Mivie Details Based On MovieID Contained in MySQL Database
	// ******************************************************************************************************************
	private void DisplayMovieDetails()
	{
		//setup connection to database        
		MySqlDataAdapter sqlAdapter;
		dbTools __dbTools = new dbTools();
		__dbTools.ParseConnectionString((__dbTools.ConnectionName = dbTools.ConnectionNodes.dBase));

		//define variables & set-up call to store procedure
		DataSet dataObj = new DataSet();

		try
		{
			sqlAdapter = new MySqlDataAdapter("GetDetailsByMovieID", __dbTools.dbConnection);
			sqlAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

			//get record based on username
			MySqlParameter CreateMovieParameter = new MySqlParameter();
			CreateMovieParameter.ParameterName = "Movie_Selected";
			CreateMovieParameter.MySqlDbType = MySqlDbType.Int32;
			CreateMovieParameter.Value = MovieID;
			sqlAdapter.SelectCommand.Parameters.Add(CreateMovieParameter);

			sqlAdapter.Fill(dataObj);

			//check for data returned
			if (Convert.ToInt32(dataObj.Tables[0].Rows[0]["m_Count"]) != 0)
			{
				System.Text.StringBuilder __sbHTML = new System.Text.StringBuilder();

				//build HTML string to display movie image
				__sbHTML.Clear();
				__sbHTML.Append("<img class='img-responsive img-size' src='");
				__sbHTML.Append(Convert.ToString(DataBinder.Eval(dataObj.Tables[0].Rows[0], "[Movie_Image]")));
				__sbHTML.Append("' alt='");
				__sbHTML.Append(Convert.ToString(DataBinder.Eval(dataObj.Tables[0].Rows[0], "[Movie_Title]")));
				__sbHTML.Append("' />");
				__OutputImgHTML = __sbHTML.ToString();

				//build HTML string to display movie information text
				__sbHTML.Clear();
				__sbHTML.Append("<h3>");
				__sbHTML.Append(Convert.ToString(DataBinder.Eval(dataObj.Tables[0].Rows[0], "[Movie_Title]")));
				__sbHTML.Append(" - IMBD Rating ");
				__sbHTML.Append(Convert.ToString(DataBinder.Eval(dataObj.Tables[0].Rows[0], "[Movie_Rating]")));
				__sbHTML.Append("/10</h3>");
				__sbHTML.Append("<p><b>");
				__sbHTML.Append("Release Date - ");
				__sbHTML.Append(Convert.ToString(DataBinder.Eval(dataObj.Tables[0].Rows[0], "[Movie_Release_date]")));
				__sbHTML.Append("</b></p>");
				__sbHTML.Append("<p><i>");
				__sbHTML.Append(Convert.ToString(DataBinder.Eval(dataObj.Tables[0].Rows[0], "[Movie_Description]")));
				__sbHTML.Append("</i></p>");
				__sbHTML.Append("<p><b>");
				__sbHTML.Append("Genre - ");
				__sbHTML.Append(Convert.ToString(DataBinder.Eval(dataObj.Tables[0].Rows[0], "[Movie_Genre]")));
				__sbHTML.Append("</b></p>");
				__OutputTextHTML = __sbHTML.ToString();
			}
		}
		catch (Exception ex)
		{
			throw (ex);
		}

		finally
		{
			__dbTools.dbClose();
		}
	}
}