<%@ Page Title="" Language="C#" MasterPageFile="~/Pre_Login_MasterPage.master" AutoEventWireup="true" CodeFile="Pre_Login_Apply_For_Admission.aspx.cs" Inherits="Pre_Login_Apply_For_Admission" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <html>
    <title>Apply For Admission</title>
    <%--<script src="http://code.jquery.com/jquery-1.10.2.min.js" type="text/javascript"></script>
	<script type="text/javascript">
	    function ImagePreview(input) {
	        if (input.files && input.files[0]) {
	            var reader = new FileReader();
	            reader.onload = function (e) {
	                $('#<%=Image1.ClientID%>').prop('src', e.target.result)
						.width(200)
						.height(200);
	            };
	            reader.readAsDataURL(input.files[0]);
	        }
	    }
	</script>--%>
    
   <%-- <style>
        
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
            
            
            margin: 10px 100px 8px 100px;
           /* border: 3px solid green; */
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
    
    
  
    
    </style>--%>
    <body>
        <p style="margin-left: 280px">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
        <p style="margin-left: 280px">
            &nbsp;</p>
        <asp:Label ID="Label146" runat="server" Text="Application No.  : "></asp:Label>
        <asp:Label ID="Label147" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label148" runat="server" Text="Date : "></asp:Label>
&nbsp;<asp:Label ID="Label149" runat="server" Text="Label"></asp:Label>
        <br />
&nbsp;&nbsp;&nbsp;
    
   
<title>Student Registration Form</title>
&nbsp;<body>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text="Apply For Admission" 
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
       
       

 
            <asp:Panel ID="Panel2" runat="server" CssClass="panel-style" Height="7582px" 
                Width="687px">
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
               
                <asp:Label ID="Label12" runat="server" CssClass="label-style" 
                    Text="Salutation  : "></asp:Label>
               
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList1" 
                    runat="server" CssClass="textbox-style" Height="25px" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged" Width="400px">
                    <asp:ListItem>Mr.</asp:ListItem>
                    <asp:ListItem>Ms.</asp:ListItem>
                    <asp:ListItem>Mrs.</asp:ListItem>
                </asp:DropDownList>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="DropDownList1" CssClass="validation-style" Display="Dynamic" 
                    ErrorMessage="* Required Field" SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="Label4" runat="server" CssClass="label-style" 
                    Text="First Name :"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox-style" 
        Height="25px" Width="400px" PlaceHolder="Enter Your First Name"></asp:TextBox>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox1" CssClass="validation-style" Display="Dynamic" 
                    ErrorMessage="* Required Field" SetFocusOnError="True" 
                    ValidationGroup="Apply"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" 
                    ControlToValidate="TextBox1" CssClass="validation-style" Display="Dynamic" 
                    ErrorMessage="* Please Enter Characters Only" SetFocusOnError="True" 
                    ValidationExpression="^[a-zA-Z\s]+$" ValidationGroup="Apply"></asp:RegularExpressionValidator>
                <br />
                <asp:Label ID="Label13" runat="server" Text="Middle Name :" 
                CssClass="label-style"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox-style" 
        Height="25px" Width="400px" PlaceHolder="Enter Your Middle Name"></asp:TextBox>
                <br />
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox2" CssClass="validation-style" Display="Dynamic" 
                    ErrorMessage="* Required Field" SetFocusOnError="True" 
                    ValidationGroup="Apply"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" 
                    ControlToValidate="TextBox2" CssClass="validation-style" Display="Dynamic" 
                    ErrorMessage="* Please Enter Characters Only" SetFocusOnError="True" 
                    ValidationExpression="^[a-zA-Z\s]+$" ValidationGroup="Apply"></asp:RegularExpressionValidator>
                <br />
                <asp:Label ID="Label14" runat="server" Text="Last Name :" 
                CssClass="label-style"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox3" runat="server" CssClass="textbox-style" 
        Height="25px" Width="400px" PlaceHolder="Enter Your Last Name"></asp:TextBox>
                <br />
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBox3" CssClass="validation-style" Display="Dynamic" 
                    ErrorMessage="* Required Field" SetFocusOnError="True" 
                    ValidationGroup="Apply"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator10" 
                    runat="server" ControlToValidate="TextBox3" CssClass="validation-style" 
                    Display="Dynamic" ErrorMessage="* Please Enter Characters Only" 
                    SetFocusOnError="True" ValidationExpression="^[a-zA-Z\s]+$" 
                    ValidationGroup="Apply"></asp:RegularExpressionValidator>
                <br />
                <asp:Label ID="Label7" runat="server" Text="Date Of Birth :" 
                CssClass="label-style"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox4" runat="server" CssClass="textbox-style" 
        Height="25px" Width="400px" ontextchanged="TextBox4_TextChanged" TextMode="Date"></asp:TextBox>
                <br />
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="TextBox4" CssClass="validation-style" Display="Dynamic" 
                    ErrorMessage="* Required Field" SetFocusOnError="True" 
                    ValidationGroup="Apply"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="Label21" runat="server" Text="Blood Group :" 
                CssClass="label-style"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="textbox-style" 
        Height="25px" Width="400px" 
                    onselectedindexchanged="DropDownList2_SelectedIndexChanged">
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
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="DropDownList2" CssClass="validation-style" Display="Dynamic" 
                    ErrorMessage="* Required Field" SetFocusOnError="True" 
                    ValidationGroup="Apply"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="Label8" runat="server" Text="E-mail  :" 
                CssClass="label-style"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:TextBox ID="TextBox5" runat="server" CssClass="textbox-style" 
        Height="25px" Width="400px" PlaceHolder="Enter Your E-Mail" TextMode="Email" 
                    ontextchanged="TextBox5_TextChanged" onunload="TextBox5_Unload"></asp:TextBox>
                &nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator 
                    ID="RequiredFieldValidator74" runat="server" 
                    ControlToValidate="TextBox5" CssClass="validation-style" Display="Dynamic" 
                    ErrorMessage="* E-Mail Required " SetFocusOnError="True" 
                    ValidationGroup="Apply"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox5" CssClass="validation-style" Display="Dynamic" 
                    ErrorMessage="* E-Mail Required " SetFocusOnError="True" 
                    ValidationGroup="sendvcode"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox5" CssClass="validation-style" 
                    ErrorMessage="* Please Enter Valid E-mail.." SetFocusOnError="True" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ValidationGroup="sendvcode"></asp:RegularExpressionValidator>
                <br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" CssClass="button-style" Height="28px" 
        onclick="Button2_Click" Text="Send Verification Code" Width="153px" 
                    ValidationGroup="sendvcode" />
                <ajaxToolkit:RoundedCornersExtender ID="Button2_RoundedCornersExtender" 
        runat="server" 
        BehaviorID="Button2_RoundedCornersExtender" TargetControlID="Button2" />
                <br />
                <asp:Panel ID="Panel1" runat="server" Height="159px" Width="674px">
                    <br />
                    <asp:Label ID="Label155" runat="server" CssClass="label-style" 
                        Text="Enter Verification Code :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox6" runat="server" CssClass="textbox-style" 
                        Height="25px" MaxLength="6" PlaceHolder="Enter Your E-Mail OTP Here" 
                        Width="400px"></asp:TextBox>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox6" CssClass="validation-style" Display="Dynamic" 
                        ErrorMessage="* Required Field" SetFocusOnError="True" 
                        ValidationGroup="Verify Code"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
                        ControlToValidate="TextBox6" CssClass="validation-style" Display="Dynamic" 
                        ErrorMessage="* Please Enter Numbers Only" SetFocusOnError="True" 
                        ValidationExpression="\d+" ValidationGroup="Verify Code"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator75" runat="server" 
                        ControlToValidate="TextBox6" CssClass="validation-style" Display="Dynamic" 
                        ErrorMessage="* Required Field" SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" CssClass="button-style" Height="28px" 
                        onclick="Button3_Click" Text="Verify Code" ValidationGroup="Verify Code" 
                        Width="94px" />
                    <ajaxToolkit:RoundedCornersExtender ID="Button3_RoundedCornersExtender" 
                        runat="server" BehaviorID="Button3_RoundedCornersExtender" 
                        TargetControlID="Button3" />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label27" runat="server" Text="Label"></asp:Label>
                    <br />
                    <br />
                </asp:Panel>
                <br />
                <asp:Label ID="Label9" runat="server" Text="Mobile Number :" 
                CssClass="label-style"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox7" runat="server" CssClass="textbox-style" 
        Height="25px" Width="400px" PlaceHolder="Enter Your Mobile Number" TextMode="Phone" 
                    MaxLength="10"></asp:TextBox>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="TextBox7" CssClass="validation-style" Display="Dynamic" 
                    ErrorMessage="* Required Field" SetFocusOnError="True" 
                    ValidationGroup="Apply"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TextBox7" CssClass="validation-style" 
                    ErrorMessage="* Please Enter Valid Mobile No." SetFocusOnError="True" 
                    ValidationExpression="[0-9]{10}" 
                    ValidationGroup="Apply" Display="Dynamic"></asp:RegularExpressionValidator>
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
        Height="25px" Width="400px" PlaceHolder="Enter Your Religion"></asp:TextBox>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="TextBox8" CssClass="validation-style" Display="Dynamic" 
                    ErrorMessage="* Required Field" SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator11" 
                    runat="server" ControlToValidate="TextBox8" CssClass="validation-style" 
                    Display="Dynamic" ErrorMessage="* Please Enter Characters Only" 
                    SetFocusOnError="True" ValidationExpression="^[a-zA-Z\s]+$" 
                    ValidationGroup="Apply"></asp:RegularExpressionValidator>
                <br />
                <br />
                <asp:Label ID="Label16" runat="server" CssClass="label-style" 
                    Text="Caste Category :"></asp:Label>
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
        Height="25px" Width="400px" PlaceHolder="Enter Your Father's / Spouse's Name"></asp:TextBox>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="TextBox9" CssClass="validation-style" Display="Dynamic" 
                    ErrorMessage="* Required Field" SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator27" 
                    runat="server" ControlToValidate="TextBox9" CssClass="validation-style" 
                    Display="Dynamic" ErrorMessage="* Please Enter Characters Only" 
                    SetFocusOnError="True" ValidationExpression="^[a-zA-Z\s]+$" 
                    ValidationGroup="Apply"></asp:RegularExpressionValidator>
                <br />
                <asp:Label ID="Label22" runat="server" CssClass="label-style" 
                    Text="Contact No.  :"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox10" runat="server" CssClass="textbox-style" 
        Height="25px" Width="400px" PlaceHolder="Enter Your Father's / Spouse's Contact No." 
                    TextMode="Phone" MaxLength="10"></asp:TextBox>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                    ControlToValidate="textbox10" CssClass="validation-style" Display="Dynamic" 
                    ErrorMessage="* Required Field" SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="TextBox10" CssClass="validation-style" Display="Dynamic" 
                    ErrorMessage="* Please Enter Valid Mobile No." SetFocusOnError="True" 
                    ValidationExpression="[0-9]{10}" ValidationGroup="Apply"></asp:RegularExpressionValidator>
                <br />
                <asp:Label ID="Label18" runat="server" CssClass="label-style" 
                    Text="Mother's  Name :"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox11" runat="server" CssClass="textbox-style" 
        Height="25px" Width="400px" PlaceHolder="Enter Your Mother's  Name"></asp:TextBox>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                    ControlToValidate="TextBox11" CssClass="validation-style" Display="Dynamic" 
                    ErrorMessage="* Required Field" SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator28" 
                    runat="server" ControlToValidate="TextBox11" CssClass="validation-style" 
                    Display="Dynamic" ErrorMessage="* Please Enter Characters Only" 
                    SetFocusOnError="True" ValidationExpression="^[a-zA-Z\s]+$" 
                    ValidationGroup="Apply"></asp:RegularExpressionValidator>
                <br />
                <asp:Label ID="Label23" runat="server" CssClass="label-style" 
                    Text="Contact No.  :"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox12" runat="server" CssClass="textbox-style" 
        Height="25px" Width="400px" PlaceHolder="Enter Your Mother's Contact No." 
                    TextMode="Phone" MaxLength="10"></asp:TextBox>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                    ControlToValidate="TextBox12" CssClass="validation-style" Display="Dynamic" 
                    ErrorMessage="* Required Field" SetFocusOnError="True" 
                    ValidationGroup="Apply"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="TextBox12" CssClass="validation-style" Display="Dynamic" 
                    ErrorMessage="* Please Enter Valid Mobile No." SetFocusOnError="True" 
                    ValidationExpression="[0-9]{10}" ValidationGroup="Apply"></asp:RegularExpressionValidator>
                <br />
                <asp:Label ID="Label19" runat="server" Text="Occupation of Father / Spouse :" 
                CssClass="label-style"></asp:Label>
                &nbsp;<asp:TextBox ID="TextBox13" runat="server" CssClass="textbox-style" 
        Height="25px" Width="400px" PlaceHolder="Enter Occupation of Your Father / Spouse "></asp:TextBox>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                    ControlToValidate="TextBox13" CssClass="validation-style" Display="Dynamic" 
                    ErrorMessage="* Required Field" SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator29" 
                    runat="server" ControlToValidate="TextBox13" CssClass="validation-style" 
                    Display="Dynamic" ErrorMessage="* Please Enter Characters Only" 
                    SetFocusOnError="True" ValidationExpression="^[a-zA-Z\s]+$" 
                    ValidationGroup="Apply"></asp:RegularExpressionValidator>
                <br />
                <asp:Label ID="Label20" runat="server" CssClass="label-style" 
                    Text="Annual Income :"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox14" runat="server" 
                    CssClass="textbox-style" Height="25px" 
                    PlaceHolder="Enter Your Family's Annual Income " Width="400px"></asp:TextBox>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                    ControlToValidate="TextBox14" CssClass="validation-style" Display="Dynamic" 
                    ErrorMessage="* Required Field" SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator30" 
                    runat="server" ControlToValidate="TextBox14" CssClass="validation-style" 
                    ErrorMessage="* Please Enter Numbers Only" SetFocusOnError="True" 
                    ValidationExpression="\d+" ValidationGroup="Apply"></asp:RegularExpressionValidator>
                <br />
                <br />
                <br />
                <asp:Label ID="Label33" runat="server" CssClass="heading-style" 
                    Text="Present / Currrent Address "></asp:Label>
                <ajaxToolkit:RoundedCornersExtender ID="Label33_RoundedCornersExtender" 
                    runat="server" BehaviorID="Label33_RoundedCornersExtender" Radius="30" 
                    TargetControlID="Label33" />
                <ajaxToolkit:DropShadowExtender ID="Label33_DropShadowExtender" runat="server" 
                    BehaviorID="Label33_DropShadowExtender" Opacity="3" Radius="8" Rounded="True" 
                    TargetControlID="Label33" Width="8" />
                <br />
                <br />
                <asp:Label ID="Label29" runat="server" CssClass="label-style" 
                    Text="Current / Present Address :"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox15" runat="server" CssClass="textbox-style" 
                    Height="112px" PlaceHolder="Enter Your Current / Present Address" 
                    TextMode="MultiLine" Width="400px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                    ControlToValidate="TextBox15" CssClass="validation-style" Display="Dynamic" 
                    ErrorMessage="* Required Field" SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator31" 
                    runat="server" ControlToValidate="TextBox15" CssClass="validation-style" 
                    Display="Dynamic" ErrorMessage="* Please Enter Characters Only" 
                    SetFocusOnError="True" ValidationExpression="^[a-zA-Z\s]+$" 
                    ValidationGroup="Apply"></asp:RegularExpressionValidator>
                <br />
                <asp:Label ID="Label30" runat="server" CssClass="label-style" Text="City :"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                <asp:TextBox ID="TextBox16" runat="server" CssClass="textbox-style" 
                    Height="25px" Width="400px" PlaceHolder="Enter City"></asp:TextBox>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
                    ControlToValidate="TextBox16" CssClass="validation-style" Display="Dynamic" 
                    ErrorMessage="* Required Field" SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator12" 
                    runat="server" ControlToValidate="TextBox16" CssClass="validation-style" 
                    Display="Dynamic" ErrorMessage="* Please Enter Characters Only" 
                    SetFocusOnError="True" ValidationExpression="^[a-zA-Z\s]+$" 
                    ValidationGroup="Apply"></asp:RegularExpressionValidator>
                <br />
                <asp:Label ID="Label31" runat="server" CssClass="label-style" Text="Pin Code :"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox17" runat="server" CssClass="textbox-style" 
                    Height="25px" Width="400px" PlaceHolder="Enter Pin Code (Upto 6 Digits)" 
                    MaxLength="6"></asp:TextBox>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" 
                    ControlToValidate="TextBox17" CssClass="validation-style" Display="Dynamic" 
                    ErrorMessage="* Required Field" SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                    ControlToValidate="TextBox17" CssClass="validation-style" Display="Dynamic" 
                    ErrorMessage="* Please Enter Valid Pin Code" SetFocusOnError="True" 
                    ValidationExpression="[0-9]{6}" ValidationGroup="Apply"></asp:RegularExpressionValidator>
                <br />
                <asp:Label ID="Label32" runat="server" CssClass="label-style" Text="State :"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox18" runat="server" CssClass="textbox-style" 
                    Height="25px" PlaceHolder="Enter State" Width="400px"></asp:TextBox>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" 
                    ControlToValidate="TextBox18" CssClass="validation-style" Display="Dynamic" 
                    ErrorMessage="* Required Field" SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator13" 
                    runat="server" ControlToValidate="TextBox18" CssClass="validation-style" 
                    Display="Dynamic" ErrorMessage="* Please Enter Characters Only" 
                    SetFocusOnError="True" ValidationExpression="^[a-zA-Z\s]+$" 
                    ValidationGroup="Apply"></asp:RegularExpressionValidator>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> &nbsp;<asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" 
                    CssClass="textbox-style" oncheckedchanged="CheckBox1_CheckedChanged" 
                    Text=" Is Present Address Same as Permenant Address ?" />
                <br />
                <br />
                <br />
                <asp:Label ID="Label34" runat="server" CssClass="heading-style" 
                    Text="Permanent Address "></asp:Label>
                <ajaxToolkit:DropShadowExtender ID="Label34_DropShadowExtender" runat="server" 
                    BehaviorID="Label34_DropShadowExtender" TargetControlID="Label34" />
                <ajaxToolkit:RoundedCornersExtender ID="Label34_RoundedCornersExtender" 
                    runat="server" BehaviorID="Label34_RoundedCornersExtender" 
                    TargetControlID="Label34" />
                <br />
                <br />
                <asp:Label ID="Label35" runat="server" CssClass="label-style" 
                    Text="Permanent Address :"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox19" runat="server" CssClass="textbox-style" 
                    Height="112px" PlaceHolder="Enter Your Permanent Address" TextMode="MultiLine" 
                    Width="400px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" 
                    ControlToValidate="TextBox19" CssClass="validation-style" Display="Dynamic" 
                    ErrorMessage="* Required Field" SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator32" 
                    runat="server" ControlToValidate="TextBox19" CssClass="validation-style" 
                    Display="Dynamic" ErrorMessage="* Please Enter Characters Only" 
                    SetFocusOnError="True" ValidationExpression="^[a-zA-Z\s]+$" 
                    ValidationGroup="Apply"></asp:RegularExpressionValidator>
                <br />
                <asp:Label ID="Label36" runat="server" CssClass="label-style" Text="City :"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox20" runat="server" CssClass="textbox-style" 
                    Height="25px" PlaceHolder="Enter City" Width="400px"></asp:TextBox>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" 
                    ControlToValidate="TextBox20" CssClass="validation-style" Display="Dynamic" 
                    ErrorMessage="* Required Field" SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator15" 
                    runat="server" ControlToValidate="TextBox20" CssClass="validation-style" 
                    Display="Dynamic" ErrorMessage="* Please Enter Characters Only" 
                    SetFocusOnError="True" ValidationExpression="^[a-zA-Z\s]+$" 
                    ValidationGroup="Apply"></asp:RegularExpressionValidator>
                <br />
                <asp:Label ID="Label37" runat="server" CssClass="label-style" Text="Pin Code :"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox21" runat="server" CssClass="textbox-style" 
                    Height="25px" PlaceHolder="Enter Pin Code (Upto 6 Digits)" Width="400px" 
                    MaxLength="6"></asp:TextBox>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" 
                    ControlToValidate="TextBox21" CssClass="validation-style" Display="Dynamic" 
                    ErrorMessage="* Required Field" SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                    ControlToValidate="TextBox21" CssClass="validation-style" Display="Dynamic" 
                    ErrorMessage="* Please Enter Valid Pin Code" SetFocusOnError="True" 
                    ValidationExpression="[0-9]{6}" ValidationGroup="Apply"></asp:RegularExpressionValidator>
                <br />
                <asp:Label ID="Label38" runat="server" CssClass="label-style" Text="State :"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox22" runat="server" CssClass="textbox-style" 
                    Height="25px" PlaceHolder="Enter State" Width="400px"></asp:TextBox>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" 
                    ControlToValidate="TextBox22" CssClass="validation-style" Display="Dynamic" 
                    ErrorMessage="* Required Field" SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator16" 
                    runat="server" ControlToValidate="TextBox22" CssClass="validation-style" 
                    Display="Dynamic" ErrorMessage="* Please Enter Characters Only" 
                    SetFocusOnError="True" ValidationExpression="^[a-zA-Z\s]+$" 
                    ValidationGroup="Apply"></asp:RegularExpressionValidator>
                <br />
                <br />
                <br />
                <asp:Label ID="Label39" runat="server" CssClass="heading-style" 
                    Text="Course &amp; Semester Selection "></asp:Label>
                <ajaxToolkit:DropShadowExtender ID="Label39_DropShadowExtender" runat="server" 
                    BehaviorID="Label39_DropShadowExtender" TargetControlID="Label39" />
                <ajaxToolkit:RoundedCornersExtender ID="Label39_RoundedCornersExtender" 
                    runat="server" BehaviorID="Label39_RoundedCornersExtender" 
                    TargetControlID="Label39" />
                <br />
                <br />
                <asp:Label ID="Label40" runat="server" CssClass="label-style" 
                    Text="Select Course to Apply  :"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
                    CssClass="textbox-style" Height="25px" 
                    onselectedindexchanged="DropDownList3_SelectedIndexChanged" Width="400px">
                    <asp:ListItem>B.com</asp:ListItem>
                    <asp:ListItem>BBA</asp:ListItem>
                    <asp:ListItem Selected="True">BCA</asp:ListItem>
                    <asp:ListItem>B.voc</asp:ListItem>
                    <asp:ListItem>Bsc</asp:ListItem>
                    <asp:ListItem>Bsc IT</asp:ListItem>
                </asp:DropDownList>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label41" runat="server" CssClass="label-style" Text="Label 41"></asp:Label>
                <br />
                <asp:Label ID="Label141" runat="server" CssClass="label-style" 
                    Text="Select Medium of Instruction :"></asp:Label>
                <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" 
                    CssClass="textbox-style" Height="25px" 
                    onselectedindexchanged="DropDownList4_SelectedIndexChanged" Width="400px">
                    <asp:ListItem>English</asp:ListItem>
                    <asp:ListItem>Hindi</asp:ListItem>
                    <asp:ListItem>Gujarati</asp:ListItem>
                    <asp:ListItem>Marathi</asp:ListItem>
                    <asp:ListItem>Punjabi</asp:ListItem>
                    <asp:ListItem>Sindhi</asp:ListItem>
                    <asp:ListItem>Kannad</asp:ListItem>
                </asp:DropDownList>
                <br />
                <asp:Label ID="Label42" runat="server" CssClass="label-style" 
                    Text="Select Semester to Apply :"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="True" 
                    CssClass="textbox-style" Height="25px" 
                    onselectedindexchanged="DropDownList5_SelectedIndexChanged" Width="400px">
                    <asp:ListItem>Semester 1</asp:ListItem>
                    <asp:ListItem>Semester 2</asp:ListItem>
                    <asp:ListItem>Semester 3</asp:ListItem>
                    <asp:ListItem>Semester 4</asp:ListItem>
                    <asp:ListItem>Semester 5</asp:ListItem>
                    <asp:ListItem>Semester 6</asp:ListItem>
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <asp:Panel ID="Panel3" runat="server" Height="1059px">
                    <br />
                    <asp:Label ID="Label43" runat="server" CssClass="heading-style" 
                        Text="Academic Details "></asp:Label>
                    <ajaxToolkit:RoundedCornersExtender ID="Label43_RoundedCornersExtender" 
                        runat="server" BehaviorID="Label43_RoundedCornersExtender" 
                        TargetControlID="Label43" />
                    <ajaxToolkit:DropShadowExtender ID="Label43_DropShadowExtender" runat="server" 
                        BehaviorID="Label43_DropShadowExtender" TargetControlID="Label43" />
                    <br />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label44" runat="server" CssClass="sub-heading-style" 
                        Text="Class X Details "></asp:Label>
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
                        Height="25px" PlaceHolder="Enter Name of School (Std 10)" Width="400px"></asp:TextBox>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" 
                        ControlToValidate="TextBox23" CssClass="validation-style" Display="Dynamic" 
                        ErrorMessage="* Required Field" SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator33" 
                        runat="server" ControlToValidate="TextBox23" CssClass="validation-style" 
                        Display="Dynamic" ErrorMessage="* Please Enter Characters Only" 
                        SetFocusOnError="True" ValidationExpression="^[a-zA-Z\s]+$" 
                        ValidationGroup="Apply"></asp:RegularExpressionValidator>
                    <br />
                    <asp:Label ID="Label46" runat="server" CssClass="label-style" 
                        Text="Name of Board  :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox24" runat="server" CssClass="textbox-style" 
                        Height="25px" PlaceHolder="Enter Name of Board (Std 10)" Width="400px"></asp:TextBox>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" 
                        ControlToValidate="TextBox24" CssClass="validation-style" Display="Dynamic" 
                        ErrorMessage="* Required Field" SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator34" 
                        runat="server" ControlToValidate="TextBox24" CssClass="validation-style" 
                        Display="Dynamic" ErrorMessage="* Please Enter Characters Only" 
                        SetFocusOnError="True" ValidationExpression="^[a-zA-Z\s]+$" 
                        ValidationGroup="Apply"></asp:RegularExpressionValidator>
                    <br />
                    <asp:Label ID="Label47" runat="server" CssClass="label-style" Text="City :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox25" runat="server" CssClass="textbox-style" 
                        Height="25px" PlaceHolder="Enter Name of City (Std 10)" Width="400px"></asp:TextBox>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" 
                        ControlToValidate="TextBox25" CssClass="validation-style" Display="Dynamic" 
                        ErrorMessage="* Required Field" SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator17" 
                        runat="server" ControlToValidate="TextBox25" CssClass="validation-style" 
                        Display="Dynamic" ErrorMessage="* Please Enter Characters Only" 
                        SetFocusOnError="True" ValidationExpression="^[a-zA-Z\s]+$" 
                        ValidationGroup="Apply"></asp:RegularExpressionValidator>
                    <br />
                    <asp:Label ID="Label48" runat="server" CssClass="label-style" 
                        Text="Medium of Instruction :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox26" runat="server" CssClass="textbox-style" 
                        Height="25px" PlaceHolder="Enter Medium of Instruction (Std 10)" Width="400px"></asp:TextBox>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" 
                        ControlToValidate="TextBox26" CssClass="validation-style" Display="Dynamic" 
                        ErrorMessage="* Required Field" SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator18" 
                        runat="server" ControlToValidate="TextBox26" CssClass="validation-style" 
                        Display="Dynamic" ErrorMessage="* Please Enter Characters Only" 
                        SetFocusOnError="True" ValidationExpression="^[a-zA-Z\s]+$" 
                        ValidationGroup="Apply"></asp:RegularExpressionValidator>
                    <br />
                    <asp:Label ID="Label49" runat="server" CssClass="label-style" 
                        Text="Year of Passing :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox27" runat="server" CssClass="textbox-style" 
                        Height="25px" PlaceHolder="Enter Year of Passing (Std 10)" Width="400px"></asp:TextBox>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator29" runat="server" 
                        ControlToValidate="TextBox27" CssClass="validation-style" Display="Dynamic" 
                        ErrorMessage="* Required Field" SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="Label50" runat="server" CssClass="label-style" 
                        Text="Percentage :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox28" runat="server" CssClass="textbox-style" 
                        Height="25px" PlaceHolder="Enter Percentage (Std 10)" Width="400px"></asp:TextBox>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator30" runat="server" 
                        ControlToValidate="TextBox28" CssClass="validation-style" Display="Dynamic" 
                        ErrorMessage="* Required Field" SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <%--<asp:Image ID="Image2" runat="server" Height="200px" ImageAlign="Middle" 
                    Width="200px" />--%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label70" runat="server" CssClass="sub-heading-style" 
                        Text="Class XII Details "></asp:Label>
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
                        Height="25px" PlaceHolder="Enter Name of School (Std 12)" Width="400px"></asp:TextBox>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator31" runat="server" 
                        ControlToValidate="TextBox29" CssClass="validation-style" Display="Dynamic" 
                        ErrorMessage="* Required Field" SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator35" 
                        runat="server" ControlToValidate="TextBox29" CssClass="validation-style" 
                        Display="Dynamic" ErrorMessage="* Please Enter Characters Only" 
                        SetFocusOnError="True" ValidationExpression="^[a-zA-Z\s]+$" 
                        ValidationGroup="Apply"></asp:RegularExpressionValidator>
                    <br />
                    <asp:Label ID="Label72" runat="server" CssClass="label-style" 
                        Text="Name of Board  :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox30" runat="server" CssClass="textbox-style" 
                        Height="25px" PlaceHolder="Enter Name of Board (Std 12)" Width="400px"></asp:TextBox>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator32" runat="server" 
                        ControlToValidate="TextBox30" CssClass="validation-style" Display="Dynamic" 
                        ErrorMessage="* Required Field" SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator36" 
                        runat="server" ControlToValidate="TextBox30" CssClass="validation-style" 
                        Display="Dynamic" ErrorMessage="* Please Enter Characters Only" 
                        SetFocusOnError="True" ValidationExpression="^[a-zA-Z\s]+$" 
                        ValidationGroup="Apply"></asp:RegularExpressionValidator>
                    <br />
                    <asp:Label ID="Label73" runat="server" CssClass="label-style" Text="City :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox31" runat="server" CssClass="textbox-style" 
                        Height="25px" PlaceHolder="Enter Name of City (Std 12)" Width="400px"></asp:TextBox>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator33" runat="server" 
                        ControlToValidate="TextBox31" CssClass="validation-style" Display="Dynamic" 
                        ErrorMessage="* Required Field" SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator19" 
                        runat="server" ControlToValidate="TextBox31" CssClass="validation-style" 
                        Display="Dynamic" ErrorMessage="* Please Enter Characters Only" 
                        SetFocusOnError="True" ValidationExpression="^[a-zA-Z\s]+$" 
                        ValidationGroup="Apply"></asp:RegularExpressionValidator>
                    <br />
                    <asp:Label ID="Label74" runat="server" CssClass="label-style" 
                        Text="Medium of Instruction :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox32" runat="server" CssClass="textbox-style" 
                        Height="25px" PlaceHolder="Enter Medium of Instruction (Std 12)" Width="400px"></asp:TextBox>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator34" runat="server" 
                        ControlToValidate="TextBox32" CssClass="validation-style" Display="Dynamic" 
                        ErrorMessage="* Required Field" SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator20" 
                        runat="server" ControlToValidate="TextBox32" CssClass="validation-style" 
                        Display="Dynamic" ErrorMessage="* Please Enter Characters Only" 
                        SetFocusOnError="True" ValidationExpression="^[a-zA-Z\s]+$" 
                        ValidationGroup="Apply"></asp:RegularExpressionValidator>
                    <br />
                    <asp:Label ID="Label75" runat="server" CssClass="label-style" 
                        Text="Year of Passing :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox33" runat="server" CssClass="textbox-style" 
                        Height="25px" PlaceHolder="Enter Year of Passing (Std 12)" Width="400px"></asp:TextBox>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator35" runat="server" 
                        ControlToValidate="TextBox33" CssClass="validation-style" Display="Dynamic" 
                        ErrorMessage="* Required Field" SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="Label76" runat="server" CssClass="label-style" 
                        Text=" Stream / Discipline :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox34" runat="server" 
                        CssClass="textbox-style" Height="25px" 
                        PlaceHolder="Enter Stream / Discipline (Std 12)" Width="400px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator36" runat="server" 
                        ControlToValidate="TextBox34" CssClass="validation-style" Display="Dynamic" 
                        ErrorMessage="* Required Field" SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator21" 
                        runat="server" ControlToValidate="TextBox34" CssClass="validation-style" 
                        Display="Dynamic" ErrorMessage="* Please Enter Characters Only" 
                        SetFocusOnError="True" ValidationExpression="^[a-zA-Z\s]+$" 
                        ValidationGroup="Apply"></asp:RegularExpressionValidator>
                    <br />
                    <asp:Label ID="Label80" runat="server" CssClass="label-style" 
                        Text="Percentage :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox35" runat="server" CssClass="textbox-style" 
                        Height="25px" PlaceHolder="Enter Percentage (Std 12)" Width="400px"></asp:TextBox>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator37" runat="server" 
                        ControlToValidate="TextBox35" CssClass="validation-style" Display="Dynamic" 
                        ErrorMessage="* Required Field" SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <%--<asp:Image ID="Image2" runat="server" Height="200px" ImageAlign="Middle" 
                    Width="200px" />--%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                </asp:Panel>
                <br />
                <asp:Panel ID="Panel4" runat="server" Height="412px">
                    <asp:Label ID="Label140" runat="server" CssClass="heading-style" 
                        Text="Graduation Details "></asp:Label>
                    <ajaxToolkit:RoundedCornersExtender ID="Label140_RoundedCornersExtender" 
                        runat="server" BehaviorID="Label140_RoundedCornersExtender" 
                        TargetControlID="Label140" />
                    <ajaxToolkit:DropShadowExtender ID="Label140_DropShadowExtender" runat="server" 
                        BehaviorID="Label140_DropShadowExtender" TargetControlID="Label140" />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label81" runat="server" CssClass="sub-heading-style" 
                        Text="Semester 1 Details "></asp:Label>
                    <ajaxToolkit:RoundedCornersExtender ID="Label81_RoundedCornersExtender" 
                        runat="server" BehaviorID="Label81_RoundedCornersExtender" 
                        TargetControlID="Label81" />
                    <ajaxToolkit:DropShadowExtender ID="Label81_DropShadowExtender" runat="server" 
                        BehaviorID="Label81_DropShadowExtender" TargetControlID="Label81" />
                    <br />
                    <br />
                    <asp:Label ID="Label82" runat="server" CssClass="label-style" 
                        Text="Name of College :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox36" runat="server" CssClass="textbox-style" 
                        Height="25px" PlaceHolder="Enter Name of College (Semester 1)" Width="400px"></asp:TextBox>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator49" runat="server" 
                        ControlToValidate="TextBox36" CssClass="validation-style" Display="Dynamic" 
                        ErrorMessage="* Required Field" SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator37" 
                        runat="server" ControlToValidate="TextBox36" CssClass="validation-style" 
                        Display="Dynamic" ErrorMessage="* Please Enter Characters Only" 
                        SetFocusOnError="True" ValidationExpression="^[a-zA-Z\s]+$" 
                        ValidationGroup="Apply"></asp:RegularExpressionValidator>
                    <br />
                    <asp:Label ID="Label83" runat="server" CssClass="label-style" 
                        Text="Name of University  :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;<asp:TextBox ID="TextBox37" runat="server" 
                        CssClass="textbox-style" Height="25px" 
                        PlaceHolder="Enter Name of University (Semester 1)" Width="400px"></asp:TextBox>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator50" runat="server" 
                        ControlToValidate="TextBox37" CssClass="validation-style" Display="Dynamic" 
                        ErrorMessage="* Required Field" SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator38" 
                        runat="server" ControlToValidate="TextBox37" CssClass="validation-style" 
                        Display="Dynamic" ErrorMessage="* Please Enter Characters Only" 
                        SetFocusOnError="True" ValidationExpression="^[a-zA-Z\s]+$" 
                        ValidationGroup="Apply"></asp:RegularExpressionValidator>
                    <br />
                    <asp:Label ID="Label84" runat="server" CssClass="label-style" Text="City :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox38" runat="server" CssClass="textbox-style" 
                        Height="25px" PlaceHolder="Enter Name of City (Semester 1)" Width="400px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator51" runat="server" 
                        ControlToValidate="TextBox38" CssClass="validation-style" Display="Dynamic" 
                        ErrorMessage="* Required Field" SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator22" 
                        runat="server" ControlToValidate="TextBox38" CssClass="validation-style" 
                        Display="Dynamic" ErrorMessage="* Please Enter Characters Only" 
                        SetFocusOnError="True" ValidationExpression="^[a-zA-Z\s]+$" 
                        ValidationGroup="Apply"></asp:RegularExpressionValidator>
                    <br />
                    <asp:Label ID="Label86" runat="server" CssClass="label-style" 
                        Text="Year of Passing :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox40" runat="server" CssClass="textbox-style" 
                        Height="25px" PlaceHolder="Enter Year of Passing (Semester 1)" Width="400px"></asp:TextBox>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator52" runat="server" 
                        ControlToValidate="TextBox40" CssClass="validation-style" Display="Dynamic" 
                        ErrorMessage="* Required Field" SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="Label87" runat="server" CssClass="label-style" 
                        Text="Percentage / GPA  :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox41" runat="server" CssClass="textbox-style" 
                        Height="25px" PlaceHolder="Enter Percentage / GPA (Semester 1)" Width="400px"></asp:TextBox>
                    &nbsp;&nbsp;<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator53" runat="server" 
                        ControlToValidate="TextBox41" CssClass="validation-style" Display="Dynamic" 
                        ErrorMessage="* Required Field" SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%--<asp:Image ID="Image2" runat="server" Height="200px" ImageAlign="Middle" 
                    Width="200px" />--%><br /><br /><br /><br /><br /><br /><br /></asp:Panel>
                <br />
                <asp:Panel ID="Panel5" runat="server" Height="362px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label92" runat="server" CssClass="sub-heading-style" 
                        Text="Semester 2 Details "></asp:Label>
                    <ajaxToolkit:RoundedCornersExtender ID="Label92_RoundedCornersExtender" 
                        runat="server" BehaviorID="Label92_RoundedCornersExtender" 
                        TargetControlID="Label92" />
                    <ajaxToolkit:DropShadowExtender ID="Label92_DropShadowExtender" runat="server" 
                        BehaviorID="Label92_DropShadowExtender" TargetControlID="Label92" />
                    <br />
                    <br />
                    <asp:Label ID="Label93" runat="server" CssClass="label-style" 
                        Text="Name of College :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox43" runat="server" CssClass="textbox-style" 
                        Height="25px" PlaceHolder="Enter Name of College (Semester 2)" Width="400px"></asp:TextBox>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator54" runat="server" 
                        ControlToValidate="TextBox43" CssClass="validation-style" Display="Dynamic" 
                        ErrorMessage="* Required Field" SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator41" 
                        runat="server" ControlToValidate="TextBox43" CssClass="validation-style" 
                        Display="Dynamic" ErrorMessage="* Please Enter Characters Only" 
                        SetFocusOnError="True" ValidationExpression="^[a-zA-Z\s]+$" 
                        ValidationGroup="Apply"></asp:RegularExpressionValidator>
                    <br />
                    <asp:Label ID="Label94" runat="server" CssClass="label-style" 
                        Text="Name of University  :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:TextBox ID="TextBox44" runat="server" 
                        CssClass="textbox-style" Height="25px" 
                        PlaceHolder="Enter Name of University (Semester 2)" Width="400px"></asp:TextBox>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator55" runat="server" 
                        ControlToValidate="TextBox44" CssClass="validation-style" Display="Dynamic" 
                        ErrorMessage="* Required Field" SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator42" 
                        runat="server" ControlToValidate="TextBox44" CssClass="validation-style" 
                        Display="Dynamic" ErrorMessage="* Please Enter Characters Only" 
                        SetFocusOnError="True" ValidationExpression="^[a-zA-Z\s]+$" 
                        ValidationGroup="Apply"></asp:RegularExpressionValidator>
                    <br />
                    <asp:Label ID="Label95" runat="server" CssClass="label-style" Text="City :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:TextBox ID="TextBox45" runat="server" CssClass="textbox-style" 
                        Height="25px" PlaceHolder="Enter Name of City (Semester 2)" Width="400px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator56" runat="server" 
                        ControlToValidate="TextBox45" CssClass="validation-style" Display="Dynamic" 
                        ErrorMessage="* Required Field" SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator43" 
                        runat="server" ControlToValidate="TextBox45" CssClass="validation-style" 
                        Display="Dynamic" ErrorMessage="* Please Enter Characters Only" 
                        SetFocusOnError="True" ValidationExpression="^[a-zA-Z\s]+$" 
                        ValidationGroup="Apply"></asp:RegularExpressionValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <asp:Label ID="Label97" runat="server" CssClass="label-style" 
                        Text="Year of Passing :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:TextBox ID="TextBox47" runat="server" CssClass="textbox-style" 
                        Height="25px" PlaceHolder="Enter Year of Passing (Semester 2)" Width="400px"></asp:TextBox>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator57" runat="server" 
                        ControlToValidate="TextBox47" CssClass="validation-style" Display="Dynamic" 
                        ErrorMessage="* Required Field" SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="Label98" runat="server" CssClass="label-style" 
                        Text="Percentage / GPA  :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox48" runat="server" 
                        CssClass="textbox-style" Height="25px" 
                        PlaceHolder="Enter Percentage / GPA (Semester 2)" Width="400px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator58" runat="server" 
                        ControlToValidate="TextBox48" CssClass="validation-style" Display="Dynamic" 
                        ErrorMessage="* Required Field" SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%--<asp:Image ID="Image2" runat="server" Height="200px" ImageAlign="Middle" 
                    Width="200px" />--%><br /><br /><br /><br /><br /><br /><br /><br /><br /></asp:Panel>
                <br />
                <br />
                <asp:Panel ID="Panel6" runat="server" Height="371px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label103" runat="server" CssClass="sub-heading-style" 
                        Text="Semester 3 Details "></asp:Label>
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
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox50" runat="server" CssClass="textbox-style" 
                        Height="25px" PlaceHolder="Enter Name of College (Semester 3)" Width="400px"></asp:TextBox>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator59" runat="server" 
                        ControlToValidate="TextBox50" CssClass="validation-style" Display="Dynamic" 
                        ErrorMessage="* Required Field" SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator44" 
                        runat="server" ControlToValidate="TextBox50" CssClass="validation-style" 
                        Display="Dynamic" ErrorMessage="* Please Enter Characters Only" 
                        SetFocusOnError="True" ValidationExpression="^[a-zA-Z\s]+$" 
                        ValidationGroup="Apply"></asp:RegularExpressionValidator>
                    <br />
                    <asp:Label ID="Label105" runat="server" CssClass="label-style" 
                        Text="Name of University  :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;<asp:TextBox ID="TextBox51" runat="server" 
                        CssClass="textbox-style" Height="25px" 
                        PlaceHolder="Enter Name of University (Semester 3)" Width="400px"></asp:TextBox>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator60" runat="server" 
                        ControlToValidate="TextBox51" CssClass="validation-style" Display="Dynamic" 
                        ErrorMessage="* Required Field" SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator45" 
                        runat="server" ControlToValidate="TextBox51" CssClass="validation-style" 
                        Display="Dynamic" ErrorMessage="* Please Enter Characters Only" 
                        SetFocusOnError="True" ValidationExpression="^[a-zA-Z\s]+$" 
                        ValidationGroup="Apply"></asp:RegularExpressionValidator>
                    <br />
                    <asp:Label ID="Label106" runat="server" CssClass="label-style" Text="City :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox52" runat="server" CssClass="textbox-style" 
                        Height="25px" PlaceHolder="Enter Name of City (Semester 3)" Width="400px"></asp:TextBox>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator61" runat="server" 
                        ControlToValidate="TextBox52" CssClass="validation-style" Display="Dynamic" 
                        ErrorMessage="* Required Field" SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator46" 
                        runat="server" ControlToValidate="TextBox52" CssClass="validation-style" 
                        Display="Dynamic" ErrorMessage="* Please Enter Characters Only" 
                        SetFocusOnError="True" ValidationExpression="^[a-zA-Z\s]+$" 
                        ValidationGroup="Apply"></asp:RegularExpressionValidator>
                    <br />
                    <asp:Label ID="Label108" runat="server" CssClass="label-style" 
                        Text="Year of Passing :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox54" runat="server" CssClass="textbox-style" 
                        Height="25px" PlaceHolder="Enter Year of Passing (Semester 3)" Width="400px"></asp:TextBox>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator62" runat="server" 
                        ControlToValidate="TextBox54" CssClass="validation-style" Display="Dynamic" 
                        ErrorMessage="* Required Field" SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="Label109" runat="server" CssClass="label-style" 
                        Text="Percentage / GPA  :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:TextBox ID="TextBox55" runat="server" CssClass="textbox-style" 
                        Height="25px" PlaceHolder="Enter Percentage / GPA (Semester 3)" Width="400px"></asp:TextBox>
                    &nbsp;<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator63" runat="server" 
                        ControlToValidate="TextBox55" CssClass="validation-style" Display="Dynamic" 
                        ErrorMessage="* Required Field" SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <%--<asp:Image ID="Image2" runat="server" Height="200px" ImageAlign="Middle" 
                    Width="200px" />--%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
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
                <asp:Panel ID="Panel7" runat="server" Height="371px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label114" runat="server" CssClass="sub-heading-style" 
                        Text="Semester 4 Details "></asp:Label>
                    <ajaxToolkit:RoundedCornersExtender ID="Label114_RoundedCornersExtender" 
                        runat="server" BehaviorID="Label114_RoundedCornersExtender" 
                        TargetControlID="Label114" />
                    <ajaxToolkit:DropShadowExtender ID="Label114_DropShadowExtender" runat="server" 
                        BehaviorID="Label114_DropShadowExtender" TargetControlID="Label114" />
                    <br />
                    <br />
                    <asp:Label ID="Label115" runat="server" CssClass="label-style" 
                        Text="Name of College :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox57" runat="server" CssClass="textbox-style" 
                        Height="25px" PlaceHolder="Enter Name of College (Semester 4)" Width="400px"></asp:TextBox>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator64" runat="server" 
                        ControlToValidate="TextBox57" CssClass="validation-style" Display="Dynamic" 
                        ErrorMessage="* Required Field" SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator47" 
                        runat="server" ControlToValidate="TextBox57" CssClass="validation-style" 
                        Display="Dynamic" ErrorMessage="* Please Enter Characters Only" 
                        SetFocusOnError="True" ValidationExpression="^[a-zA-Z\s]+$" 
                        ValidationGroup="Apply"></asp:RegularExpressionValidator>
                    <br />
                    <asp:Label ID="Label116" runat="server" CssClass="label-style" 
                        Text="Name of University  :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;<asp:TextBox ID="TextBox58" runat="server" 
                        CssClass="textbox-style" Height="25px" 
                        PlaceHolder="Enter Name of University (Semester 4)" Width="400px"></asp:TextBox>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator65" runat="server" 
                        ControlToValidate="TextBox58" CssClass="validation-style" Display="Dynamic" 
                        ErrorMessage="* Required Field" SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator48" 
                        runat="server" ControlToValidate="TextBox58" CssClass="validation-style" 
                        Display="Dynamic" ErrorMessage="* Please Enter Characters Only" 
                        SetFocusOnError="True" ValidationExpression="^[a-zA-Z\s]+$" 
                        ValidationGroup="Apply"></asp:RegularExpressionValidator>
                    <br />
                    <asp:Label ID="Label117" runat="server" CssClass="label-style" Text="City :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox59" runat="server" CssClass="textbox-style" 
                        Height="25px" PlaceHolder="Enter Name of City (Semester 4)" Width="400px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator66" runat="server" 
                        ControlToValidate="TextBox59" CssClass="validation-style" Display="Dynamic" 
                        ErrorMessage="* Required Field" SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator49" 
                        runat="server" ControlToValidate="TextBox59" CssClass="validation-style" 
                        Display="Dynamic" ErrorMessage="* Please Enter Characters Only" 
                        SetFocusOnError="True" ValidationExpression="^[a-zA-Z\s]+$" 
                        ValidationGroup="Apply"></asp:RegularExpressionValidator>
                    <br />
&nbsp;<asp:Label ID="Label119" runat="server" CssClass="label-style" Text="Year of Passing :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:TextBox ID="TextBox61" runat="server" CssClass="textbox-style" 
                        Height="25px" PlaceHolder="Enter Year of Passing (Semester 4)" Width="400px"></asp:TextBox>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator67" runat="server" 
                        ControlToValidate="TextBox61" CssClass="validation-style" Display="Dynamic" 
                        ErrorMessage="* Required Field" SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="Label120" runat="server" CssClass="label-style" 
                        Text="Percentage / GPA  :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox62" runat="server" CssClass="textbox-style" 
                        Height="25px" PlaceHolder="Enter Percentage / GPA (Semester 4)" Width="400px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator68" runat="server" 
                        ControlToValidate="TextBox62" CssClass="validation-style" Display="Dynamic" 
                        ErrorMessage="* Required Field" SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
                    <br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <%--<asp:Image ID="Image2" runat="server" Height="200px" ImageAlign="Middle" 
                    Width="200px" />--%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
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
                <asp:Panel ID="Panel8" runat="server" Height="371px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label125" runat="server" CssClass="sub-heading-style" 
                        Text="Semester 5 Details "></asp:Label>
                    <ajaxToolkit:RoundedCornersExtender ID="Label125_RoundedCornersExtender" 
                        runat="server" BehaviorID="Label125_RoundedCornersExtender" 
                        TargetControlID="Label125" />
                    <ajaxToolkit:DropShadowExtender ID="Label125_DropShadowExtender" runat="server" 
                        BehaviorID="Label125_DropShadowExtender" TargetControlID="Label125" />
                    <br />
                    <br />
                    <asp:Label ID="Label126" runat="server" CssClass="label-style" 
                        Text="Name of College :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox64" runat="server" CssClass="textbox-style" 
                        Height="25px" PlaceHolder="Enter Name of College (Semester 5)" Width="400px"></asp:TextBox>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator69" runat="server" 
                        ControlToValidate="TextBox64" CssClass="validation-style" Display="Dynamic" 
                        ErrorMessage="* Required Field" SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator50" 
                        runat="server" ControlToValidate="TextBox64" CssClass="validation-style" 
                        Display="Dynamic" ErrorMessage="* Please Enter Characters Only" 
                        SetFocusOnError="True" ValidationExpression="^[a-zA-Z\s]+$" 
                        ValidationGroup="Apply"></asp:RegularExpressionValidator>
                    <br />
                    <asp:Label ID="Label127" runat="server" CssClass="label-style" 
                        Text="Name of University  :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;<asp:TextBox ID="TextBox65" runat="server" 
                        CssClass="textbox-style" Height="25px" 
                        PlaceHolder="Enter Name of University (Semester 5)" Width="400px"></asp:TextBox>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator70" runat="server" 
                        ControlToValidate="TextBox65" CssClass="validation-style" Display="Dynamic" 
                        ErrorMessage="* Required Field" SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator51" 
                        runat="server" ControlToValidate="TextBox65" CssClass="validation-style" 
                        Display="Dynamic" ErrorMessage="* Please Enter Characters Only" 
                        SetFocusOnError="True" ValidationExpression="^[a-zA-Z\s]+$" 
                        ValidationGroup="Apply"></asp:RegularExpressionValidator>
                    <br />
                    <asp:Label ID="Label128" runat="server" CssClass="label-style" Text="City :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox66" runat="server" CssClass="textbox-style" 
                        Height="25px" PlaceHolder="Enter Name of City (Semester 5)" Width="400px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator71" runat="server" 
                        ControlToValidate="TextBox66" CssClass="validation-style" Display="Dynamic" 
                        ErrorMessage="* Required Field" SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator52" 
                        runat="server" ControlToValidate="TextBox66" CssClass="validation-style" 
                        Display="Dynamic" ErrorMessage="* Please Enter Characters Only" 
                        SetFocusOnError="True" ValidationExpression="^[a-zA-Z\s]+$" 
                        ValidationGroup="Apply"></asp:RegularExpressionValidator>
                    <br />
                    <asp:Label ID="Label130" runat="server" CssClass="label-style" 
                        Text="Year of Passing :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;
                    <asp:TextBox ID="TextBox68" runat="server" CssClass="textbox-style" 
                        Height="25px" PlaceHolder="Enter Year of Passing (Semester 5)" Width="400px"></asp:TextBox>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator72" runat="server" 
                        ControlToValidate="TextBox68" CssClass="validation-style" Display="Dynamic" 
                        ErrorMessage="* Required Field" SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="Label131" runat="server" CssClass="label-style" 
                        Text="Percentage / GPA  :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox69" runat="server" CssClass="textbox-style" 
                        Height="25px" PlaceHolder="Enter Percentage / GPA (Semester 5)" Width="400px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator73" runat="server" 
                        ControlToValidate="TextBox69" CssClass="validation-style" Display="Dynamic" 
                        ErrorMessage="* Required Field" SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%--<asp:Image ID="Image2" runat="server" Height="200px" ImageAlign="Middle" 
                    Width="200px" />--%><br /><br /><br /><br /><br /><br /><br /><br /><br /></asp:Panel>
                <br />
                <asp:Panel ID="Panel10" runat="server" Height="271px">
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label142" runat="server" CssClass="sub-heading-style" 
                        Text="Password Recovery Information"></asp:Label>
                    <ajaxToolkit:DropShadowExtender ID="Label142_DropShadowExtender0" 
                        runat="server" BehaviorID="Label142_DropShadowExtender" 
                        TargetControlID="Label142" />
                    <ajaxToolkit:RoundedCornersExtender ID="Label142_RoundedCornersExtender0" 
                        runat="server" BehaviorID="Label142_RoundedCornersExtender" 
                        TargetControlID="Label142" />
                    <br />
                    <br />
                    <asp:Label ID="Label143" runat="server" CssClass="label-style" 
                        Text="Select Security Question  :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:DropDownList ID="DropDownList6" runat="server" AutoPostBack="True" 
                        CssClass="textbox-style" Height="25px" 
                        onselectedindexchanged="DropDownList6_SelectedIndexChanged" Width="400px">
                        <asp:ListItem>What is your date of birth?</asp:ListItem>
                        <asp:ListItem>What was your favorite school teacher’s name?</asp:ListItem>
                        <asp:ListItem>What’s your favorite movie?</asp:ListItem>
                        <asp:ListItem>What was your first car?</asp:ListItem>
                        <asp:ListItem>What is your astrological sign?</asp:ListItem>
                        <asp:ListItem>What city were you born in?</asp:ListItem>
                        <asp:ListItem>What is your oldest sibling’s middle name?</asp:ListItem>
                        <asp:ListItem>What was the first concert you attended?</asp:ListItem>
                        <asp:ListItem>What was the make and model of your first car?</asp:ListItem>
                        <asp:ListItem>In what city or town did your parents meet?</asp:ListItem>
                        <asp:ListItem>Custom</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                    <asp:Panel ID="Panel11" runat="server">
                        <asp:Label ID="Label144" runat="server" CssClass="label-style" 
                            Text="Enter Security Question  :"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox70" runat="server" CssClass="textbox-style" 
                            Height="25px" PlaceHolder="Enter Security Question" Width="400px"></asp:TextBox>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator38" runat="server" 
                            ControlToValidate="TextBox70" CssClass="validation-style" Display="Dynamic" 
                            ErrorMessage="* Required Field" SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
                    </asp:Panel>
                    <br />
                    <asp:Label ID="Label145" runat="server" CssClass="label-style" 
                        Text="Enter Security Answer  :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:TextBox ID="TextBox71" runat="server" CssClass="textbox-style" 
                        Height="25px" PlaceHolder="Enter Security Answer" Width="400px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator 
                        ID="RequiredFieldValidator39" runat="server" ControlToValidate="TextBox71" 
                        CssClass="validation-style" Display="Dynamic" ErrorMessage="* Required Field" 
                        SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                </asp:Panel>
                <br />
                <asp:Panel ID="Panel13" runat="server">
                    <asp:Label ID="Label67" runat="server" CssClass="label-style" 
                        Text="Upload Class X Marksheet :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:FileUpload ID="FileUpload2" runat="server" CssClass="button-style" 
                        Height="25px" Width="400px" />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator40" runat="server" 
                        ControlToValidate="FileUpload2" CssClass="validation-style" Display="Dynamic" 
                        ErrorMessage="* Required Field" SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<%--<asp:Button ID="Button4" runat="server" CssClass="button-style" Height="33px" 
                        onclick="Button4_Click" Text="Upload" Width="97px" />--%><%--<asp:Button ID="Button5" runat="server" CssClass="button-style" Height="33px" 
                        onclick="Button5_Click" Text="Upload" Width="97px" />--%><br /><asp:Label 
                        ID="Label68" runat="server" Text="Label"></asp:Label>
                    <br />
                    <asp:Label ID="Label69" runat="server" Text="Label"></asp:Label>
                    <br />
                    <asp:Label ID="Label77" runat="server" CssClass="label-style" 
                        Text="Upload Class XII Marksheet :"></asp:Label>
                    &nbsp;<asp:FileUpload ID="FileUpload3" runat="server" CssClass="button-style" 
                        Height="25px" Width="400px" />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator41" runat="server" 
                        ControlToValidate="FileUpload3" CssClass="validation-style" Display="Dynamic" 
                        ErrorMessage="* Required Field" SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <%--<asp:Button ID="Button5" runat="server" CssClass="button-style" Height="33px" 
                        onclick="Button5_Click" Text="Upload" Width="97px" />--%>
                    <br />
                    <asp:Label ID="Label78" runat="server" Text="Label"></asp:Label>
                    <br />
                    <asp:Label ID="Label79" runat="server" Text="Label"></asp:Label>
                    <br />
                </asp:Panel>
                <br />
                <asp:Panel ID="Panel14" runat="server">
                    <asp:Label ID="Label89" runat="server" CssClass="label-style" 
                        Text="Upload Semester 1 Marksheet :"></asp:Label>
                    <asp:FileUpload ID="FileUpload4" runat="server" CssClass="button-style" 
                        Height="25px" Width="400px" />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator42" runat="server" 
                        ControlToValidate="FileUpload4" CssClass="validation-style" Display="Dynamic" 
                        ErrorMessage="* Required Field" SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <%--<asp:Button ID="Button6" runat="server" CssClass="button-style" Height="33px" 
                        onclick="Button6_Click" Text="Upload" Width="97px" />--%>
                    <br />
                    <asp:Label ID="Label90" runat="server" Text="Label"></asp:Label>
                    <br />
                    <asp:Label ID="Label91" runat="server" Text="Label"></asp:Label>
                </asp:Panel>
                <br />
                <asp:Panel ID="Panel15" runat="server">
                    <asp:Label ID="Label100" runat="server" CssClass="label-style" 
                        Text="Upload Semester 2 Marksheet :"></asp:Label>
                    &nbsp;<asp:FileUpload ID="FileUpload5" runat="server" CssClass="button-style" 
                        Height="25px" Width="400px" />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator43" runat="server" 
                        ControlToValidate="FileUpload5" CssClass="validation-style" Display="Dynamic" 
                        ErrorMessage="* Required Field" SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <%--<asp:Button ID="Button7" runat="server" CssClass="button-style" Height="33px" 
                        onclick="Button7_Click" Text="Upload" Width="97px" />--%>
                    <br />
                    <asp:Label ID="Label101" runat="server" Text="Label"></asp:Label>
                    <br />
                    <asp:Label ID="Label102" runat="server" Text="Label"></asp:Label>
                </asp:Panel>
                <br />
                <asp:Panel ID="Panel16" runat="server">
                    <asp:Label ID="Label111" runat="server" CssClass="label-style" 
                        Text="Upload Semester 3 Marksheet :"></asp:Label>
                    &nbsp;<asp:FileUpload ID="FileUpload6" runat="server" CssClass="button-style" 
                        Height="25px" Width="400px" />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator44" runat="server" 
                        ControlToValidate="FileUpload6" CssClass="validation-style" Display="Dynamic" 
                        ErrorMessage="* Required Field" SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <%--<asp:Button ID="Button8" runat="server" CssClass="button-style" Height="33px" 
                        onclick="Button8_Click" Text="Upload" Width="97px" />--%>
                    <br />
                    <asp:Label ID="Label112" runat="server" Text="Label"></asp:Label>
                    <br />
                    <asp:Label ID="Label113" runat="server" Text="Label"></asp:Label>
                </asp:Panel>
                <br />
                <asp:Panel ID="Panel17" runat="server">
                    <asp:Label ID="Label122" runat="server" CssClass="label-style" 
                        Text="Upload Semester 4 Marksheet :"></asp:Label>
                    &nbsp;<asp:FileUpload ID="FileUpload7" runat="server" CssClass="button-style" 
                        Height="25px" Width="400px" />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator45" runat="server" 
                        ControlToValidate="FileUpload7" CssClass="validation-style" Display="Dynamic" 
                        ErrorMessage="* Required Field" SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <%--<asp:Button ID="Button9" runat="server" CssClass="button-style" Height="33px" 
                        onclick="Button9_Click" Text="Upload" Width="97px" />--%>
                    <br />
                    <asp:Label ID="Label123" runat="server" Text="Label"></asp:Label>
                    <br />
                    <asp:Label ID="Label124" runat="server" Text="Label"></asp:Label>
                </asp:Panel>
                <br />
                <asp:Panel ID="Panel18" runat="server">
                    <asp:Label ID="Label133" runat="server" CssClass="label-style" 
                        Text="Upload Semester 5 Marksheet :"></asp:Label>
                    &nbsp;<asp:FileUpload ID="FileUpload8" runat="server" CssClass="button-style" 
                        Height="25px" Width="400px" />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:RequiredFieldValidator 
                        ID="RequiredFieldValidator46" runat="server" ControlToValidate="FileUpload8" 
                        CssClass="validation-style" Display="Dynamic" ErrorMessage="* Required Field" 
                        SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <%--<asp:Button ID="Button10" runat="server" CssClass="button-style" Height="33px" 
                        onclick="Button10_Click" Text="Upload" Width="97px" />--%>
                    <br />
                    <asp:Label ID="Label134" runat="server" Text="Label"></asp:Label>
                    <br />
                    <asp:Label ID="Label135" runat="server" Text="Label"></asp:Label>
                </asp:Panel>
                <br />
                <asp:Panel ID="Panel12" runat="server">
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label153" runat="server" CssClass="sub-heading-style" 
                        Text="Upload Passport Size Photo "></asp:Label>
                    <ajaxToolkit:RoundedCornersExtender ID="Label153_RoundedCornersExtender" 
                        runat="server" BehaviorID="Label153_RoundedCornersExtender" 
                        TargetControlID="Label153" />
                    <ajaxToolkit:DropShadowExtender ID="Label153_DropShadowExtender" runat="server" 
                        BehaviorID="Label153_DropShadowExtender" TargetControlID="Label153" />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Image ID="Image1" runat="server" Height="200px" ImageAlign="Middle" 
                        Width="200px" />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label26" runat="server" Text="Label"></asp:Label>
                    <br />
                    &nbsp;<br />
                    <asp:Label ID="Label151" runat="server" CssClass="label-style" 
                        Text="Upload Passport Size Photo : "></asp:Label>
                    &nbsp;&nbsp;
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="button-style" 
                        Height="25px" OnChange="ImagePreview(this);" Width="400px" />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator47" runat="server" 
                        ControlToValidate="FileUpload1" CssClass="validation-style" Display="Dynamic" 
                        ErrorMessage="* Required Field" SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
                    <br />
                    <html>
                    <body>
                    <body>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <%-- <asp:Button ID="Button1" runat="server" CssClass="button-style" Height="33px" 
                onclick="Button1_Click" Text="Upload" Width="97px" />--%>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:Label ID="Label25" runat="server" Text="Label"></asp:Label>
                    </body>
                    </body>
                    </html>
                </asp:Panel>
                <br />
                <asp:Panel ID="Panel9" runat="server" Height="412px">
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label136" runat="server" CssClass="sub-heading-style" 
                        Text="Upload Signature "></asp:Label>
                    <ajaxToolkit:DropShadowExtender ID="Label136_DropShadowExtender" runat="server" 
                        BehaviorID="Label136_DropShadowExtender" TargetControlID="Label136" />
                    <ajaxToolkit:RoundedCornersExtender ID="Label136_RoundedCornersExtender" 
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
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:FileUpload ID="FileUpload9" runat="server" CssClass="button-style" 
                        Height="25px" Width="400px" />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <%--<asp:Button ID="Button11" runat="server" CssClass="button-style" Height="33px" 
                        onclick="Button11_Click" Text="Upload" Width="97px" />--%>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator48" runat="server" 
                        ControlToValidate="FileUpload9" CssClass="validation-style" Display="Dynamic" 
                        ErrorMessage="* Required Field" SetFocusOnError="True" ValidationGroup="Apply"></asp:RequiredFieldValidator>
                </asp:Panel>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button12" runat="server" CssClass="button-style" Height="33px" 
                    onclick="Button12_Click" Text="Apply" ValidationGroup="Apply" Width="146px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button13" runat="server" CausesValidation="False" 
                    CssClass="button-style" Height="33px" onclick="Button13_Click" Text="Cancel" 
                    Width="146px" />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label154" runat="server" Text="Label"></asp:Label>
                <br />
               
            </asp:Panel>
       
       

 
</body>
</html>
      

</asp:Content>