<%@ Page Title="" Language="C#" MasterPageFile="~/MyMaster.Master" AutoEventWireup="true" CodeBehind="AdminList.aspx.cs" Inherits="CARSHOP_12.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">












    <a class="btn btn-primary " style="margin : 10px 0px" href="AdminSetup.aspx" >Add New Admin</a>


    <asp:GridView runat="server" ID="GV1" 
        AutoGenerateColumns="False" 
        OnRowCommand="GV1_RowCommand" 
        OnRowEditing="GV1_RowEditing" 
        OnRowDeleting="GV1_RowDeleting"  
        CssClass="table table-bordered bg-light" 
        BackColor="White" BorderColor="#CCCCCC" 
        BorderStyle="None" BorderWidth="1px" 
        CellPadding="3">

        <Columns>
            <%--<asp:boundfield datafield="adminid" headertext="adminid" />--%>
            <asp:boundfield datafield ="firstname" headertext ="First Name " />
            <%--<asp:boundfield datafield ="lastname" headertext ="Last Name " />--%>
            <asp:boundfield datafield ="email" headertext ="Email" />
            <asp:boundfield datafield ="password" headertext ="Password" />
            <asp:BoundField DataField ="Status" HeaderText="Status" />
           

           <asp:TemplateField headertext="Action" >
               <ItemTemplate >
                   <asp:LinkButton runat="server" ID="btnEdit" Text="Edit" CommandName="edit" CommandArgument='<%# Eval("AdminID") %>'></asp:LinkButton>/
                   <asp:LinkButton runat="server" ID="btnDelete" Text="Delete" CommandName="delete"  CommandArgument='<%# Eval("AdminID")%>' OnClientClick=" return confirm('Are you sure to delete this Admin?');" ></asp:LinkButton>


               </ItemTemplate>
           </asp:TemplateField>


        </Columns>

        <FooterStyle BackColor="White" 
            ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" 
            ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" 
            HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" 
            Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />

    </asp:GridView>


    


   
   


</asp:Content>
