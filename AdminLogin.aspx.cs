using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CARSHOP_12
{
   


    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {   
            this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            if(Request.Cookies["CarShop12"] != null)
            {
                Session["ADMINID"] = Request.Cookies["CarShop12"]["ADMINID"];
                Session["FIRSTNAME"] = Request.Cookies["CarShop12"]["FIRSTNAME"];
                Session.Timeout = 540;
                Response.Redirect("Home.aspx");


            }

        }

        protected void btnLogin_Click(object sender, EventArgs e)

        {
            var pass1 = PasswordEcryption.EncodePasswordToBase64(txtPassword.Text);
           

            using(Carshop12Entities db = new Carshop12Entities())


            {
          

              var result = db.DoAdminLogin(txtEmail.Text, pass1).ToList();
              
                if(result.Count > 0)
                {


                    Session["ADMINID"] = result[0].AdminID;
                    Session["FIRSTNAME"] = result[0].FirstName;
                   
                    Session.Timeout = 540;

                    //cookies always take string
                    Response.Cookies["CarShop12"]["ADMINID"] = result[0].AdminID.ToString();
                    Response.Cookies["CarShop12"]["FIRSTNAME"] = result[0].FirstName;
                    Response.Cookies["CarShop12"].Expires = DateTime.Now.AddDays(6);

                    Response.Redirect("Home.aspx");

                }
                else
                {
                    Response.Write("Invalid Email or Password");


                }

            }


        }

    }
}