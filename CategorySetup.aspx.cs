using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CARSHOP_12
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {

            using (Carshop12Entities db = new Carshop12Entities())
            {
                tbleType t = new tbleType();
                t.Type = txtType.Text;
                db.tbleTypes.Add(t);
                db.SaveChanges();
                Response.Redirect("CategoryList.aspx");
                lblMsg.Text = "Type Inserted SuccessFully";



            }



        }
    }
}