using System;
using System.Collections.Generic;
using System.Web;
using System.Data;

/// <summary>
/// Class order and its methods
/// </summary>
public class Order
{
    public DateTime orderDay; // id of order
    public String ownerID; // id of owner of this order
    public String createrID; //id of person, who has created this order
    public DateTime createTime;
    public DateTime modTime;
    public int fastNum;
    public int lunNum;
    public int dinNum;
    public int priceID;

	public Order()
	{
        

	}
    /// <summary>
    /// Get DataTable of order 
    /// </summary>
    /// <param name="ownerID">Who own this order</param>
    /// <param name="orderDay">The day when order is ordered</param>
    /// <returns></returns>
    public static DataTable GetOrder(String ownerID, DateTime orderDay)
    {
        DataTable result = new DataTable();
        
        String sqlcommand = "SELECT * FROM [Order] WHERE [ownerID] = @ownerID AND [orderDay] = @orderDay" ;
        try
        {
            result = Database.GetData(sqlcommand,
               "@ownerID", ownerID,
               "@orderDay", orderDay.ToShortDateString());
        }
        catch {
            return null;
        }
        return result;
    }
    /// <summary>
    /// If on orderDay 
    /// </summary>
    /// <param name="ownerID"></param>
    /// <param name="orderDay"></param>
    /// <returns>true when Is ordered, false if not</returns>
   
    
}