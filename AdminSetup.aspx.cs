using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

  namespace CARSHOP_12
{
    public class PasswordEcryption
    {
        public static string EncodePasswordToBase64(string password)
        {
            try
            {
                byte[] encData_byte = new byte[password.Length];
                encData_byte = System.Text.Encoding.UTF8.GetBytes(password);
                string encodedData = Convert.ToBase64String(encData_byte);
                return encodedData;
            }
            catch (Exception ex)
            {
                throw new Exception("Error in base64Encode" + ex.Message);
            }
        }
        //this function Convert to Decord your Password
        public static string DecodeFrom64(string encodedData)
        {
            System.Text.UTF8Encoding encoder = new System.Text.UTF8Encoding();
            System.Text.Decoder utf8Decode = encoder.GetDecoder();
            byte[] todecode_byte = Convert.FromBase64String(encodedData);
            int charCount = utf8Decode.GetCharCount(todecode_byte, 0, todecode_byte.Length);
            char[] decoded_char = new char[charCount];
            utf8Decode.GetChars(todecode_byte, 0, todecode_byte.Length, decoded_char, 0);
            string result = new String(decoded_char);
            return result;
        }
    }


    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            if (IsPostBack) return;

            radbtn1.Checked= true;
            using( Carshop12Entities db = new Carshop12Entities())
            {

                if(Request.QueryString["adid"] != null)
                {
                    int AdminID = Convert.ToInt32(Request.QueryString["adid"]);
                    tbleAdmin ad = db.tbleAdmins.FirstOrDefault(i => i.AdminID == AdminID);
                     
                    if(ad != null)
                    {
                        txtFirstName.Text = ad.FirstName;
                        txtLastName.Text = ad.LastName;
                        txtEmail.Text = ad.Email;
                        txtPassword.Text = ad.Password;
                      if(ad.status==true)
                      {

                      }
                      else
                      {
                          raddbtn2.Checked = true;
                      }
                    }
                }

            }
         
          
            

        
            }
        protected void btnSave_Click(object sender, EventArgs e)
        {


            var pass = PasswordEcryption.EncodePasswordToBase64(txtPassword.Text);


            using(Carshop12Entities db = new Carshop12Entities())
            {

                tbleAdmin a = null;

                int AdminID = Convert.ToInt32(Request.QueryString["adid"]);


                tbleAdmin aa = db.tbleAdmins.FirstOrDefault(i => i.Email == txtEmail.Text && i.AdminID != AdminID);
                if (aa != null)
                {
                    lblEmail.Text = "Email Already Exists";
                    return;
                }

                if (Request.QueryString["adid"] != null)
                {
                    int AdminID1 = Convert.ToInt32(Request.QueryString["adid"]);
                     a = db.tbleAdmins.FirstOrDefault(i => i.AdminID == AdminID1);
                    



                 }

                 else
                 {
                   tbleAdmin aaa = db.tbleAdmins.FirstOrDefault(i => i.Email == txtEmail.Text);
                    if(aaa !=null)
                    {
                        lblEmail.Text = "Email Already Exists";
                        return;
                    }

                      a = new tbleAdmin();
                    
                 }

                a.FirstName = txtFirstName.Text;
                a.LastName = txtLastName.Text;
                a.Email = txtEmail.Text;
                a.Password = pass;

                if (radbtn1.Checked == true)
                {
                    a.status = true;
                }
                else
                {
                    a.status = false;
                }
             


                if (Request.QueryString["adid"] == null)
                {
                db.tbleAdmins.Add(a);

                }

                db.SaveChanges();
                lblMsg.Text = "Record Inserted Successfully";

                Response.Redirect("AdminList.aspx");





            }
            

        }

       

       

    }
}