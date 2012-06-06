using System;
using System.Collections.Generic;
using System.Web;

/// <summary>
/// Summary description for Price
/// </summary>
public class Price
{
    public int priceID;
    public int fastPrice;
    public int lunPrice;
    public int dinPrice;
    
	public Price()
	{
		//
		// TODO: Add constructor logic here
		//
        fastPrice = 0;
        lunPrice = 0;
        dinPrice = 0;
	}
}