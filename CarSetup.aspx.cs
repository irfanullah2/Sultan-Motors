using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CARSHOP_12
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;


            using (Carshop12Entities db = new Carshop12Entities())
            {
                var brands = db.GetBrand().ToList();
                ddlBrand.DataSource = brands;
                ddlBrand.DataTextField = "Brand";
                ddlBrand.DataValueField = "BrandID";
                ddlBrand.DataBind();
                ddlBrand.Items.Insert(0,new ListItem("Select", "0"));

            }


            using (Carshop12Entities db = new Carshop12Entities())
            {

                var Types = db.GetType().ToList();
                ddlType.DataSource = Types;
                ddlType.DataTextField = "Type";
                ddlType.DataValueField = "TypeID";
                ddlType.DataBind();
                ddlType.Items.Insert(0, new ListItem("Select", "0"));

            }


            

            using (Carshop12Entities db = new Carshop12Entities())
            {
                if(Request.QueryString["carid"] != null)
                {
                    int CarID =Convert.ToInt32(Request.QueryString["carid"]);
                   tbleCar cr = db.tbleCars.FirstOrDefault(i =>i.CarID==CarID);
                    if(cr != null)
                    {
                        
                     
                        txtColor.Text = cr.Color;
                        ddlBrand.SelectedValue = cr.BrandId.ToString();
                        ddlType.SelectedValue = cr.TypeID.ToString();
                        txtName.Text = cr.Name;
                        txtModel.Text = cr.Model;
                       txtTransmission.Text =cr.Transmission;
                       txtfuel.Text = cr.Fuel;
                       txtEntertainment.Text = cr.Entertainment;
                       txtSeats.Text = cr.Seats;
                       txtInstrument.Text = cr.Instrument;
                       txtGPStracker.Text = cr.GpsTracker;
                       txtSteering.Text = cr.Steering;
                       txtHeadLights.Text = cr.Headlights;
                       txtHVAC.Text = cr.HvAC;
                       txtSafety.Text = cr.Safety;
                       
                       
                    }

                }

            }
           

            





        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            using (Carshop12Entities db = new Carshop12Entities())
            {
                tbleCar c = null;
                if (Request.QueryString["carid"] != null)
                {


                    int CarID = Convert.ToInt32(Request.QueryString["carid"]);
                     c = db.tbleCars.FirstOrDefault(i => i.CarID == CarID);
               

                }

                else
                {

                    c = new tbleCar();
                   
                }

                c.Name = txtName.Text;
                c.BrandId = Convert.ToInt32(ddlBrand.SelectedItem.Value);
                c.TypeID= Convert.ToInt32(ddlType.SelectedItem.Value);
                c.Color = txtColor.Text;
                c.Model = txtModel.Text;
                c.Transmission = txtTransmission.Text;
                c.Fuel = txtfuel.Text;
                c.Entertainment = txtEntertainment.Text;
                c.Seats = txtSeats.Text;
                c.Instrument = txtInstrument.Text;
                c.GpsTracker = txtGPStracker.Text;
                c.Steering = txtSteering.Text;
                c.Headlights = txtHeadLights.Text;
                c.HvAC = txtHVAC.Text;
                c.Safety = txtSafety.Text;

                if (Request.QueryString["carid"] == null)
                {
                db.tbleCars.Add(c);
                }

                db.SaveChanges();
                Response.Redirect("CarList.aspx");






            }

        }
    }
}