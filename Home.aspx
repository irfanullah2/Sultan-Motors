<%@ Page Title="" Language="C#" MasterPageFile="~/MyMaster.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CARSHOP_12.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

    <%--<h2>
         Welcome <%= Session["FIRSTNAME"]  %> to the Home Page

    </h2>--%>

    <div  >

        <img src="Images/banner3.jpg" height="300" width="1380" />

  </div>


    <div class="container">


          <div class="row">
            <div class="col-12 text-center" >
                <h2>Our Features</h2>
                <p>3 Primary Features</p>
            </div>
        </div>


        <div class="row">

            <div class="col-md-4 text-xl-center" >
              
                
                  <img width="150" src="Images/ad3.jpg" />
                

                <h3>BMW</h3>
                <p class="text-justify"> This is dummy text for the features of image so use it and go on.
                    This is dummy text for the features of image so use it and go on
                </p>
            
            </div>

            <div class="col-md-4 text-xl-center" >
              
                
                <img src="Images/c4.jpg"  width="150"/>
                

                <h3>XLI</h3>
                <p class="text-justify"> This is dummy text for the features of image so use it and go on.
                    This is dummy text for the features of image so use it and go on
                </p>
            
            </div>


            <div class="col-md-4 text-xl-center" >
              
                <img src="Images/ad1.jpg" width="150" />
                  
                

                <h3>AUDI</h3>
                <p class="text-justify"> This is dummy text for the features of image so use it and go on.
                    This is dummy text for the features of image so use it and go on
                </p>
            
            </div>






        </div>




        <%--<div >

            <img src="Images/banner5.jpg"  height="300" width="1400" />
            
            
             </div>--%>












    </div>



</asp:Content>
