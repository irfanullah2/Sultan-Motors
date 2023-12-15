using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CARSHOP_12
{
    public partial class WebForm4 : System.Web.UI.Page
    {
         
        protected void Page_Load(object sender, EventArgs e)
        {
            InsertAdmin();
        }

        protected void InsertAdmin()
        {
            using (Carshop12Entities db = new Carshop12Entities())
            {

                var admins = db.GetAdmins().ToList();
                GV1.DataSource = admins;
                GV1.DataBind();
            }

        }

        
        protected void GV1_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void GV1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
                
        }

        protected void GV1_RowCommand(object sender, GridViewCommandEventArgs e)
        {

           
             if (e.CommandName == "delete")
            {
                using (Carshop12Entities db = new Carshop12Entities())
                {
                    var id = Convert.ToInt32(e.CommandArgument);
                    db.DeleteAdmin(id);
                }

                InsertAdmin();

            }
              else if (e.CommandName == "edit")
             
             {
                 Response.Redirect("AdminSetup.aspx?adid=" + e.CommandArgument);
             }



        }
    }
}