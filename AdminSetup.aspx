<%@ Page Title="" Language="C#" MasterPageFile="~/MyMaster.Master" AutoEventWireup="true" CodeBehind="AdminSetup.aspx.cs" Inherits="CARSHOP_12.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">




    
    
    <a class="btn btn-primary " style="margin : 15px 0px" href="AdminList.aspx" >AdminList</a>

    <div class="container ">
      <div class="row">             
          
           <div class="col-3">

           </div>


       <div class="col-md-6 bg-light ">
          

              <div class="form-group">
                  <label>First Name</label>
                  <asp:TextBox runat="server" ID="txtFirstName" CssClass="form-control"></asp:TextBox>
              </div>
             <asp:RequiredFieldValidator SetFocusOnError="true" runat="server" ID="RFV1" Text="Enter First Name" ControlToValidate="txtFirstName" ForeColor="Red"></asp:RequiredFieldValidator>
             
                 <div class="form-group">
                  <label>Last Name</label>
                  <asp:TextBox runat="server" ID="txtLastName" CssClass="form-control"></asp:TextBox>
              </div>
             <asp:RequiredFieldValidator SetFocusOnError="true" runat="server" ID="RFV2" Text="Enter Last Name" ControlToValidate="txtLastName" ForeColor="Red"></asp:RequiredFieldValidator>
             
              <div class="form-group">
                  <label>Email:</label>
                  <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control"></asp:TextBox>
         <asp:RequiredFieldValidator SetFocusOnError="true" runat="server" ID="RFV3" Text="Enter Email" ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:Label runat="server" ID="lblEmail" ForeColor="Red"></asp:Label>
                   <%--<asp:RegularExpressionValidator runat="server" SetFocusOnError="true" ID="RFV5" ControlToValidate="txtEmail"   ></asp:RegularExpressionValidator>--%>

                   </div>



               <div class="form-group">
                  <label>Password</label>
                  <asp:TextBox runat="server" ID="txtPassword" CssClass="form-control"></asp:TextBox>
              </div>
             <asp:RequiredFieldValidator SetFocusOnError="true" runat="server" ID="RFV4" Text="Enter Password" ControlToValidate="txtPassword" ForeColor="Red" ></asp:RequiredFieldValidator>



               <div class="form-group">
                  <label>Status</label>
                   <br />

                  <asp:RadioButton runat="server" ID="radbtn1" Text="Active" GroupName="Status" /> 
                   <br />
                  <asp:RadioButton runat="server" ID="raddbtn2" Text="Inactive" GroupName="Status" /> 
              </div>

              








              <div class="form-group">

                  <asp:Button runat="server" ID="btnSave" Text="Save" OnClick="btnSave_Click"  CssClass="btn btn-primary" />
              
                  <a href ="AdminList.aspx"  class=" btn btn-primary">Cancel</a>

                  <asp:Label runat="server" ID="lblMsg" ></asp:Label>
              </div>




          </div>


         
      </div>   
    </div>



    
    


</asp:Content>
