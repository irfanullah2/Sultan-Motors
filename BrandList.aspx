<%@ Page Title="" Language="C#" MasterPageFile="~/MyMaster.Master" AutoEventWireup="true" CodeBehind="BrandList.aspx.cs" Inherits="CARSHOP_12.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <a class="btn btn-primary" style="margin : 15px 0px" href="BrandSetup.aspx" >Add Brand</a>

    <asp:GridView runat="server" ID="GV1"  
        AutoGenerateColumns="False" 
        OnRowCommand="GV1_RowCommand" 
        OnRowEditing="GV1_RowEditing" 
        OnRowDeleting="GV1_RowDeleting" 
        CssClass="table table-bordered" CellPadding="4" 
        ForeColor="#333333" GridLines="None" >
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="BrandId" HeaderText="BrandID" />
            <asp:BoundField DataField="Brand" HeaderText="Brand" />

            <asp:TemplateField HeaderText="Action">
                <ItemTemplate>
                    <asp:LinkButton runat="server" ID="btnEdit" Text="Edit" CommandName="Edit" CommandArgument='<%# Eval("BrandId") %>' ></asp:LinkButton>
                   / <asp:LinkButton runat="server" ID="btnDelete" Text="Delete" CommandName="Delete" CommandArgument='<%# Eval("BrandId") %>' OnClientClick="return confirm('Are U Sure to Delete Brand??');" ></asp:LinkButton>
              
                      </ItemTemplate>
            </asp:TemplateField>

        </Columns>

        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" 
            ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" 
            ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" 
            HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" 
            Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />

    </asp:GridView>





</asp:Content>
