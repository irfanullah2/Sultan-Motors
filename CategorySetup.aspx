<%@ Page Title="" Language="C#" MasterPageFile="~/MyMaster.Master" AutoEventWireup="true" CodeBehind="CategorySetup.aspx.cs" Inherits="CARSHOP_12.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <a class="btn btn-primary" style="margin : 15px 0px" href="CategoryList.aspx" >Category List</a>


     <div class="container">
        <div class="row">

            <div class="col-7">


            </div>

            <div class="col-md-4 bg-light">

                <div class="form-group">
                    <label>Category</label>
                <asp:TextBox runat="server" ID="txtType" CssClass="form-control"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator runat="server" ID="RFV1" SetFocusOnError="true" ControlToValidate="txtType" ErrorMessage="Please Enter Category" ForeColor="Red"></asp:RequiredFieldValidator>

                <div class="form-group">

                  <asp:Button runat="server" ID="btnAdd" Text="Add" OnClick="btnAdd_Click" CssClass="btn btn-primary" />
              
                  <a href ="CategoryList.aspx"  class=" btn btn-primary">Cancel</a>

                  <asp:Label runat="server" ID="lblMsg" ></asp:Label>
              </div>






            </div>




        </div>
    </div>












</asp:Content>
