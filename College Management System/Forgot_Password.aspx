<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Forgot_Password.aspx.cs" Inherits="Forgot_Password" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>    

         <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
         <style type="text/css">

        *
        {
         margin:0px;
         padding:0px;
           
        }
        
        body
        {
               background-image:url("Images/BACKGROUND/lines_glitter_red_129722_3840x2400.jpg");
            height: 100%;
  /* Center and scale the image nicely */
            background-position: center;
            background-repeat: no-repeat;
            background-size:cover;

            /*background-color:#CAF3E9;*/
           /* background:linear-gradient(to right, #E0FFFF,  #00FFFF, #E0FFFF );
            
             background: rgb(127,234,217);
            background: linear-gradient(0deg, rgba(127,234,217,1) 0%, rgba(240,255,253,1) 100%);    */
         
         min-height:100%;
         
        }
        
        .menu-style
        {
             background: #333333;           
             color:Aqua;                              
        }
        
         .menu-style:hover
        {
            /* background:Aqua; */          
             color: #666666;                                  
        }
        
        .panel-style
        {
            border-radius:20px;
            box-shadow: 2px 5px 5px 5px Red; 
            transition: box-shadow 0.6s linear; 
            
             
               background-image:url("Images/BACKGROUND/lines_glitter_red_129722_3840x2400.jpg");
            height: 100%;
  /* Center and scale the image nicely */
            background-position: center;
            background-repeat: no-repeat;
            background-size:cover;
            
            /* background-image:url("Images/BACKGROUND/light-effect-3d-background-template-for-powerpoint-13.jpg");   
            height: 100%;
  
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;*/
            /*background:linear-gradient(to bottom right, #E0FFFF,  #00FFFF, #E0FFFF );
            background: rgb(127,234,217);*/
            
            
             /* margin: 100px 100px 50px 100px;
            
          border: 3px solid green;*/ 
            padding: 20px;  
           
        }
        
        .label1-style
        {
            /*background: linear-gradient(to right, red, aqua,red);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent; */
            
            background-color:transparent;
            color:Red;
            /*color: rgb(127,234,217);
            color: linear-gradient(180deg, rgba(127,234,217,1) 0%, rgba(240,255,253,1) 100%);  */             
            box-shadow: 0px 0px 0px 3px white;        
            transition: box-shadow 0.6s linear;
            margin: 0.5em;                     
  
        }
        
         .label1-style:hover
        {
             /* color: #CFF8F8;
            background:linear-gradient(to left, #E0FFFF, #00FFFF, #E0FFFF );*/
            
            box-shadow: 0px 0px 0px 5px white;  
            text-decoration:bold;           
           
  
        }
        
         .label-style
        {
           
            
             /*color:#1bae9a;*/
            color:Red;
             text-align:justify;
             text-decoration:bold;
                               
  
        }
        
        .textbox-style
        {
            border-radius:5px; 
             color:Black;
             background: rgb(127,234,217);
             background: linear-gradient(0deg, rgba(127,234,217,1) 0%, rgba(240,255,253,1) 100%);               
             box-shadow: 0px 0px 0px 3px linear-gradient(0deg, rgba(127,234,217,1) 0%, rgba(240,255,253,1) 100%);        
             transition: box-shadow 0.6s linear;
             margin: 0.5em; /* Increased margin since the box-shado expands outside the element, like outline */            
            
        }
        
         .textbox-style:hover
        {
            box-shadow: 5px 5px 5px Black; 
        transition: box-shadow 0.6s linear; 
           /*background:linear-gradient(to right, #E0FFFF,  #00FFFF, #E0FFFF );             */
        }
        
        .dropdown-style
         {
             color:Black;
             background: rgb(127,234,217);
             background: linear-gradient(0deg, rgba(127,234,217,1) 0%, rgba(240,255,253,1) 100%);               
           
             margin: 0.5em; /* Increased margin since the box-shado expands outside the element, like outline */            
            
        }
        
         .dropdown-style:hover
        {
           box-shadow: 5px 5px 5px Black; 
        transition: box-shadow 0.6s linear; 
           /*background:linear-gradient(to right, #E0FFFF,  #00FFFF, #E0FFFF );             */
        }
        .validation-style
        {
            /* background: linear-gradient(to right, red, aqua,red);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;                              */
            color:Red;
        }
        
    
    
    .button-style
    {
        
       /* background:#1bae9a;*/
        background:Black;          
          
          color:Red;
        /*color: rgb(127,234,217);
        color: linear-gradient(0deg, rgba(127,234,217,1) 0%, rgba(240,255,253,1) 100%);*/
               
        border-radius:5px;
        /*box-shadow: 0px 0px 0px 3px #1bae9a; 
        
        transition: box-shadow 0.6s linear; 
        margin: 0.5em; */
        
       
    }
    
    
    .button-style:hover  
    {
        /*color: rgb(127,234,217);
        color: linear-gradient(0deg, rgba(127,234,217,1) 0%, rgba(240,255,253,1) 100%);
        box-shadow: 0px 0px 0px 5px #1bae9a;   */
        box-shadow: 3px 3px 3px Red; 
        transition: box-shadow 0.6s linear; 
    } 
    
    .link-label-style
    {
        text-decoration:none;
        
        display:block;  
        
          
    }
  .link-label-style:hover
    {
        text-decoration:underline; 
        
        display:block;
        
    }
    
    
     ffimg 
       {
            
             background-color:#20b2aa;
             width:950px;
               
           
       }
       
        .i
       {
            width:950px;
            border:1px solid purple;
           border-radius:5px;
           height:132px;
          
       }
      
            
             .style1
             {
                 margin-left: 40px;
             }
      
            
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <br />
        <div class="header">
                  <div class="ffimg" align="center">         
                 <a href="Pre_Login_Home_Page.aspx"> <img  alt="OK"  class="i" src="Images/bca.png" align="middle" /></a>                 
                   </div></div>
      
    
    </div>

   <%-- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Italic="True" 
                Font-Size="30pt" Font-Underline="False" Text="College Management System" 
                CssClass="label1-style"></asp:Label>
            <ajaxToolkit:RoundedCornersExtender ID="Label6_RoundedCornersExtender" 
        runat="server" BehaviorID="Label6_RoundedCornersExtender" Radius="8" 
        TargetControlID="Label6" />
    <ajaxToolkit:DropShadowExtender ID="Label6_DropShadowExtender" runat="server" 
        BehaviorID="Label6_DropShadowExtender" TargetControlID="Label6" />--%>

    <div class="panel" align="center">
        
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;<asp:Panel ID="Panel1" runat="server" Height="770px" Width="775px" 
                CssClass="panel-style">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
           <%-- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--%>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" 
                Font-Size="25pt" Font-Underline="False" Text="Forgot Password" 
                CssClass="label1-style"></asp:Label>
            <ajaxToolkit:RoundedCornersExtender ID="Label1_RoundedCornersExtender" 
                runat="server" BehaviorID="Label1_RoundedCornersExtender" 
                TargetControlID="Label1" />
            <ajaxToolkit:DropShadowExtender ID="Label1_DropShadowExtender" runat="server" 
                BehaviorID="Label1_DropShadowExtender" TargetControlID="Label1" />
                <br />
                <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
                <asp:Panel ID="Panel2" runat="server">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label16" runat="server" CssClass="label-style" 
                        Text="Select Authentication Type :"></asp:Label>
                    &nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                        CssClass="dropdown-style" Height="25px" Width="300px">
                        <asp:ListItem>Via Security Question</asp:ListItem>
                        <asp:ListItem>Via E-mail Verification</asp:ListItem>
                    </asp:DropDownList>
                    <ajaxToolkit:RoundedCornersExtender ID="DropDownList1_RoundedCornersExtender" 
                        runat="server" BehaviorID="DropDownList1_RoundedCornersExtender" 
                        TargetControlID="DropDownList1" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:Panel>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />

                <asp:Panel ID="Panel3" runat="server" Height="213px" >
                    <p class="style1">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label14" runat="server" CssClass="label-style" 
                            Text="Security Question :"></asp:Label>
                        &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" CssClass="textbox-style" 
                            Height="25px" ReadOnly="True" Width="300px"></asp:TextBox>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label15" runat="server" CssClass="label-style" 
                            Text="Enter Your Answer :"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox-style" 
                            Height="25px" Width="300px"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="TextBox2" CssClass="validation-style" Display="Dynamic" 
                            ErrorMessage="* Security Answer Required." SetFocusOnError="True" 
                            ValidationGroup="secq"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                        <br />
                        &nbsp;&nbsp;
                        <asp:Button ID="Button6" runat="server" BorderColor="Red" BorderStyle="Inset" 
                            BorderWidth="3px" CssClass="button-style" Font-Bold="True" Font-Italic="True" 
                            Height="30px" onclick="Button6_Click" Text="Verify Answer" 
                            ValidationGroup="secq" Width="100px" />
                    </p>
                </asp:Panel>
                &nbsp;&nbsp;&nbsp;&nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                <asp:Panel ID="Panel4" runat="server" Height="279px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label11" runat="server" CssClass="label-style" 
                        Text="Enter E-Mail :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="300px" TextMode="Email"></asp:TextBox>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator 
                        ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" 
                        CssClass="validation-style" Display="Dynamic" ErrorMessage="* E-Mail Required." 
                        SetFocusOnError="True" ValidationGroup="sndcode"></asp:RequiredFieldValidator>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBox3" CssClass="validation-style" 
                        ErrorMessage="* Please Enter Valid E-mail.." SetFocusOnError="True" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                        ValidationGroup="sndcode"></asp:RegularExpressionValidator>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button3" 
                        runat="server" CssClass="button-style" Font-Bold="True" Font-Italic="True" 
                        Height="30px" onclick="Button3_Click" Text="Send Code" 
                        ValidationGroup="sndcode" Width="100px" BorderColor="Red" 
                        BorderStyle="Inset" BorderWidth="3px" />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label13" runat="server" CssClass="label-style" 
                        Text="Enter Verification Code :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="300px"></asp:TextBox>
                    &nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBox4" CssClass="validation-style" Display="Dynamic" 
                        ErrorMessage="* Verification Code Required." SetFocusOnError="True" 
                        ValidationGroup="vcode"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
                        ID="Button4" runat="server" CssClass="button-style" 
                        Font-Bold="True" Font-Italic="True" Height="30px" onclick="Button4_Click" 
                        Text="Verify Code" Width="100px" ValidationGroup="vcode" BorderColor="Red" 
                        BorderStyle="Inset" BorderWidth="3px" />
                </asp:Panel>
                <br />
                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                    CssClass="link-label-style" onclick="LinkButton1_Click">Go Back to Log in</asp:LinkButton>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label7" runat="server" 
                    Text="Label"></asp:Label>
                <br />
&nbsp;<asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <br />
                <br />
            <br />
            <br />
        </asp:Panel>
        
      
    
    </div>
    
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
