<%@ Page Title="" Language="C#" MasterPageFile="~/MyMaster.Master" AutoEventWireup="true" CodeBehind="BrandSetup.aspx.cs" Inherits="CARSHOP_12.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <a class="btn btn-primary" style="margin : 15px 0px" href="BrandList.aspx" >Brands List</a>


    <div class="container">
        <div class="row">

            <div class="col-7">


            </div>

            <div class="col-md-4 bg-light">

                <div class="form-group">
                    <label>Brand</label>
                <asp:TextBox runat="server" ID="txtBrand" CssClass="form-control"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator runat="server" ID="RFV1" SetFocusOnError="true" ControlToValidate="txtBrand" ErrorMessage="Please Enter Brand" ForeColor="Red"></asp:RequiredFieldValidator>

                <div class="form-group">

                  <asp:Button runat="server" ID="btnAdd" Text="Add"  OnClick="btnAdd_Click"  CssClass="btn btn-primary" />
              
                  <a href ="BrandList.aspx"  class=" btn btn-primary">Cancel</a>

                  <asp:Label runat="server" ID="lblMsg" ></asp:Label>
              </div>






            </div>




        </div>
    </div>







</asp:Content>
