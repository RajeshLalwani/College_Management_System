<%@ Page Title="" Language="C#" MasterPageFile="~/Student_MasterPage.master" AutoEventWireup="true" CodeFile="Student_Personal_Info.aspx.cs" Inherits="Student_Personal_Info" %>

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
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
   

<asp:Label 
                ID="Label1" runat="server" Text="Personal Information" 
                CssClass="heading-style" Height="35px"></asp:Label>
            <ajaxToolkit:RoundedCornersExtender ID="Label1_RoundedCornersExtender" 
    runat="server" BehaviorID="Label1_RoundedCornersExtender" 
    TargetControlID="Label1" />
<ajaxToolkit:DropShadowExtender ID="Label1_DropShadowExtender" runat="server" 
    BehaviorID="Label1_DropShadowExtender" TargetControlID="Label1" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
<br />
            <asp:Panel ID="Panel1" runat="server" CssClass="panel-style" 
        Height="763px">
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image5" runat="server" Height="150px" ImageAlign="Baseline" 
                    Width="150px" />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Full Name"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;
                <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
                &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Date Of Birth"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;
                <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Gender"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; :&nbsp;&nbsp;
                <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Category"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;
                <asp:Label ID="Label18" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="Permanent Address"></asp:Label>
                &nbsp;&nbsp; :&nbsp;&nbsp;
                <asp:Label ID="Label19" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="City"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;
                <asp:Label ID="Label20" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label11" runat="server" Font-Bold="True" Text="Pin Code"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;
                <asp:Label ID="Label21" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="Sate"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;
                <asp:Label ID="Label22" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label12" runat="server" Font-Bold="True" Text="Country"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;
                <asp:Label ID="Label23" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label9" runat="server" Font-Bold="True" Text="E-mail"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;
                <asp:Label ID="Label24" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label13" runat="server" Font-Bold="True" Text="Phone Number"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; :&nbsp;&nbsp;
                <asp:Label ID="Label25" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label10" runat="server" Font-Bold="True" Text="Nationality"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;
                <asp:Label ID="Label26" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label14" runat="server" Font-Bold="True" Text="Blood Group"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;
                <asp:Label ID="Label27" runat="server" Text="Label"></asp:Label>
    </asp:Panel>
            <br />
        </body>
    <br />
    
</asp:Content>

