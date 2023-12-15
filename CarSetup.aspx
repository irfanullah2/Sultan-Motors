<%@ Page Title="" Language="C#" MasterPageFile="~/MyMaster.Master"
    AutoEventWireup="true" CodeBehind="CarSetup.aspx.cs"
    Inherits="CARSHOP_12.WebForm5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head"
    runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">
        <a class="btn btn-primary" style="margin : 15px 0px" href="CarList.aspx" >Available Cars</a>


    <div class="container ">
        <div class="row">

            <div class="col-md-2">

            </div>

            <div class="col-md-8 bg-light">
                <div class="row">
                    <div class="col-md-6">
                       
                        <div class="col">
                            <div class="form-group">
                                <label>Name</label>
                                 <asp:TextBox runat="server" ID="txtName" CssClass="form-control"></asp:TextBox>
                                
                            </div>
                        </div>





                        <div class="col">
                            <div class="form-group">
                                <label>brand</label>
                                <asp:dropdownlist runat="server" id="ddlBrand" cssclass="form-control">
                                </asp:dropdownlist>

                                <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlBrand" Display="Dynamic" InitialValue="0" ErrorMessage="Please Select Car Brand"  ForeColor="Red" ></asp:RequiredFieldValidator>  

                            </div>
                        </div>

                         <div class="col">
                            <div class="form-group">
                                <label>Type</label>
                                <asp:dropdownlist runat="server" id="ddlType" cssclass="form-control">
                                </asp:dropdownlist>

                                <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlType" Display="Dynamic" InitialValue="0" ErrorMessage="Please Select Car Type"  ForeColor="Red" ></asp:RequiredFieldValidator>  

                            </div>
                        </div>






                        <div class="col">
                            <div class="form-group">
                                <label>Color</label>
                                <asp:TextBox runat="server" ID="txtColor" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-group">
                                <label>Model</label>
                                <asp:TextBox runat="server" ID="txtModel" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col">

                            <div class="form-group">
                                <label>Transmission</label>
                                <asp:TextBox runat="server" ID="txtTransmission" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col">
                        <div class="form-group">
                            <label>Fuel</label>
                            <asp:TextBox runat="server" ID="txtfuel" CssClass="form-control"></asp:TextBox>

                        </div>
                            </div>


                        <div class="col">
                        <div class="form-group">
                            <label>Instrument</label>
                            <asp:TextBox runat="server" ID="txtInstrument" CssClass="form-control"></asp:TextBox>

                        </div>
                            </div>



                    </div>



                    <div class="col-md-6">

                        <div class="form-group">
                            <label>EnterTainment</label>
                            <asp:TextBox runat="server" ID="txtEntertainment" CssClass="form-control"></asp:TextBox>

                        </div>


                        <div class="form-group">
                            <label>Seats</label>
                            <asp:TextBox runat="server" ID="txtSeats" CssClass="form-control"></asp:TextBox>

                        </div>

                        <div class="form-group">
                            <label>GPS Tracker</label>
                            <asp:TextBox runat="server" ID="txtGPStracker" CssClass="form-control"></asp:TextBox>

                        </div>

                        <div class="form-group">
                            <label>Steering</label>
                            <asp:TextBox runat="server" ID="txtSteering" CssClass="form-control"></asp:TextBox>

                        </div>

                        <div class="form-group">
                            <label>HeadLights</label>
                            <asp:TextBox runat="server" ID="txtHeadLights" CssClass="form-control"></asp:TextBox>

                        </div>

                         <div class="form-group">
                            <label>HVAC</label>
                            <asp:TextBox runat="server" ID="txtHVAC" CssClass="form-control"></asp:TextBox>

                        </div> <div class="form-group">
                            <label>Safety</label>
                            <asp:TextBox runat="server" ID="txtSafety" CssClass="form-control"></asp:TextBox>

                        </div>

                </div>
                </div>


            </div>



        </div>

         <div class="form-group">

            <asp:Button runat="server" ID="btnSave" Text="Save"
                OnClick="btnSave_Click" CssClass="btn btn-primary" />

            <a href="CarList.aspx" class=" btn btn-primary">Cancel</a>

            <asp:Label runat="server" ID="lblMsg"></asp:Label>
        </div>



        </div>

       
   


</asp:Content>
