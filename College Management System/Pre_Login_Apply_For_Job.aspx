<%@ Page Title="" Language="C#" MasterPageFile="~/Pre_Login_MasterPage.master" AutoEventWireup="true" CodeFile="Pre_Login_Apply_For_Job.aspx.cs" Inherits="Pre_Login_Apply_For_Job" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<html>

    
    <style>
        
          .validation-style
        {
             background: linear-gradient(to right, red, aqua,red);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;                              
        }
        
          .panel-style
        {
            background:linear-gradient(to bottom right,  #E0FFFF, aqua, #00FFFF, aqua, #E0FFFF );
            /*background: rgb(127,234,217);*/
            
            
            margin: 10px 100px 50px 100px;
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
             color:Black;
             background: rgb(127,234,217);
             background: linear-gradient(0deg, rgba(127,234,217,1) 0%, rgba(240,255,253,1) 100%);               
             box-shadow: 0px 0px 0px 3px linear-gradient(0deg, rgba(127,234,217,1) 0%, rgba(240,255,253,1) 100%);        
             transition: box-shadow 0.6s linear;
             margin: 0.5em; /* Increased margin since the box-shado expands outside the element, like outline */            
            
        }
        
         .textbox-style:hover
        {
            box-shadow: 0px 0px 0px 3px #1bae9a;  
           /*background:linear-gradient(to right, #E0FFFF,  #00FFFF, #E0FFFF );             */
        }
        
        .dropdown-style
         {
             color:Black;
             background: rgb(127,234,217);
             background: linear-gradient(0deg, rgba(127,234,217,1) 0%, rgba(240,255,253,1) 100%);               
             box-shadow: 0px 0px 0px 3px linear-gradient(0deg, rgba(127,234,217,1) 0%, rgba(240,255,253,1) 100%);        
             transition: box-shadow 0.6s linear;
             margin: 0.5em; /* Increased margin since the box-shado expands outside the element, like outline */            
            
        }
        
         .dropdown-style:hover
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
        
        
    
    
    .button-style
    {
        
        background:#1bae9a;
          
        color: rgb(127,234,217);
        color: linear-gradient(0deg, rgba(127,234,217,1) 0%, rgba(240,255,253,1) 100%);
               
        box-shadow: 0px 0px 0px 3px #1bae9a;
        
        transition: box-shadow 0.6s linear; 
        margin: 0.5em; 
        
       
    }
    
    
    .button-style:hover  
    {
        /*color: rgb(127,234,217);
        color: linear-gradient(0deg, rgba(127,234,217,1) 0%, rgba(240,255,253,1) 100%);*/
        box-shadow: 0px 0px 0px 5px #1bae9a;   
    } 
    
    
  
    
    </style>
    <body>
        <p style="margin-left: 280px">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
        <p style="margin-left: 280px">
            &nbsp;</p>
        <br />
&nbsp;&nbsp;&nbsp;
    
   
<title>Student Registration Form</title>
&nbsp;<body>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label 
                ID="Label1" runat="server" Text="Apply For Job" 
                CssClass="heading-style" Height="35px"></asp:Label>
               
            <ajaxToolkit:RoundedCornersExtender ID="Label1_RoundedCornersExtender" 
                runat="server" BehaviorID="Label1_RoundedCornersExtender" 
                TargetControlID="Label1" />
            <ajaxToolkit:DropShadowExtender ID="Label1_DropShadowExtender" runat="server" 
                BehaviorID="Label1_DropShadowExtender" TargetControlID="Label1" />
               
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label2" runat="server" 
                Text="BCA (Bachelors Of Computer Applications" CssClass="heading-style" 
                Height="35px"></asp:Label>
       
       
            <ajaxToolkit:RoundedCornersExtender ID="Label2_RoundedCornersExtender" 
                runat="server" BehaviorID="Label2_RoundedCornersExtender" 
                TargetControlID="Label2" />
            <ajaxToolkit:DropShadowExtender ID="Label2_DropShadowExtender" runat="server" 
                BehaviorID="Label2_DropShadowExtender" TargetControlID="Label2" />
            <br />
            <br />
            <br />
       
       

 
            <asp:Panel ID="Panel2" runat="server" CssClass="panel-style" Height="12574px" 
                Width="693px">
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" 
                Text="Personal Details :" CssClass="heading-style"></asp:Label>
                <ajaxToolkit:DropShadowExtender ID="Label3_DropShadowExtender" runat="server" 
                BehaviorID="Label3_DropShadowExtender" 
    TargetControlID="Label3">
                </ajaxToolkit:DropShadowExtender>
                <ajaxToolkit:RoundedCornersExtender ID="Label3_RoundedCornersExtender" 
                runat="server" BehaviorID="Label3_RoundedCornersExtender" 
                TargetControlID="Label3">
                </ajaxToolkit:RoundedCornersExtender>
                <br />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image1" runat="server" Height="200px" Width="200px" 
                    ImageAlign="Middle" />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label26" runat="server" Text="Label"></asp:Label>
                <br />
                &nbsp;<br />
                <asp:Label ID="Label24" runat="server" Text="Upload Passport Size Photo : " 
                CssClass="label-style"></asp:Label>
                &nbsp;&nbsp;
                <asp:FileUpload ID="FileUpload1" runat="server" 
    CssClass="button-style" Height="25px" Width="400px" />
                <br />
                <html>
                <body>
                <body>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:Button ID="Button1" runat="server" CssClass="button-style" Height="33px" 
                onclick="Button1_Click" Text="Upload" Width="97px" />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:Label ID="Label25" runat="server" Text="Label"></asp:Label>
                <br />
                <asp:Label ID="Label12" runat="server" Text="Salutation  : " 
                CssClass="label-style"></asp:Label>
                </body>
                </html>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList 
        ID="DropDownList1" runat="server" CssClass="textbox-style" 
        Height="25px" Width="400px">
                    <asp:ListItem>Mr.</asp:ListItem>
                    <asp:ListItem>Ms.</asp:ListItem>
                    <asp:ListItem>Mrs.</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                <asp:Label ID="Label4" runat="server" Text="First Name :" 
                CssClass="label-style"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox-style" 
        Height="25px" Width="400px"></asp:TextBox>
                <ajaxToolkit:TextBoxWatermarkExtender ID="TextBox1_TextBoxWatermarkExtender" 
        runat="server" BehaviorID="TextBox1_TextBoxWatermarkExtender" 
        TargetControlID="TextBox1" WatermarkText="Enter First Name" />
                <br />
                <br />
                <asp:Label ID="Label13" runat="server" Text="Middle Name :" 
                CssClass="label-style"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox-style" 
        Height="25px" Width="400px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label14" runat="server" Text="Last Name :" 
                CssClass="label-style"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox3" runat="server" CssClass="textbox-style" 
        Height="25px" Width="400px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label7" runat="server" Text="Date Of Birth :" 
                CssClass="label-style"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox4" runat="server" CssClass="textbox-style" 
        Height="25px" Width="400px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label21" runat="server" Text="Blood Group :" 
                CssClass="label-style"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="textbox-style" 
        Height="25px" Width="400px">
                    <asp:ListItem>A+</asp:ListItem>
                    <asp:ListItem>A-</asp:ListItem>
                    <asp:ListItem>B+</asp:ListItem>
                    <asp:ListItem>B-</asp:ListItem>
                    <asp:ListItem>AB+</asp:ListItem>
                    <asp:ListItem>AB-</asp:ListItem>
                    <asp:ListItem>O+</asp:ListItem>
                    <asp:ListItem>O-</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                <asp:Label ID="Label8" runat="server" Text="E-mail  :" 
                CssClass="label-style"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:TextBox ID="TextBox5" runat="server" CssClass="textbox-style" 
        Height="25px" Width="400px"></asp:TextBox>
                &nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" CssClass="button-style" Height="27px" 
        onclick="Button2_Click" Text="Send OTP" Width="98px" />
                <ajaxToolkit:RoundedCornersExtender ID="Button2_RoundedCornersExtender" 
        runat="server" 
        BehaviorID="Button2_RoundedCornersExtender" TargetControlID="Button2" />
                <br />
                <asp:Panel ID="Panel1" runat="server" Height="298px" Width="674px">
                    <br />
                    Enter OTP :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:TextBox ID="TextBox6" runat="server" CssClass="textbox-style" 
            Height="25px"  Width="400px"></asp:TextBox>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" CssClass="button-style" Height="28px" 
            onclick="Button3_Click" Text="Verify Code" Width="94px" />
                    <ajaxToolkit:RoundedCornersExtender ID="Button3_RoundedCornersExtender" 
            runat="server" 
            BehaviorID="Button3_RoundedCornersExtender" TargetControlID="Button3" />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label27" runat="server" Text="Label"></asp:Label>
                    <br />
                    <br />
                </asp:Panel>
                <br />
                <br />
                <asp:Label ID="Label9" runat="server" Text="Mobile Number :" 
                CssClass="label-style"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox7" runat="server" CssClass="textbox-style" 
        Height="25px" Width="400px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label10" runat="server" Text="Gender :" 
                CssClass="label-style"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton1" runat="server" 
        CssClass="textbox-style" GroupName="gender" Text="Male" />
                <asp:RadioButton ID="RadioButton2" runat="server" 
        CssClass="textbox-style" GroupName="gender" Text="Female" />
                <asp:RadioButton ID="RadioButton3" runat="server" 
        CssClass="textbox-style" GroupName="gender" Text="Other" />
                <br />
                &nbsp;&nbsp;
                <br />
                <asp:Label ID="Label11" runat="server" Text="Marital Status :" 
                CssClass="label-style"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton4" runat="server" 
        CssClass="textbox-style" GroupName="marital" Text="Single" />
                <asp:RadioButton ID="RadioButton5" runat="server" 
        CssClass="textbox-style" GroupName="marital" Text="Married" />
                &nbsp;&nbsp;
                <br />
                <br />
                <asp:Label ID="Label15" runat="server" Text="Religion :" 
                CssClass="label-style"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox8" runat="server" CssClass="textbox-style" 
        Height="25px" Width="400px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label16" runat="server" Text="Caste Category :" 
                CssClass="label-style"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton6" runat="server" 
        CssClass="textbox-style" GroupName="caste" Text="General" />
                <asp:RadioButton ID="RadioButton7" runat="server" 
        CssClass="textbox-style" GroupName="caste" Text="SC" />
                <asp:RadioButton ID="RadioButton8" runat="server" 
        CssClass="textbox-style" GroupName="caste" Text="ST" />
                <asp:RadioButton ID="RadioButton9" runat="server" 
        CssClass="textbox-style" GroupName="caste" Text="OBC" />
                <asp:RadioButton ID="RadioButton10" runat="server" 
        CssClass="textbox-style" GroupName="caste" Text="OTHER" />
                <br />
                <br />
                <asp:Label ID="Label17" runat="server" Text="Father's / Spouse's Name :" 
                CssClass="label-style"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox9" runat="server" CssClass="textbox-style" 
        Height="25px" Width="400px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label22" runat="server" Text="Contact No.  :" 
                CssClass="label-style"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox10" runat="server" CssClass="textbox-style" 
        Height="25px" Width="400px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label18" runat="server" Text="Mother's  Name :" 
                CssClass="label-style"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox11" runat="server" CssClass="textbox-style" 
        Height="25px" Width="400px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label23" runat="server" Text="Contact No.  :" 
                CssClass="label-style"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox12" runat="server" CssClass="textbox-style" 
        Height="25px" Width="400px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label19" runat="server" Text="Occupation of Father / Spouse :" 
                CssClass="label-style"></asp:Label>
                &nbsp;
                <asp:TextBox ID="TextBox13" runat="server" CssClass="textbox-style" 
        Height="25px" Width="400px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label20" runat="server" Text="Annual Income :" 
                CssClass="label-style"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox14" runat="server" CssClass="textbox-style" 
        Height="25px" Width="400px"></asp:TextBox>
                <br />
                <br />
                <br />
                <asp:Label ID="Label33" runat="server" CssClass="heading-style" 
                    Text="Present / Currrent Address :"></asp:Label>
                <ajaxToolkit:RoundedCornersExtender ID="Label33_RoundedCornersExtender" 
                    runat="server" BehaviorID="Label33_RoundedCornersExtender" Radius="30" 
                    TargetControlID="Label33" />
                <ajaxToolkit:DropShadowExtender ID="Label33_DropShadowExtender" runat="server" 
                    BehaviorID="Label33_DropShadowExtender" Opacity="3" Radius="8" Rounded="True" 
                    TargetControlID="Label33" Width="8" />
                <br />
                <br />
                <asp:Label ID="Label29" runat="server" Text="Current / Present Address :" 
                    CssClass="label-style"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox15" runat="server" CssClass="textbox-style" 
                    Height="112px" TextMode="MultiLine" Width="400px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <html>
                <body>
                <body>
                </body>
                </body>
                </html>
                <br />
                <asp:Label ID="Label30" runat="server" CssClass="label-style" Text="City :"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox16" runat="server" CssClass="textbox-style" 
                    Height="25px" Width="400px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label31" runat="server" CssClass="label-style" Text="Pin Code :"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox17" runat="server" CssClass="textbox-style" 
                    Height="25px" Width="400px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label32" runat="server" CssClass="label-style" Text="State :"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox18" runat="server" CssClass="textbox-style" 
                    Height="25px" Width="400px"></asp:TextBox>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> &nbsp;<asp:CheckBox ID="CheckBox1" runat="server" 
                    AutoPostBack="True" CssClass="textbox-style" 
                    oncheckedchanged="CheckBox1_CheckedChanged" 
                    Text=" Is Present Address Same as Permenant Address ?" />
                <br />
                <br />
                <br />
                <asp:Label ID="Label34" runat="server" CssClass="heading-style" 
                    Text="Permanent Address :"></asp:Label>
                <ajaxToolkit:DropShadowExtender ID="Label34_DropShadowExtender" runat="server" 
                    BehaviorID="Label34_DropShadowExtender" TargetControlID="Label34" />
                <ajaxToolkit:RoundedCornersExtender ID="Label34_RoundedCornersExtender" 
                    runat="server" BehaviorID="Label34_RoundedCornersExtender" 
                    TargetControlID="Label34" />
                <br />
                <br />
                <asp:Label ID="Label35" runat="server" Text="Permanent Address :" 
                    CssClass="label-style"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox19" runat="server" CssClass="textbox-style" 
                    Height="112px" TextMode="MultiLine" Width="400px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <html>
                <body>
                <body>
                </body>
                </body>
                </html>
                <br />
                <asp:Label ID="Label36" runat="server" CssClass="label-style" Text="City :"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox20" runat="server" CssClass="textbox-style" 
                    Height="25px" Width="400px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label37" runat="server" CssClass="label-style" Text="Pin Code :"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox21" runat="server" CssClass="textbox-style" 
                    Height="25px" Width="400px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label38" runat="server" CssClass="label-style" Text="State :"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox22" runat="server" CssClass="textbox-style" 
                    Height="25px" Width="400px"></asp:TextBox>
                <br />
                <br />
                <br />
                <br />
                <asp:Label ID="Label39" runat="server" CssClass="heading-style" 
                    Text="Job Profile Selection :"></asp:Label>
                <ajaxToolkit:DropShadowExtender ID="Label39_DropShadowExtender" runat="server" 
                    BehaviorID="Label39_DropShadowExtender" TargetControlID="Label39" />
                <ajaxToolkit:RoundedCornersExtender ID="Label39_RoundedCornersExtender" 
                    runat="server" BehaviorID="Label39_RoundedCornersExtender" 
                    TargetControlID="Label39" />
                <br />
                <br />
                <br />
                <br />
                <br />
                <asp:Label ID="Label40" runat="server" CssClass="label-style" 
                    Text="Select Job Profile to Apply  :"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
                    CssClass="textbox-style" Height="25px" 
                    onselectedindexchanged="DropDownList3_SelectedIndexChanged" Width="400px">
                    <asp:ListItem>Head Of the Department</asp:ListItem>
                    <asp:ListItem>Professor</asp:ListItem>
                    <asp:ListItem>Assistant Professor</asp:ListItem>
                    <asp:ListItem>Accountant</asp:ListItem>
                    <asp:ListItem>Peon</asp:ListItem>
                    <asp:ListItem>Principal</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Panel 
                    ID="Panel3" runat="server" Height="1327px">
                    <br />
                    <asp:Label ID="Label43" runat="server" CssClass="heading-style" 
                        Text="Academic Details :"></asp:Label>
                    <ajaxToolkit:RoundedCornersExtender ID="Label43_RoundedCornersExtender" 
                        runat="server" BehaviorID="Label43_RoundedCornersExtender" 
                        TargetControlID="Label43" />
                    <ajaxToolkit:DropShadowExtender ID="Label43_DropShadowExtender" runat="server" 
                        BehaviorID="Label43_DropShadowExtender" TargetControlID="Label43" />
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="Label44" runat="server" CssClass="sub-heading-style" 
                        Text="Class X Details :"></asp:Label>
                    <ajaxToolkit:RoundedCornersExtender ID="Label44_RoundedCornersExtender" 
                        runat="server" BehaviorID="Label44_RoundedCornersExtender" 
                        TargetControlID="Label44" />
                    <ajaxToolkit:DropShadowExtender ID="Label44_DropShadowExtender" runat="server" 
                        BehaviorID="Label44_DropShadowExtender" TargetControlID="Label44" />
                    <br />
                    <br />
                    <asp:Label ID="Label45" runat="server" CssClass="label-style" 
                        Text="Name of School :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox23" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label46" runat="server" CssClass="label-style" 
                        Text="Name of Board  :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox24" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label47" runat="server" CssClass="label-style" Text="City :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox25" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label48" runat="server" CssClass="label-style" 
                        Text="Medium of Instruction :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox26" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label49" runat="server" CssClass="label-style" 
                        Text="Year of Passing :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox27" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label50" runat="server" CssClass="label-style" 
                        Text="Percentage :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox28" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <%--<asp:Image ID="Image2" runat="server" Height="200px" ImageAlign="Middle" 
                    Width="200px" />--%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <asp:Label ID="Label67" runat="server" CssClass="label-style" 
                        Text="Upload Class X Marksheet :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:FileUpload ID="FileUpload2" runat="server" CssClass="button-style" 
                        Height="25px" Width="400px" />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:Button ID="Button4" runat="server" CssClass="button-style" Height="33px" 
                        onclick="Button4_Click" Text="Upload" Width="97px" />
                    <br />
                    <asp:Label ID="Label68" runat="server" Text="Label"></asp:Label>
                    <br />
                    <asp:Label ID="Label69" runat="server" Text="Label"></asp:Label>
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="Label70" runat="server" CssClass="sub-heading-style" 
                        Text="Class XII Details :"></asp:Label>
                    <ajaxToolkit:RoundedCornersExtender ID="Label70_RoundedCornersExtender" 
                        runat="server" BehaviorID="Label70_RoundedCornersExtender" 
                        TargetControlID="Label70" />
                    <ajaxToolkit:DropShadowExtender ID="Label70_DropShadowExtender" runat="server" 
                        BehaviorID="Label70_DropShadowExtender" TargetControlID="Label70" />
                    <br />
                    <br />
                    <asp:Label ID="Label71" runat="server" CssClass="label-style" 
                        Text="Name of School :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox29" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label72" runat="server" CssClass="label-style" 
                        Text="Name of Board  :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox30" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label73" runat="server" CssClass="label-style" Text="City :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox31" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label74" runat="server" CssClass="label-style" 
                        Text="Medium of Instruction :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox32" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label75" runat="server" CssClass="label-style" 
                        Text="Year of Passing :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox33" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label76" runat="server" CssClass="label-style" 
                        Text=" Stream / Discipline :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox34" runat="server" 
                        CssClass="textbox-style" Height="25px" Width="400px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;<br />
                    <br />
                    <asp:Label ID="Label80" runat="server" CssClass="label-style" 
                        Text="Percentage :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox35" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <%--<asp:Image ID="Image2" runat="server" Height="200px" ImageAlign="Middle" 
                    Width="200px" />--%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <asp:Label ID="Label77" runat="server" CssClass="label-style" 
                        Text="Upload Class XII Marksheet :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;<asp:FileUpload ID="FileUpload3" runat="server" CssClass="button-style" 
                        Height="25px" Width="400px" />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:Button ID="Button5" runat="server" CssClass="button-style" Height="33px" 
                        onclick="Button5_Click" Text="Upload" Width="97px" />
                    <br />
                    <asp:Label ID="Label78" runat="server" Text="Label"></asp:Label>
                    <br />
                    <asp:Label ID="Label79" runat="server" Text="Label"></asp:Label>
                    <br />
                </asp:Panel>
                <br />
                <br />
                <asp:Panel ID="Panel4" runat="server" Height="3984px">
                    <asp:Label ID="Label140" runat="server" CssClass="heading-style" 
                        Text="Graduation Details"></asp:Label>
                  
                    <ajaxToolkit:RoundedCornersExtender ID="Label140_RoundedCornersExtender" 
                        runat="server" BehaviorID="Label140_RoundedCornersExtender" 
                        TargetControlID="Label140" />
                    <ajaxToolkit:DropShadowExtender ID="Label140_DropShadowExtender" runat="server" 
                        BehaviorID="Label140_DropShadowExtender" TargetControlID="Label140" />
                  
                    <br />
                    <br />
                    <asp:Label ID="Label81" runat="server" CssClass="sub-heading-style" 
                        Text="Semester 1 Details :"></asp:Label>
                    <ajaxToolkit:RoundedCornersExtender ID="Label81_RoundedCornersExtender" 
                        runat="server" BehaviorID="Label81_RoundedCornersExtender" 
                        TargetControlID="Label81" />
                    <ajaxToolkit:DropShadowExtender ID="Label81_DropShadowExtender" runat="server" 
                        BehaviorID="Label81_DropShadowExtender" TargetControlID="Label81" />
                    <br />
                    <br />
                    <asp:Label ID="Label82" runat="server" CssClass="label-style" 
                        Text="Name of College :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox36" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label83" runat="server" CssClass="label-style" 
                        Text="Name of University  :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox37" runat="server" 
                        CssClass="textbox-style" Height="25px" Width="400px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label84" runat="server" CssClass="label-style" Text="City :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox38" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label85" runat="server" CssClass="label-style" 
                        Text="Medium of Instruction :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox39" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label86" runat="server" CssClass="label-style" 
                        Text="Year of Passing :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox40" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label87" runat="server" CssClass="label-style" 
                        Text="Discipline / Stream :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox41" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;<br />
                    <br />
                    <asp:Label ID="Label88" runat="server" CssClass="label-style" 
                        Text="Percentage / GPA  :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox42" runat="server" 
                        CssClass="textbox-style" Height="25px" Width="400px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <%--<asp:Image ID="Image2" runat="server" Height="200px" ImageAlign="Middle" 
                    Width="200px" />--%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <asp:Label ID="Label89" runat="server" CssClass="label-style" 
                        Text="Upload Semester 1 Marksheet :"></asp:Label>
                    &nbsp;<asp:FileUpload ID="FileUpload4" runat="server" CssClass="button-style" 
                        Height="25px" Width="400px" />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:Button ID="Button6" runat="server" CssClass="button-style" Height="33px" 
                        onclick="Button6_Click" Text="Upload" Width="97px" />
                    <br />
                    <asp:Label ID="Label90" runat="server" Text="Label"></asp:Label>
                    <br />
                    <asp:Label ID="Label91" runat="server" Text="Label"></asp:Label>
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="Label92" runat="server" CssClass="sub-heading-style" 
                        Text="Semester 2 Details :"></asp:Label>
                    <ajaxToolkit:RoundedCornersExtender ID="Label92_RoundedCornersExtender" 
                        runat="server" BehaviorID="Label92_RoundedCornersExtender" 
                        TargetControlID="Label92" />
                    <ajaxToolkit:DropShadowExtender ID="Label92_DropShadowExtender" runat="server" 
                        BehaviorID="Label92_DropShadowExtender" TargetControlID="Label92" />
                    <br />
                    <br />
                    <asp:Label ID="Label93" runat="server" CssClass="label-style" 
                        Text="Name of College :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox43" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label94" runat="server" CssClass="label-style" 
                        Text="Name of University  :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox44" runat="server" 
                        CssClass="textbox-style" Height="25px" Width="400px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label95" runat="server" CssClass="label-style" Text="City :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox45" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label96" runat="server" CssClass="label-style" 
                        Text="Medium of Instruction :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox46" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label97" runat="server" CssClass="label-style" 
                        Text="Year of Passing :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox47" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label98" runat="server" CssClass="label-style" 
                        Text="Discipline / Stream :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox48" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;<br />
                    <br />
                    <asp:Label ID="Label99" runat="server" CssClass="label-style" 
                        Text="Percentage / GPA  :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox49" runat="server" 
                        CssClass="textbox-style" Height="25px" Width="400px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <%--<asp:Image ID="Image2" runat="server" Height="200px" ImageAlign="Middle" 
                    Width="200px" />--%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <asp:Label ID="Label100" runat="server" CssClass="label-style" 
                        Text="Upload Semester 2 Marksheet :"></asp:Label>
                    &nbsp;<asp:FileUpload ID="FileUpload5" runat="server" CssClass="button-style" 
                        Height="25px" Width="400px" />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:Button ID="Button7" runat="server" CssClass="button-style" Height="33px" 
                        onclick="Button7_Click" Text="Upload" Width="97px" />
                    <br />
                    <asp:Label ID="Label101" runat="server" Text="Label"></asp:Label>
                    <br />
                    <asp:Label ID="Label102" runat="server" Text="Label"></asp:Label>
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="Label103" runat="server" CssClass="sub-heading-style" 
                        Text="Semester 3 Details :"></asp:Label>
                    <ajaxToolkit:RoundedCornersExtender ID="Label103_RoundedCornersExtender" 
                        runat="server" BehaviorID="Label103_RoundedCornersExtender" 
                        TargetControlID="Label103" ViewStateMode="Enabled" />
                    <ajaxToolkit:DropShadowExtender ID="Label103_DropShadowExtender" runat="server" 
                        BehaviorID="Label103_DropShadowExtender" Rounded="True" 
                        TargetControlID="Label103" />
                    <br />
                    <br />
                    <asp:Label ID="Label104" runat="server" CssClass="label-style" 
                        Text="Name of College :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox50" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label105" runat="server" CssClass="label-style" 
                        Text="Name of University  :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox51" runat="server" 
                        CssClass="textbox-style" Height="25px" Width="400px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label106" runat="server" CssClass="label-style" Text="City :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox52" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label107" runat="server" CssClass="label-style" 
                        Text="Medium of Instruction :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox53" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label108" runat="server" CssClass="label-style" 
                        Text="Year of Passing :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox54" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label109" runat="server" CssClass="label-style" 
                        Text="Discipline / Stream :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox55" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;<br />
                    <br />
                    <asp:Label ID="Label110" runat="server" CssClass="label-style" 
                        Text="Percentage / GPA  :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox56" runat="server" 
                        CssClass="textbox-style" Height="25px" Width="400px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <%--<asp:Image ID="Image2" runat="server" Height="200px" ImageAlign="Middle" 
                    Width="200px" />--%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <asp:Label ID="Label111" runat="server" CssClass="label-style" 
                        Text="Upload Semester 3 Marksheet :"></asp:Label>
                    &nbsp;<asp:FileUpload ID="FileUpload6" runat="server" CssClass="button-style" 
                        Height="25px" Width="400px" />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:Button ID="Button8" runat="server" CssClass="button-style" Height="33px" 
                        onclick="Button8_Click" Text="Upload" Width="97px" />
                    <br />
                    <asp:Label ID="Label112" runat="server" Text="Label"></asp:Label>
                    <br />
                    <asp:Label ID="Label113" runat="server" Text="Label"></asp:Label>
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="Label114" runat="server" CssClass="sub-heading-style" 
                        Text="Semester 4 Details :"></asp:Label>
                    <ajaxToolkit:RoundedCornersExtender ID="Label114_RoundedCornersExtender" 
                        runat="server" BehaviorID="Label114_RoundedCornersExtender" 
                        TargetControlID="Label114" />
                    <ajaxToolkit:DropShadowExtender ID="Label114_DropShadowExtender" runat="server" 
                        BehaviorID="Label114_DropShadowExtender" TargetControlID="Label114" />
                    <br />
                    <br />
                    <asp:Label ID="Label115" runat="server" CssClass="label-style" 
                        Text="Name of College :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox57" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label116" runat="server" CssClass="label-style" 
                        Text="Name of University  :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox58" runat="server" 
                        CssClass="textbox-style" Height="25px" Width="400px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label117" runat="server" CssClass="label-style" Text="City :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox59" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label118" runat="server" CssClass="label-style" 
                        Text="Medium of Instruction :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox60" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label119" runat="server" CssClass="label-style" 
                        Text="Year of Passing :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox61" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label120" runat="server" CssClass="label-style" 
                        Text="Discipline / Stream :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox62" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;<br />
                    <br />
                    <asp:Label ID="Label121" runat="server" CssClass="label-style" 
                        Text="Percentage / GPA  :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox63" runat="server" 
                        CssClass="textbox-style" Height="25px" Width="400px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <%--<asp:Image ID="Image2" runat="server" Height="200px" ImageAlign="Middle" 
                    Width="200px" />--%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <asp:Label ID="Label122" runat="server" CssClass="label-style" 
                        Text="Upload Semester 4 Marksheet :"></asp:Label>
                    &nbsp;<asp:FileUpload ID="FileUpload7" runat="server" CssClass="button-style" 
                        Height="25px" Width="400px" />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:Button ID="Button9" runat="server" CssClass="button-style" Height="33px" 
                        onclick="Button9_Click" Text="Upload" Width="97px" />
                    <br />
                    <asp:Label ID="Label123" runat="server" Text="Label"></asp:Label>
                    <br />
                    <asp:Label ID="Label124" runat="server" Text="Label"></asp:Label>
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="Label125" runat="server" CssClass="sub-heading-style" 
                        Text="Semester 5 Details :"></asp:Label>
                    <ajaxToolkit:RoundedCornersExtender ID="Label125_RoundedCornersExtender" 
                        runat="server" BehaviorID="Label125_RoundedCornersExtender" 
                        TargetControlID="Label125" />
                    <ajaxToolkit:DropShadowExtender ID="Label125_DropShadowExtender" runat="server" 
                        BehaviorID="Label125_DropShadowExtender" TargetControlID="Label125" />
                    <ajaxToolkit:RoundedCornersExtender ID="Label125_RoundedCornersExtender0" 
                        runat="server" BehaviorID="Label125_RoundedCornersExtender" 
                        TargetControlID="Label125" />
                    <ajaxToolkit:DropShadowExtender ID="Label125_DropShadowExtender0" 
                        runat="server" BehaviorID="Label125_DropShadowExtender" 
                        TargetControlID="Label125" />
                    <br />
                    <br />
                    <asp:Label ID="Label126" runat="server" CssClass="label-style" 
                        Text="Name of College :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox64" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label127" runat="server" CssClass="label-style" 
                        Text="Name of University  :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox65" runat="server" 
                        CssClass="textbox-style" Height="25px" Width="400px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label128" runat="server" CssClass="label-style" Text="City :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox66" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label129" runat="server" CssClass="label-style" 
                        Text="Medium of Instruction :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox67" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label130" runat="server" CssClass="label-style" 
                        Text="Year of Passing :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox68" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label131" runat="server" CssClass="label-style" 
                        Text="Discipline / Stream :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox69" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;<br />
                    <br />
                    <asp:Label ID="Label132" runat="server" CssClass="label-style" 
                        Text="Percentage / GPA  :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox70" runat="server" 
                        CssClass="textbox-style" Height="25px" Width="400px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <%--<asp:Image ID="Image2" runat="server" Height="200px" ImageAlign="Middle" 
                    Width="200px" />--%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <asp:Label ID="Label133" runat="server" CssClass="label-style" 
                        Text="Upload Semester 5 Marksheet :"></asp:Label>
                    &nbsp;<asp:FileUpload ID="FileUpload8" runat="server" CssClass="button-style" 
                        Height="25px" Width="400px" />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:Button ID="Button10" runat="server" CssClass="button-style" Height="33px" 
                        onclick="Button10_Click" Text="Upload" Width="97px" />
                    <br />
                    <asp:Label ID="Label134" runat="server" Text="Label"></asp:Label>
                    <br />
                    <asp:Label ID="Label135" runat="server" Text="Label"></asp:Label>
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="Label141" runat="server" CssClass="sub-heading-style" 
                        Text="Semester 6 Details :"></asp:Label>
                    <ajaxToolkit:RoundedCornersExtender ID="Label141_RoundedCornersExtender" 
                        runat="server" BehaviorID="Label1141_RoundedCornersExtender" 
                        TargetControlID="Label141" />
                    <ajaxToolkit:DropShadowExtender ID="Label141_DropShadowExtender" runat="server" 
                        BehaviorID="Label1141_DropShadowExtender" TargetControlID="Label141" />
                   
                    <br />
                    <br />
                    <asp:Label ID="Label142" runat="server" CssClass="label-style" 
                        Text="Name of College :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox71" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label143" runat="server" CssClass="label-style" 
                        Text="Name of University  :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox72" runat="server" 
                        CssClass="textbox-style" Height="25px" Width="400px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label144" runat="server" CssClass="label-style" Text="City :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox73" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label145" runat="server" CssClass="label-style" 
                        Text="Medium of Instruction :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox74" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label146" runat="server" CssClass="label-style" 
                        Text="Year of Passing :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox75" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label147" runat="server" CssClass="label-style" 
                        Text="Discipline / Stream :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox76" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;<br />
                    <br />
                    <asp:Label ID="Label148" runat="server" CssClass="label-style" 
                        Text="Percentage / GPA  :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox77" runat="server" 
                        CssClass="textbox-style" Height="25px" Width="400px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <%--<asp:Image ID="Image2" runat="server" Height="200px" ImageAlign="Middle" 
                    Width="200px" />--%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <asp:Label ID="Label149" runat="server" CssClass="label-style" 
                        Text="Upload Semester 6 Marksheet :"></asp:Label>
                    &nbsp;<asp:FileUpload ID="FileUpload9" runat="server" CssClass="button-style" 
                        Height="25px" Width="400px" />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:Button ID="Button11" runat="server" CssClass="button-style" Height="33px" 
                        onclick="Button11_Click" Text="Upload" Width="97px" />
                    <br />
                    <asp:Label ID="Label150" runat="server" Text="Label"></asp:Label>
                    <br />
                    <asp:Label ID="Label151" runat="server" Text="Label"></asp:Label>
                    <br />
                    <br />
                    <br />
                </asp:Panel>
                <br />
                <asp:Panel ID="Panel5" runat="server" Height="193px">
                    <asp:Label ID="Label152" runat="server" CssClass="sub-heading-style" 
                        Text="Graduation Degree Certificate"></asp:Label>
                    <ajaxToolkit:RoundedCornersExtender ID="Label152_RoundedCornersExtender" 
                        runat="server" BehaviorID="Label152_RoundedCornersExtender" 
                        TargetControlID="Label152" />
                    <ajaxToolkit:DropShadowExtender ID="Label152_DropShadowExtender" runat="server" 
                        BehaviorID="Label152_DropShadowExtender" TargetControlID="Label152" />
                    <br />
                    <br />
                    <asp:Label ID="Label153" runat="server" CssClass="label-style" 
                        Text="Upload Degree Certifcate :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:FileUpload ID="FileUpload10" runat="server" CssClass="button-style" 
                        Height="25px" Width="400px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button12" runat="server" CssClass="button-style" Height="33px" 
                        onclick="Button11_Click" Text="Upload" Width="97px" />
                    <br />
                    <asp:Label ID="Label154" runat="server" Text="Label"></asp:Label>
                    <br />
                    <asp:Label ID="Label155" runat="server" Text="Label"></asp:Label>
                    <br />
                    <ajaxToolkit:RoundedCornersExtender ID="Label43_RoundedCornersExtender0" 
                        runat="server" BehaviorID="Label43_RoundedCornersExtender" 
                        TargetControlID="Label43" />
                    <ajaxToolkit:DropShadowExtender ID="Label43_DropShadowExtender0" runat="server" 
                        BehaviorID="Label43_DropShadowExtender" TargetControlID="Label43" />
                    <br />
                    <br />
                    <br />
                </asp:Panel>
                <br />
                <asp:Panel ID="Panel6" runat="server" Height="2638px">
                    <asp:Label ID="Label197" runat="server" CssClass="heading-style" 
                        Text="Post Graduation Details"></asp:Label>
                   
                    <ajaxToolkit:RoundedCornersExtender ID="Label197_RoundedCornersExtender" 
                        runat="server" BehaviorID="Label197_RoundedCornersExtender" 
                        TargetControlID="Label197" />
                    <ajaxToolkit:DropShadowExtender ID="Label197_DropShadowExtender" runat="server" 
                        BehaviorID="Label197_DropShadowExtender" TargetControlID="Label197" />
                   
                    <br />
                    <br />
                    <asp:Label ID="Label198" runat="server" CssClass="sub-heading-style" 
                        Text="Semester 1 Details :"></asp:Label>
                   
                    <ajaxToolkit:RoundedCornersExtender ID="Label198_RoundedCornersExtender" 
                        runat="server" BehaviorID="Label198_RoundedCornersExtender" 
                        TargetControlID="Label198" />
                    <ajaxToolkit:DropShadowExtender ID="Label198_DropShadowExtender" runat="server" 
                        BehaviorID="Label198_DropShadowExtender" TargetControlID="Label198" />
                   
                    <br />
                    <br />
                    <asp:Label ID="Label199" runat="server" CssClass="label-style" 
                        Text="Name of College :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox78" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label200" runat="server" CssClass="label-style" 
                        Text="Name of University  :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox79" runat="server" 
                        CssClass="textbox-style" Height="25px" Width="400px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label156" runat="server" CssClass="label-style" Text="City :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox80" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label157" runat="server" CssClass="label-style" 
                        Text="Medium of Instruction :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox81" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label158" runat="server" CssClass="label-style" 
                        Text="Year of Passing :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox82" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label159" runat="server" CssClass="label-style" 
                        Text="Discipline / Stream :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox83" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;<br />
                    <br />
                    <asp:Label ID="Label160" runat="server" CssClass="label-style" 
                        Text="Percentage / GPA  :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox84" runat="server" 
                        CssClass="textbox-style" Height="25px" Width="400px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <%--<asp:Image ID="Image2" runat="server" Height="200px" ImageAlign="Middle" 
                    Width="200px" />--%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <asp:Label ID="Label161" runat="server" CssClass="label-style" 
                        Text="Upload Semester 1 Marksheet :"></asp:Label>
                    &nbsp;<asp:FileUpload ID="FileUpload14" runat="server" CssClass="button-style" 
                        Height="25px" Width="400px" />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:Button ID="Button16" runat="server" CssClass="button-style" Height="33px" 
                        onclick="Button16_Click" Text="Upload" Width="97px" />
                    <br />
                    <asp:Label ID="Label162" runat="server" Text="Label"></asp:Label>
                    <br />
                    <asp:Label ID="Label163" runat="server" Text="Label"></asp:Label>
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="Label164" runat="server" CssClass="sub-heading-style" 
                        Text="Semester 2 Details :"></asp:Label>
                   
                    <ajaxToolkit:RoundedCornersExtender ID="Label164_RoundedCornersExtender" 
                        runat="server" BehaviorID="Label164_RoundedCornersExtender" 
                        TargetControlID="Label164" />
                    <ajaxToolkit:DropShadowExtender ID="Label164_DropShadowExtender" runat="server" 
                        BehaviorID="Label164_DropShadowExtender" TargetControlID="Label164" />
                   
                    <br />
                    <br />
                    <asp:Label ID="Label165" runat="server" CssClass="label-style" 
                        Text="Name of College :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox85" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label166" runat="server" CssClass="label-style" 
                        Text="Name of University  :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox86" runat="server" 
                        CssClass="textbox-style" Height="25px" Width="400px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label167" runat="server" CssClass="label-style" Text="City :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox87" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label168" runat="server" CssClass="label-style" 
                        Text="Medium of Instruction :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox88" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label169" runat="server" CssClass="label-style" 
                        Text="Year of Passing :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox89" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label170" runat="server" CssClass="label-style" 
                        Text="Discipline / Stream :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox90" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;<br />
                    <br />
                    <asp:Label ID="Label171" runat="server" CssClass="label-style" 
                        Text="Percentage / GPA  :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox91" runat="server" 
                        CssClass="textbox-style" Height="25px" Width="400px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <%--<asp:Image ID="Image2" runat="server" Height="200px" ImageAlign="Middle" 
                    Width="200px" />--%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <asp:Label ID="Label172" runat="server" CssClass="label-style" 
                        Text="Upload Semester 2 Marksheet :"></asp:Label>
                    &nbsp;<asp:FileUpload ID="FileUpload11" runat="server" CssClass="button-style" 
                        Height="25px" Width="400px" />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:Button ID="Button13" runat="server" CssClass="button-style" Height="33px" 
                        onclick="Button13_Click" Text="Upload" Width="97px" />
                    <br />
                    <asp:Label ID="Label173" runat="server" Text="Label"></asp:Label>
                    <br />
                    <asp:Label ID="Label174" runat="server" Text="Label"></asp:Label>
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="Label175" runat="server" CssClass="sub-heading-style" 
                        Text="Semester 3 Details :"></asp:Label>
                    <ajaxToolkit:RoundedCornersExtender ID="Label175_RoundedCornersExtender0" 
                        runat="server" BehaviorID="Label175_RoundedCornersExtender" 
                        TargetControlID="Label175" />
                    <ajaxToolkit:DropShadowExtender ID="Label175_DropShadowExtender0" 
                        runat="server" BehaviorID="Label175_DropShadowExtender" 
                        TargetControlID="Label175" />
                    <br />
                    <br />
                    <asp:Label ID="Label176" runat="server" CssClass="label-style" 
                        Text="Name of College :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox92" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label177" runat="server" CssClass="label-style" 
                        Text="Name of University  :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox93" runat="server" 
                        CssClass="textbox-style" Height="25px" Width="400px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label178" runat="server" CssClass="label-style" Text="City :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox94" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label179" runat="server" CssClass="label-style" 
                        Text="Medium of Instruction :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox95" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label180" runat="server" CssClass="label-style" 
                        Text="Year of Passing :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox96" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label181" runat="server" CssClass="label-style" 
                        Text="Discipline / Stream :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox97" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;<br />
                    <br />
                    <asp:Label ID="Label182" runat="server" CssClass="label-style" 
                        Text="Percentage / GPA  :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox98" runat="server" 
                        CssClass="textbox-style" Height="25px" Width="400px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <%--<asp:Image ID="Image2" runat="server" Height="200px" ImageAlign="Middle" 
                    Width="200px" />--%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <asp:Label ID="Label183" runat="server" CssClass="label-style" 
                        Text="Upload Semester 3 Marksheet :"></asp:Label>
                    &nbsp;<asp:FileUpload ID="FileUpload12" runat="server" CssClass="button-style" 
                        Height="25px" Width="400px" />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:Button ID="Button14" runat="server" CssClass="button-style" Height="33px" 
                        onclick="Button14_Click" Text="Upload" Width="97px" />
                    <br />
                    <asp:Label ID="Label184" runat="server" Text="Label"></asp:Label>
                    <br />
                    <asp:Label ID="Label185" runat="server" Text="Label"></asp:Label>
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="Label186" runat="server" CssClass="sub-heading-style" 
                        Text="Semester 4 Details :"></asp:Label>
                    <ajaxToolkit:RoundedCornersExtender ID="Label186_RoundedCornersExtender0" 
                        runat="server" BehaviorID="Label186_RoundedCornersExtender" 
                        TargetControlID="Label186" />
                    <ajaxToolkit:DropShadowExtender ID="Label186_DropShadowExtender0" 
                        runat="server" BehaviorID="Label186_DropShadowExtender" 
                        TargetControlID="Label186" />
                    <br />
                    <br />
                    <asp:Label ID="Label187" runat="server" CssClass="label-style" 
                        Text="Name of College :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox99" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label188" runat="server" CssClass="label-style" 
                        Text="Name of University  :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox100" runat="server" 
                        CssClass="textbox-style" Height="25px" Width="400px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label189" runat="server" CssClass="label-style" Text="City :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox101" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label190" runat="server" CssClass="label-style" 
                        Text="Medium of Instruction :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox102" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label191" runat="server" CssClass="label-style" 
                        Text="Year of Passing :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox103" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label192" runat="server" CssClass="label-style" 
                        Text="Discipline / Stream :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox104" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;<br />
                    <br />
                    <asp:Label ID="Label193" runat="server" CssClass="label-style" 
                        Text="Percentage / GPA  :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox105" runat="server" 
                        CssClass="textbox-style" Height="25px" Width="400px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <%--<asp:Image ID="Image2" runat="server" Height="200px" ImageAlign="Middle" 
                    Width="200px" />--%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <asp:Label ID="Label194" runat="server" CssClass="label-style" 
                        Text="Upload Semester 4 Marksheet :"></asp:Label>
                    &nbsp;<asp:FileUpload ID="FileUpload13" runat="server" CssClass="button-style" 
                        Height="25px" Width="400px" />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:Button ID="Button15" runat="server" CssClass="button-style" Height="33px" 
                        onclick="Button15_Click" Text="Upload" Width="97px" />
                    <br />
                    <asp:Label ID="Label195" runat="server" Text="Label"></asp:Label>
                    <br />
                    <asp:Label ID="Label196" runat="server" Text="Label"></asp:Label>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </asp:Panel>
                <br />
                <asp:Panel ID="Panel7" runat="server" Height="193px">
                    <asp:Label ID="Label201" runat="server" CssClass="sub-heading-style" 
                        Text="Post Graduation Degree Certificate"></asp:Label>
                    <ajaxToolkit:RoundedCornersExtender ID="Label152_RoundedCornersExtender0" 
                        runat="server" BehaviorID="Label152_RoundedCornersExtender" 
                        TargetControlID="Label152" />
                    <ajaxToolkit:DropShadowExtender ID="Label152_DropShadowExtender0" 
                        runat="server" BehaviorID="Label152_DropShadowExtender" 
                        TargetControlID="Label152" />
                    <br />
                    <br />
                    <asp:Label ID="Label202" runat="server" CssClass="label-style" 
                        Text="Upload Degree Certifcate :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:FileUpload ID="FileUpload15" runat="server" CssClass="button-style" 
                        Height="25px" Width="400px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button17" runat="server" CssClass="button-style" Height="33px" 
                        onclick="Button17_Click" Text="Upload" Width="97px" />
                    <br />
                    <asp:Label ID="Label203" runat="server" Text="Label"></asp:Label>
                    <br />
                    <asp:Label ID="Label204" runat="server" Text="Label"></asp:Label>
                    <br />
                    <ajaxToolkit:RoundedCornersExtender ID="Label43_RoundedCornersExtender1" 
                        runat="server" BehaviorID="Label43_RoundedCornersExtender" 
                        TargetControlID="Label43" />
                    <ajaxToolkit:DropShadowExtender ID="Label43_DropShadowExtender1" runat="server" 
                        BehaviorID="Label43_DropShadowExtender" TargetControlID="Label43" />
                    <br />
                    <br />
                    <br />
                </asp:Panel>
                <br />
                <asp:Panel ID="Panel9" runat="server" Height="623px">
                    <asp:Label ID="Label136" runat="server" CssClass="sub-heading-style" 
                        Text="Upload Signature :"></asp:Label>
                    <ajaxToolkit:DropShadowExtender ID="Label136_DropShadowExtender0" 
                        runat="server" BehaviorID="Label136_DropShadowExtender" 
                        TargetControlID="Label136" />
                    <ajaxToolkit:RoundedCornersExtender ID="Label136_RoundedCornersExtender0" 
                        runat="server" BehaviorID="Label136_RoundedCornersExtender" 
                        TargetControlID="Label136" />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Image ID="Image2" runat="server" Height="200px" ImageAlign="Middle" 
                        Width="200px" />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label138" runat="server" Text="Label"></asp:Label>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label139" runat="server" Text="Label"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label137" runat="server" CssClass="label-style" 
                        Text="Upload Your Signature  :"></asp:Label>
                    <asp:FileUpload ID="FileUpload16" runat="server" CssClass="button-style" 
                        Height="25px" Width="400px" />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button18" runat="server" CssClass="button-style" Height="33px" 
                        onclick="Button18_Click" Text="Upload" Width="97px" />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </asp:Panel>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                <br />
                <br />
            </asp:Panel>
            <ajaxToolkit:DropShadowExtender ID="Panel2_DropShadowExtender" runat="server" 
                BehaviorID="Panel2_DropShadowExtender" TargetControlID="Panel2" 
                Opacity="5" Radius="10" Rounded="True" Width="10" />
            <ajaxToolkit:RoundedCornersExtender ID="Panel2_RoundedCornersExtender" 
                runat="server" BehaviorID="Panel2_RoundedCornersExtender" Radius="30" 
                TargetControlID="Panel2" />
       
       

 
</body>
</html>
        <body>
    <br />
    <br />
    <br designer:mapid="c4" />
       
       

 
            
       
       

 
</asp:Content>

