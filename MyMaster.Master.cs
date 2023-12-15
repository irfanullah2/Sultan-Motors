using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CARSHOP_12
{
    public partial class MyMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
             if(Session["ADMINID"]==null && Session["FIRSTNAME"]==null)
             {
                 Response.Redirect("AdminLogin.aspx");
             }
                   
        }
    }
}