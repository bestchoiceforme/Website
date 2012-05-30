<%@ Application Language="C#" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        // Lấy số đếm trong CSDL
    /*    String sql = "SELECT Visitors FROM Votes";
        int Visitors = (int)Database.ExecuteScalar(sql);
        
        // Bỏ vào biến Application
        Application["Visitors"] = Visitors;
     * */
       // if (Session["ThanhVien"] == null) Application_End(sender,e);
    }
    
    void Application_End(object sender, EventArgs e) {}
        
    void Application_Error(object sender, EventArgs e) { }

    void Session_Start(object sender, EventArgs e) 
    {
        // Tăng số đếm trong biến Application lên 1
       
        
        // Lưu số đếm vào CSDL
        /*
        String sql = "UPDATE Votes SET Visitors=@Visitors";
        Database.ExecuteNonQuery(sql, "@Visitors", Application["Visitors"]);

        // Giỏ hàng điện tử
        Session["ShoppingCart"] = new ShoppingCart();
         * */
    }

    void Session_End(object sender, EventArgs e) 
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }
       
</script>
