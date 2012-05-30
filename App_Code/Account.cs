using System;
using System.Collections.Generic;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for User
/// </summary>
public static class Account
{
        
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
}