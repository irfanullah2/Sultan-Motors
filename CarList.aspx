<%@ Page Title="" Language="C#" MasterPageFile="~/MyMaster.Master"
    AutoEventWireup="true" CodeBehind="CarList.aspx.cs"
    Inherits="CARSHOP_12.WebForm6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head"
    runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">


    <a class="btn btn-primary " style="margin: 10px 0px"
        href="CarSetup.aspx">Add New Car</a>



    <asp:GridView runat="server" ID="GV"
        AutoGenerateColumns="False"
        OnRowCommand="GV_RowCommand"
        OnRowEditing="GV_RowEditing"
        OnRowDeleting="GV_RowDeleting"
        CssClass="table table-bordered" CellPadding="4"
        ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Name" />
            <asp:BoundField DataField="Brand" HeaderText="BRAND" />
            <asp:BoundField DataField="Type" HeaderText="TYPE" />
            <asp:BoundField DataField="Model" HeaderText="Model" />
            <asp:BoundField DataField="Transmission" HeaderText="Transmission" />
            <asp:BoundField DataField="Color" HeaderText="Color" />
            <asp:BoundField DataField="steering" HeaderText="steering" />
            <asp:BoundField DataField="Safety" HeaderText="Safety" />
            <asp:BoundField DataField="GpsTracker" HeaderText="GPS" />
            <asp:BoundField DataField="Fuel" HeaderText="Fuel" />

            <asp:TemplateField HeaderText="Action">
                <ItemTemplate>
                    <asp:LinkButton runat="server" ID="btnEdit" Text="Edit"
                        CommandName="edit" CommandArgument='<%# Eval("CarID") %>'
                        OnClientClick="return confirm('Are U Sure to Edit??');"></asp:LinkButton>/
                    <asp:LinkButton runat="server" ID="btnDelete" Text="Delete"
                        CommandName="delete" CommandArgument='<%# Eval("CarID") %>'
                        OnClientClick="return confirm('Are U Sure to Delete??');"></asp:LinkButton>


                </ItemTemplate>
            </asp:TemplateField>


        </Columns>

        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True"
            ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True"
            ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White"
            HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1"
            Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />

    </asp:GridView>




</asp:Content>
