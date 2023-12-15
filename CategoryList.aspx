<%@ Page Title="" Language="C#" MasterPageFile="~/MyMaster.Master" AutoEventWireup="true" CodeBehind="CategoryList.aspx.cs" Inherits="CARSHOP_12.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">






    <a class="btn btn-primary" style="margin : 15px 0px" href="CategorySetup.aspx" >Add Type</a>






    <asp:GridView runat="server" ID="GV" 
        AutoGenerateColumns="False" 
        OnRowCommand="GV_RowCommand"  
        OnRowEditing="GV_RowEditing" 
        OnRowDeleting="GV_RowDeleting" 
        CssClass="table table-bordered" 
        BackColor="#DEBA84" BorderColor="#DEBA84" 
        BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" CellSpacing="2" >

        <Columns>

          <asp:BoundField DataField="TypeID" HeaderText="TYPE ID" />
          <asp:BoundField DataField="Type"  HeaderText="TYPE" />


            <asp:TemplateField HeaderText="Action">
                <ItemTemplate>

        <asp:LinkButton runat="server" ID="btnEdit" Text="Edit" CommandName="Edit" CommandArgument='<%# Eval("TypeID") %>' ></asp:LinkButton>
         / <asp:LinkButton runat="server" ID="btnDelete" Text="Delete" CommandName="Delete" CommandArgument='<%# Eval("TypeID") %>' OnClientClick="return confirm('Are U Sure to Delete Brand??');" ></asp:LinkButton>
              

                </ItemTemplate>
            </asp:TemplateField>


        </Columns>


        <FooterStyle BackColor="#F7DFB5" 
            ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" 
            ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" 
            HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" 
            ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" 
            Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />


    </asp:GridView>




</asp:Content>
