using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CARSHOP_12
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Session["ADMINID"] = null;
            //Session["FIRSTNAME"] = null;
            
            Session.Abandon();
            Response.Cookies["CarShop12"].Expires = DateTime.Now.AddDays(-1);

            Response.Redirect("AdminLogin.aspx");
        }
    }
}