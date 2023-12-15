using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CARSHOP_12
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
             using(Carshop12Entities db = new Carshop12Entities())
             {
                 tbleBrand b = new tbleBrand();
                 b.Brand = txtBrand.Text;
                 db.tbleBrands.Add(b);
                 db.SaveChanges();
                 Response.Redirect("BrandList.aspx");
                 lblMsg.Text= "Brand Inserted SuccessFully";

             }
        }
    }
}