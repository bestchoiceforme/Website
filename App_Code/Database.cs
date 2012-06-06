using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public static class Database
{
        
    public static String ConnectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Kitchen.mdf;Integrated Security=True;User Instance=True";
	public static SqlConnection GetConnection()
	{
        return new SqlConnection(ConnectionString);
	}

    public static DataTable Fill(DataTable table, String sql, params Object[] parameters)
    {
        SqlCommand command = Database.CreateCommand(sql, parameters);
        new SqlDataAdapter(command).Fill(table);
        command.Connection.Close();

        return table;
    }

    public static DataTable GetData(String sql, params Object[] parameters)
    {
        return Database.Fill(new DataTable(), sql, parameters);
    }

    public static int ExecuteNonQuery(String sql, params Object[] parameters)
    {
        SqlCommand command = Database.CreateCommand(sql, parameters);
        
        command.Connection.Open();
        int rows = command.ExecuteNonQuery();
        command.Connection.Close();
        
        return rows;
    }

    public static object ExecuteScalar(String sql, params Object[] parameters)
    {
        SqlCommand command = Database.CreateCommand(sql, parameters);
        
        command.Connection.Open();
        object value = command.ExecuteScalar();
        command.Connection.Close();

        return value;
    }

    private static SqlCommand CreateCommand(String sql, params Object[] parameters)
    {
        SqlCommand command = new SqlCommand(sql, Database.GetConnection());
        for (int i = 0; i < parameters.Length; i+=2)
        {
            command.Parameters.AddWithValue(parameters[i].ToString(), parameters[i + 1]);
        }
        return command;
    }

    /// <summary>
    /// Write to database new order
    /// </summary>
    /// <param name="submitorder">order to be submitted</param>
    public static int SubmitOrder(Order submitorder)
    {

        String sqlcommand = "INSERT INTO [Order] ([orderDay],[ownerID],[createTime],[modTime],[fastNum],[lunNum], [dinNum],[priceID],[createrID]) VALUES (@orderDay, @ownerID, @createTime,@modTime,@fastNum,@lunNum, @dinNum,@priceID,@createrID)";
        return Database.ExecuteNonQuery(sqlcommand,
            "@orderDay", submitorder.orderDay.ToShortDateString(),
            "@ownerID", submitorder.ownerID,
            "@createTime", submitorder.createTime,
            "@modTime", submitorder.modTime,
            "@fastNum", submitorder.fastNum,
            "@lunNum", submitorder.lunNum,
            "@dinNum", submitorder.dinNum,
            "@priceID", submitorder.priceID,
            "@createrID", submitorder.createrID
            );
    }

    public static DataTable UserSession(String userID, String password)
    {
        String sql = "SELECT * FROM [User] WHERE [userID]=@userID AND [password] = @password";
        DataTable table = Database.GetData(sql, "@userID", userID, "@password", password);

        return table;
    }


    public static DataTable UserSession(String userID)
    {
        String sql = "SELECT * FROM [User] WHERE [userID]=@userID";
        DataTable table = Database.GetData(sql, "@userID", userID);
        return table;
    }

    public static Price GetCurrentPrice()
    {
        String sql = "SELECT * FROM [Price] WHERE InUse=@InUse";
        DataTable table = Database.GetData(sql, "@InUse","1");
        Price price = new Price();
        if (table.Rows.Count > 0)
        {
            int.TryParse(table.Rows[0]["priceID"].ToString(), out price.priceID);
            int.TryParse(table.Rows[0]["fastPrice"].ToString(), out price.fastPrice);
            int.TryParse(table.Rows[0]["lunPrice"].ToString(), out price.lunPrice);
            int.TryParse(table.Rows[0]["dinPrice"].ToString(), out price.dinPrice);
        }
        return price;
    }
    /// <summary>
    /// Check if ownerID have ordered for orderDay
    /// </summary>
    /// <param name="ownerID"></param>
    /// <param name="orderDay"></param>
    /// <returns>true - false</returns>
    public static bool IsOrdered(String ownerID, DateTime orderDay)
    {
        bool check = false;
        int result;
        String sqlcommand = "SELECT COUNT(*) FROM [Order] WHERE [ownerID] = @ownerID AND [orderDay] = @orderDay";
        try
        {
            result = Database.ExecuteNonQuery(sqlcommand,
           "@ownerID", ownerID,
           "@orderDay", orderDay.ToShortDateString());
            if (result > 0) check = true;
        }
        catch { check = false; }

        return check;
    }
    
}
