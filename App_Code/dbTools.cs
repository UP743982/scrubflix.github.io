using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using MySql.Data;
using MySql.Data.MySqlClient;
using System.Linq;
using System.Web;
using System.Configuration;

/// <summary>
/// Summary description for dbTools
/// </summary>
public class dbTools
{
    // ********************************************************************************************************************
    // Global Variables
    // ********************************************************************************************************************

    public MySqlConnection dbConnection;
    private string ConnectionString;

    public struct ConnectionNodes
    {
        public const string dBase = "films";
    }

    // ********************************************************************************************************************
    // Main Constructor
    // ********************************************************************************************************************

    /// <summary>
    /// Database Connection Tools
    /// </summary>

    public dbTools()
    {
        dbConnection = new MySqlConnection();
    }

    // ********************************************************************************************************************
    // Connect to database
    // ********************************************************************************************************************

    /// <summary>
    /// Connect to database
    /// </summary>
    ///
    private void dbConnect()
    {
        ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings[ConnectionName].ConnectionString;
        dbConnection.ConnectionString = ConnectionString;
    }

    // ********************************************************************************************************************
    // Close connection to database
    // ********************************************************************************************************************

    /// <summary>
    /// Close database connection
    /// </summary>
    /// 
    public void dbClose()
    {
        dbConnection.Close();
    }

    // ********************************************************************************************************************
    // Open connection to database
    // ********************************************************************************************************************

    /// <summary>
    /// Open database connection
    /// </summary>
    /// 
    public void dbOpen()
    {
        dbConnection.Open();
    }

    // ********************************************************************************************************************
    // Set Connection String
    // ********************************************************************************************************************

    /// <summary>
    /// Get or Set database connection string
    /// </summary>
    /// 
    private static string connection_name = string.Empty;
    public string ConnectionName
    {
        get
        {
            return connection_name;
        }
        set
        {
            connection_name = value;
            dbConnect();
        }
    }

    // ********************************************************************************************************************
    // Get/Set Connection String Based on Domain
    // ********************************************************************************************************************

    /// <summary>
    /// Initialise/Parse SQL ConnectionString
    /// </summary>
    /// 

    public void ParseConnectionString(string __Node)
    {
        switch (__Node)
        {
            case ConnectionNodes.dBase:
                dbTools.connection_name = System.Configuration.ConfigurationManager.ConnectionStrings[ConnectionNodes.dBase].ConnectionString;
                break;
            default:
                break;
        }
    }
}
