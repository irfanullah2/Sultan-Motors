<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="CARSHOP_12.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Login Page</title>

    <meta name="viewport" content="width=device-width, initial-scale=1" />
   
    <link href="Bootstrap/bootstrap.css" rel="stylesheet" />
        
</head>
<body>
    <form id="form1" runat="server">
    <div class="container mt-4">
      <div class="row">
          <div class="col-md-6">

          </div>
          <div class="col-md-5">

            <center>
              <img src="Images/adminuser.png"   height="100px" />
              
                </center>
              <div class="form-group">
                  <label>Email Address</label>
                  <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control"></asp:TextBox>
              </div>
             <asp:RequiredFieldValidator SetFocusOnError="true" runat="server" ID="RFV1" Text="Enter Email" ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator>
              <div class="form-group">
                  <label>Password</label>
                  <asp:TextBox runat="server" ID="txtPassword" CssClass="form-control"></asp:TextBox>
              </div>
             <asp:RequiredFieldValidator SetFocusOnError="true" runat="server" ID="RFV2" Text="Enter Password" ControlToValidate="txtPassword" ForeColor="Red" ></asp:RequiredFieldValidator>

              <div class="col-4 mb-2">
              <a runat="server" href="##" >Forget Password</a>

              </div>



              <div class="form-group">

                  <asp:Button runat="server" ID="btnLogin" Text="Login" OnClick="btnLogin_Click" CssClass="btn btn-primary" />

              </div>




          </div>
      </div>   
    </div>
    </form>
</body>
</html>
