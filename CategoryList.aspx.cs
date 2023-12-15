using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CARSHOP_12
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            InsertType();
        }

        protected void InsertType()
        {
            using (Carshop12Entities db = new Carshop12Entities())
            {
                var type = db.GetType().ToList();
                GV.DataSource = type;
                GV.DataBind();


            }

        }

        protected void GV_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void GV_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }
        protected void GV_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            if(e.CommandName=="Edit")
            {
                Response.Redirect("CategorySetup.aspx?tpid=" + e.CommandArgument);
            }

            else if(e.CommandName=="Delete")
            {
                using (Carshop12Entities db = new Carshop12Entities())
                {
                    int id =Convert.ToInt32(e.CommandArgument);
                    db.DeleteType(id);
                
                }
                InsertType();





            }
        }

    
    
    }

}