using System;
using System.Collections.Generic;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

/// <summary>
/// Summary description for User
/// </summary>
public class UserDB
{
    #region Pole
    private String _userID;
    private String _password;
    private String _fullname;
    private DateTime _lastLogin;
    private int _departID;
    private int _userType;

    public String userID
    {
        get { return _userID; }
        set { _userID = value; }
    }

    public String password
    {
        get { return _password; }
        set { _password = value; }
    }

    public String fullname
    {
        get { return _fullname; }
        set { _fullname = value; }
    }

    public DateTime lastLogin
    {
        get { return _lastLogin; }
        set { _lastLogin = value; }
    }

    public int departID
    {
        get { return _departID; }
        set { _departID = value; }
    }

    public int userType
    {
        get { return _userType; }
        set { _userType = value; }
    }

    #endregion

    public UserDB()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    /// <summary>
    /// Get User info from session
    /// </summary>
    /// <param name="info">Session row about User</param>
    public static UserDB GetUser(DataRow info)
    {
        UserDB result = new UserDB();
        try
        {
            result.userID = info["userID"].ToString();
            result.password = info["password"].ToString();
            result.fullname = info["fullname"].ToString();
            result.lastLogin = (DateTime)info["lastLogin"];
            result.departID = (int)info["departID"];
            result.userType = (int)info["userType"];
        }
        catch {        }
        return result;
    }

}