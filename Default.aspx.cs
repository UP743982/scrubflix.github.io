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

public partial class _Default : System.Web.UI.Page
{
	// ******************************************************************************************************************
	// Global Variables
	// ******************************************************************************************************************

	public string __OutputHTML;

	// ******************************************************************************************************************
	// Page Load
	// ******************************************************************************************************************
	protected void Page_Load(object sender, EventArgs e)
	{
		DisplayMoviePosters();
	}

	// ******************************************************************************************************************
	// Display Movie Posters & Associated Data
	// ******************************************************************************************************************
	private void DisplayMoviePosters()
	{
		//setup connection to database        
		MySqlDataAdapter sqlAdapter;
		dbTools __dbTools = new dbTools();
		__dbTools.ParseConnectionString((__dbTools.ConnectionName = dbTools.ConnectionNodes.dBase));

		//define variables & set-up call to store procedure
		DataSet dataObj = new DataSet();

		try
		{
			sqlAdapter = new MySqlDataAdapter("GetAllMoviesWithPoster", __dbTools.dbConnection);
			sqlAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
			sqlAdapter.Fill(dataObj);

			//check for data returned
			if (Convert.ToInt32(dataObj.Tables[0].Rows[0]["m_Count"]) != 0)
			{
				System.Text.StringBuilder __sbHTML = new System.Text.StringBuilder();

				//build HTML string to display movie image & fade-in text for m_Count items returned
				for (int i = 0; i < Convert.ToInt32(DataBinder.Eval(dataObj.Tables[0].Rows[0], "[m_Count]")); i++)
				{
					__sbHTML.Append("<div class='col'><div class='container2'><a href='movie-detail.aspx?MovieID=");
					__sbHTML.Append(Convert.ToString(DataBinder.Eval(dataObj.Tables[0].Rows[i], "[MovieID]")));
					__sbHTML.Append("'>");
					__sbHTML.Append("<img class='resize-image img-responsive' src='");
					__sbHTML.Append(Convert.ToString(DataBinder.Eval(dataObj.Tables[0].Rows[i], "[Movie_Image]")));
					__sbHTML.Append("' alt='");
					__sbHTML.Append(Convert.ToString(DataBinder.Eval(dataObj.Tables[0].Rows[i], "[Movie_Title]")));
					__sbHTML.Append("' />");
					__sbHTML.Append("</a>");
					__sbHTML.Append("<a href='movie-detail.aspx?MovieID=");
					__sbHTML.Append(Convert.ToString(DataBinder.Eval(dataObj.Tables[0].Rows[i], "[MovieID]")));
					__sbHTML.Append("'>");
					__sbHTML.Append("<div class='overlay'><div class='text'><p style='font-size: 20px'>");
					__sbHTML.Append(Convert.ToString(DataBinder.Eval(dataObj.Tables[0].Rows[i], "[Movie_Title]")));
					__sbHTML.Append("</p><p style='font-size: 10px'>IMDB Rating: ");
					__sbHTML.Append(Convert.ToString(DataBinder.Eval(dataObj.Tables[0].Rows[i], "[Movie_Rating]")));
					__sbHTML.Append("</p><span style='color: yellow' class='fa fa-star'></span><span style='color: yellow' class='fa fa-star'></span><span style='color: yellow' class='fa fa-star'></span><span style='color: yellow' class='fa fa-star'></span><span class='fa fa-star'></span></div></div></a></div></div>");
				}
				__OutputHTML = __sbHTML.ToString();
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