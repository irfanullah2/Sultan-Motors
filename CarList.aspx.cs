﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CARSHOP_12
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            InsertCars();
        }
        protected void InsertCars()
        {
            using (Carshop12Entities db = new Carshop12Entities())
            {
                var cars = db.GetCars().ToList();
                GV.DataSource = cars;
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
            if (e.CommandName == "edit")
            {
                
                Response.Redirect("CarSetup.aspx?carid=" + e.CommandArgument);
               

            }
            else if (e.CommandName == "delete")
            {
                using (Carshop12Entities db = new Carshop12Entities())
                {
                    int id = Convert.ToInt32(e.CommandArgument);
                    db.DeleteCars(id);
                }
                InsertCars();
               
            }


        }
    }
}