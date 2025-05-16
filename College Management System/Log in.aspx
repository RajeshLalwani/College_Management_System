<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Log in.aspx.cs" Inherits="Log_in" %>

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
            background-image:url("Images/BACKGROUND/light-effect-3d-background-template-for-powerpoint-13.jpg");
            height: 100%;
  /* Center and scale the image nicely */
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;

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
            box-shadow: 5px 5px 5px 5px Black; 
            transition: box-shadow 0.6s linear; 
            
            /* background-image:url("Images/BACKGROUND/light-effect-3d-background-template-for-powerpoint-13.jpg");   
            height: 100%;
  
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;*/
            /*background:linear-gradient(to bottom right, #E0FFFF,  #00FFFF, #E0FFFF );
            background: rgb(127,234,217);*/
            
            
            margin: 10px 100px 50px 100px;
            
           /* border: 3px solid green;*/ 
            padding: 20px;  
           
        }
        
        .label1-style
        {
            /*background: linear-gradient(to right, red, aqua,red);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent; */
            
            background-color:transparent;
            color: rgb(127,234,217);
            color: linear-gradient(180deg, rgba(127,234,217,1) 0%, rgba(240,255,253,1) 100%);               
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
             color:#00022e;
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
             border-radius:5px;
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
        background:#00072D;          
        color:#a1a5ff;
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
        box-shadow: 5px 5px 5px Black; 
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
      
            
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>

     
        <br />
        <div class="header">
                  <div class="ffimg" align="center">         
                 <a href="Pre_Login_Home_Page.aspx"> <img  alt="OK"  class="i" src="Images/bca.png" align="middle" /></a>                 
                   </div></div>
      
    
    </div>

   <%-- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;--%>
           <%-- <center>
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Italic="True" 
                Font-Size="30pt" Font-Underline="False" Text="College Management System" 
                CssClass="label1-style"></asp:Label></center>
            <ajaxToolkit:RoundedCornersExtender ID="Label6_RoundedCornersExtender" 
        runat="server" BehaviorID="Label6_RoundedCornersExtender" Radius="8" 
        TargetControlID="Label6" />
    <ajaxToolkit:DropShadowExtender ID="Label6_DropShadowExtender" runat="server" 
        BehaviorID="Label6_DropShadowExtender" TargetControlID="Label6" />--%>

    <div class="panel" align="center">
        
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;<asp:Panel ID="Panel1" runat="server" Height="487px" Width="750px" 
                CssClass="panel-style">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <%--&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--%>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" 
                Font-Size="25pt" Font-Underline="False" Text="     Log In     " 
                CssClass="label1-style"></asp:Label>
            <ajaxToolkit:RoundedCornersExtender ID="Label1_RoundedCornersExtender" 
                runat="server" BehaviorID="Label1_RoundedCornersExtender" 
                TargetControlID="Label1" />
            <ajaxToolkit:DropShadowExtender ID="Label1_DropShadowExtender" runat="server" 
                BehaviorID="Label1_DropShadowExtender" TargetControlID="Label1" />
            <br />
            <br />
            <br />
            <%--&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--%>
            <asp:Label ID="Label2" runat="server" CssClass="label-style" 
                Text="Enter User Name&nbsp; :&nbsp;"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="300px" 
                    CssClass="textbox-style" TextMode="Number"></asp:TextBox>
                <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="* User Name Required." 
                SetFocusOnError="True" CssClass="validation-style" Display="Dynamic" 
                    ValidationGroup="sbmt"></asp:RequiredFieldValidator>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox1" CssClass="validation-style" 
                    ErrorMessage="* User Name Required." SetFocusOnError="True" 
                    ValidationGroup="forgotpsd"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
                    ControlToValidate="TextBox1" CssClass="validation-style" 
                    ErrorMessage="* Please Enter Numbers Only" SetFocusOnError="True" 
                    ValidationExpression="\d+" ValidationGroup="Apply"></asp:RegularExpressionValidator>
            <br />
            <%--&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--%>
            <asp:Label ID="Label3" runat="server" CssClass="label-style" 
                Text="Enter Password&nbsp; :"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="300px" 
                    CssClass="textbox-style" TextMode="Password"></asp:TextBox>
                <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="* Password Required." 
                SetFocusOnError="True" CssClass="validation-style" Display="Dynamic" 
                    ValidationGroup="sbmt"></asp:RequiredFieldValidator>
            <br />
            <br />
            <br />
            <%--&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--%>
            <asp:Label ID="Label5" runat="server" CssClass="label-style" 
                Text="Select User Type&nbsp; :"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                CssClass="dropdown-style" Height="25px" Width="300px">
                <asp:ListItem>Admin</asp:ListItem>
               <%-- <asp:ListItem>Staff</asp:ListItem>--%>
                <asp:ListItem>Student</asp:ListItem>
            </asp:DropDownList>
                <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="DropDownList1" CssClass="validation-style" 
                ErrorMessage="* Please Select User Type.." SetFocusOnError="True" 
                    Display="Dynamic" ValidationGroup="sbmt"></asp:RequiredFieldValidator>
            <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="DropDownList1" CssClass="validation-style" 
                    ErrorMessage="* Please Select User Type.." SetFocusOnError="True" 
                    ValidationGroup="forgotpsd"></asp:RequiredFieldValidator>
                <br />
                <%--&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--%>
                <asp:CheckBox ID="CheckBox1" runat="server" CssClass="label-style" 
                    Text="Remember Me" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                <br />
                <%--&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--%>
            <asp:Button ID="Button1" runat="server" 
    Font-Bold="True" Font-Italic="True" Height="30px" 
    onclick="Button1_Click" Text="Submit" Width="100px" CssClass="button-style" 
                    ValidationGroup="sbmt"/>
                <ajaxToolkit:AnimationExtender ID="Button1_AnimationExtender" runat="server" 
                    BehaviorID="Button1_AnimationExtender" TargetControlID="Button1">
                </ajaxToolkit:AnimationExtender>
            <ajaxToolkit:RoundedCornersExtender ID="Button1_RoundedCornersExtender" 
                runat="server" BehaviorID="Button1_RoundedCornersExtender" 
                TargetControlID="Button1" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" 
    Font-Bold="True" Font-Italic="True" Height="30px" 
    onclick="Button2_Click" Text="Cancel" Width="100px" CssClass="button-style" 
                    CausesValidation="False" />
            <ajaxToolkit:RoundedCornersExtender ID="Button2_RoundedCornersExtender" 
                runat="server" BehaviorID="Button2_RoundedCornersExtender" 
                TargetControlID="Button2" />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <%--&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--%>
                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
                    ForeColor="#00022E" ValidationGroup="forgotpsd" 
                    CssClass="link-label-style">Forgot Password ?</asp:LinkButton>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
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
