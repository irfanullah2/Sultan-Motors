using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CARSHOP_12
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            InsertBrand();
        }
        protected void InsertBrand()
        {
            using (Carshop12Entities db = new Carshop12Entities())
            {
                var brand = db.GetBrand().ToList();
                GV1.DataSource = brand;
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
            if (e.CommandName=="Edit")
            {
                Response.Redirect("BrandSetup.aspx?brid=" + e.CommandArgument);
            }
            else if (e.CommandName=="Delete")
            {
                using (Carshop12Entities db = new Carshop12Entities())
                {
                    int id = Convert.ToInt32(e.CommandArgument);
                    db.DeletBrand(id);
                }
                InsertBrand();

            }
        }
    }
}