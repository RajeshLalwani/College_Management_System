<%@ Page Title="" Language="C#" MasterPageFile="~/Student_MasterPage.master" AutoEventWireup="true" CodeFile="Student_Academic_Info.aspx.cs" Inherits="Student_Academic_Info" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <%--<style>
        
          .validation-style
        {
             background: linear-gradient(to right, red, aqua,red);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;                              
        }
        
          .panel-style
        {
            /*background: rgb(127,234,217);*/
            
            background:linear-gradient(to right, #99ffff, #00FFFF, #99ffff);
            margin: 10px 100px 8px 100px;
           /* border: 3px solid green;*/ 
            padding: 20px;  
           
        }
      
  
          .heading-style
            {
                 /*background: linear-gradient(to right, red, aqua,red);
                  -webkit-background-clip: text;
                   background-clip: text;
                   color: transparent; */
            
                color:#1bae9a;
                background: rgb(127,234,217);
                background: linear-gradient(0deg, rgba(127,234,217,1) 0%, rgba(240,255,253,1) 100%);               
                box-shadow: 0px 0px 0px 3px white;        
                transition: box-shadow 0.6s linear;
                margin: 0.5em;   
                font-size:30px;  
                text-align: center;
            
            
            }
            
             .sub-heading-style
            {
                 /*background: linear-gradient(to right, red, aqua,red);
                  -webkit-background-clip: text;
                   background-clip: text;
                   color: transparent; */
            
                background:#1bae9a;
                color: rgb(127,234,217);
                color: linear-gradient(0deg, rgba(127,234,217,1) 0%, rgba(240,255,253,1) 100%);               
                box-shadow: 0px 0px 0px 3px white;        
                transition: box-shadow 0.6s linear;
                margin: 0.5em;   
                font-size:25px;  
                text-align: center;
              
   
            }
        
        
         .label-style
        {
           
            
             color:Black;
             text-align:justify;
             text-decoration:bold;
                               
  
        }
        
        .textbox-style
        {
             border: medium inset #1bae9a;
         color:Black;
             background: rgb(127,234,217);
             background: rgb(127,234,217);
             /* background:#1bae9a;
              background: rgb(127,234,217);
             background: rgb(127,234,217);               */
             box-shadow: 0px 0px 0px 1px #1bae9a;
             border-radius: 5px;
             /*box-shadow: 0px 0px 0px 3px linear-gradient(0deg, rgba(127,234,217,1) 0%, rgba(240,255,253,1) 100%);    */
             transition: box-shadow 0.6s linear;
             margin: 3em 0em 0.5em 0em; /* Increased margin since the box-shado expands outside the element, like outline */
     }
        
         .textbox-style:hover
        {
            box-shadow: 0px 0px 0px 3px #1bae9a;  
           /*background:linear-gradient(to right, #E0FFFF,  #00FFFF, #E0FFFF );             */
        }
        
       
        
        .validation-style
        {
             background: linear-gradient(to right, red, aqua,red);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;                              
        }
        
        
    
    
    .sbutton-style
    {
        
        background:#1bae9a;
          
        color: rgb(127,234,217);
        color: linear-gradient(0deg, rgba(127,234,217,1) 0%, rgba(240,255,253,1) 100%);
               
        box-shadow: 0px 0px 0px 3px #1bae9a;
        
        transition: box-shadow 0.6s linear; 
        margin: 0.5em; 
        border-radius: 15px;
        
       
    }
    
    
    .sbutton-style:hover  
    {
        /*color: rgb(127,234,217);
        color: linear-gradient(0deg, rgba(127,234,217,1) 0%, rgba(240,255,253,1) 100%);*/
        box-shadow: 0px 0px 0px 5px #1bae9a;   
    } 
    
     .button-style
    {
        
        background:#1bae9a;
          
        color: rgb(127,234,217);
        color: linear-gradient(0deg, rgba(127,234,217,1) 0%, rgba(240,255,253,1) 100%);

        border-color:#1bae9a;
        border-style:inset;
        border-width:3px;               
        /*box-shadow: 0px 0px 0px 1px #1bae9a;*/
        
        transition: box-shadow 0.6s linear; 
        margin: 0.5em; 
        border-radius: 5px;
        
       
    }
    
    
    .button-style:hover  
    {
        /*color: rgb(127,234,217);
        color: linear-gradient(0deg, rgba(127,234,217,1) 0%, rgba(240,255,253,1) 100%);*/
        box-shadow: 0px 0px 0px 3px #1bae9a;   
        
    } 
    
    
  
    
    </style>--%>
    &nbsp;&nbsp;&nbsp;
    
   
<title>Student Registration Form</title>&nbsp;<body>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Label 
                ID="Label1" runat="server" Text="Academic Information" 
                CssClass="heading-style" Height="35px"></asp:Label>
            <ajaxToolkit:RoundedCornersExtender ID="Label1_RoundedCornersExtender" 
    runat="server" BehaviorID="Label1_RoundedCornersExtender" 
    TargetControlID="Label1">
</ajaxToolkit:RoundedCornersExtender>
<ajaxToolkit:DropShadowExtender ID="Label1_DropShadowExtender" runat="server" 
    BehaviorID="Label1_DropShadowExtender" TargetControlID="Label1">
</ajaxToolkit:DropShadowExtender>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
<br />
            <asp:Panel ID="Panel1" runat="server" CssClass="panel-style" 
        Height="299px">
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label10" runat="server" Font-Bold="True" Text="Program		"></asp:Label>
                &nbsp;:&nbsp;
                <asp:Label ID="Label21" runat="server" Text="Bachelor of Computer Application"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                &nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Specialization	"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;
                <asp:Label ID="Label16" runat="server" Text="Science"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label11" runat="server" Font-Bold="True" Text="Faculty	"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;
                <asp:Label ID="Label23" runat="server" Text="Science"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                &nbsp;&nbsp;
                <asp:Label ID="Label5" runat="server" Font-Bold="True" 
                    Text="No of Semesters                          	"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; : &nbsp;&nbsp;
                <asp:Label ID="Label17" runat="server" Text="6"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
                <asp:Label ID="Label12" runat="server" Font-Bold="True" Text="Major Type	"></asp:Label>
                &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; :&nbsp;&nbsp;
                <asp:Label ID="Label24" runat="server" Text="None"></asp:Label>
                <br />
                <br />
                &nbsp;&nbsp;
                <asp:Label ID="Label6" runat="server" Font-Bold="True" 
                    Text="Studying in Semester	"></asp:Label>
                &nbsp;:&nbsp;&nbsp;
                <asp:Label ID="Label18" runat="server">Semester 6</asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label13" runat="server" Font-Bold="True" Text="Program Level		"></asp:Label>
                &nbsp;:&nbsp;&nbsp;
                <asp:Label ID="Label25" runat="server" Text="UG"></asp:Label>
                <br />
                <br />
                &nbsp;&nbsp;
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="Duration	"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;
                <asp:Label ID="Label19" runat="server" Text="36 Months"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label14" runat="server" Font-Bold="True" Text="Max Duration		"></asp:Label>
                &nbsp; :&nbsp;&nbsp;
                <asp:Label ID="Label26" runat="server" Text="108 Months"></asp:Label>
                <br />
                <br />
                &nbsp;&nbsp;
                <asp:Label ID="Label30" runat="server" Font-Bold="True" 
                    Text="Batch            "></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp;
                <asp:Label ID="Label31" runat="server">2021-2024</asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:Label ID="Label15" runat="server" Font-Bold="True" Text="Program Type	"></asp:Label>
                &nbsp;: &nbsp;&nbsp;
                <asp:Label ID="Label27" runat="server" Text="Self Finance"></asp:Label>
                <br />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label28" runat="server" Font-Bold="True" Text="College		"></asp:Label>
                &nbsp;:&nbsp;&nbsp;
                <asp:Label ID="Label29" runat="server" Text="Anand Commerce College, Anand"></asp:Label>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<br />
    </asp:Panel>
            <br />
        </body>
    <br />
    
</asp:Content>

