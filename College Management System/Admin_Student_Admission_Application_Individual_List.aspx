<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_MasterPage.master" AutoEventWireup="true" CodeFile="Admin_Student_Admission_Application_Individual_List.aspx.cs" Inherits="Admin_Student_Admission_Application_Individual_List" %>

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
    
 <%--   <style>

        
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
        box-shadow: 5px 5px 5px #333333; 
        transition: box-shadow 0.6s linear; 
    } 
    
      .dbutton-style
    {
        
         background: rgb(127,234,217);
                background: linear-gradient(0deg, rgba(127,234,217,1) 0%, rgba(240,255,253,1) 100%);               
                box-shadow: 0px 0px 0px 3px white;        
                transition: box-shadow 0.6s linear;
          
        /*color: rgb(127,234,217);
        color: linear-gradient(0deg, rgba(127,234,217,1) 0%, rgba(240,255,253,1) 100%);
          */
          color:#1bae9a;     
        box-shadow: 0px 0px 0px 3px #1bae9a;
        
        transition: box-shadow 0.6s linear; 
        margin: 0.5em 0.5em 0.5em 0em;
        }
    
    
    .dbutton-style:hover  
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
        <asp:Label ID="Label146" runat="server" Text="Admission No.  : "></asp:Label>
        <asp:Label ID="Label147" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label148" runat="server" Text="Admission Date : "></asp:Label>
&nbsp;<asp:Label ID="Label149" runat="server" Text="Label"></asp:Label>
        <br />&nbsp;&nbsp;&nbsp;
    
   
<title>Student Registration Form</title>&nbsp;<body>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label 
                ID="Label1" runat="server" Text="New Students Admission Applications" 
                CssClass="heading-style" Height="35px"></asp:Label>
            <ajaxToolkit:RoundedCornersExtender ID="Label1_RoundedCornersExtender" 
                runat="server" BehaviorID="Label1_RoundedCornersExtender" 
                TargetControlID="Label1" />
            <ajaxToolkit:DropShadowExtender ID="Label1_DropShadowExtender" runat="server" 
                BehaviorID="Label1_DropShadowExtender" TargetControlID="Label1" />
            <br />
            <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label2" runat="server" 
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
            <asp:Panel ID="Panel2" runat="server" CssClass="panel-style" Height="6347px" 
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
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image3" runat="server" Height="200px" ImageAlign="Middle" 
                    Width="200px" />
                <br />
                <br />
                <asp:Label ID="Label155" runat="server" CssClass="label-style" 
                    Text="Application No. :"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox72" runat="server" CssClass="textbox-style" 
                    Height="25px" PlaceHolder="Enter Your First Name" Width="400px" 
                    ReadOnly="True"></asp:TextBox>
                <br />
                <asp:Label ID="Label156" runat="server" CssClass="label-style" 
                    Text="Application Date :"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox73" runat="server" CssClass="textbox-style" 
                    Height="25px" PlaceHolder="Enter Your First Name" Width="400px" 
                    ReadOnly="True"></asp:TextBox>
                <br />
                <br />
                <html>
                <body>
                <body>
                <asp:Label ID="Label12" runat="server" CssClass="label-style" 
                    Text="Salutation  : "></asp:Label>
                </body>
                </body>
                </html>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList1" 
                    runat="server" CssClass="textbox-style" Height="25px" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged" Width="400px">
                    <asp:ListItem>Mr.</asp:ListItem>
                    <asp:ListItem>Ms.</asp:ListItem>
                    <asp:ListItem>Mrs.</asp:ListItem>
                </asp:DropDownList>
                <br />
                <asp:Label ID="Label4" runat="server" CssClass="label-style" 
                    Text="First Name :"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox-style" 
                    Height="25px" Width="400px" PlaceHolder="Enter Your First Name" 
                    ReadOnly="True"></asp:TextBox>
                <br />
                <asp:Label ID="Label13" runat="server" CssClass="label-style" 
                    Text="Middle Name :"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox-style" 
                    Height="25px" PlaceHolder="Enter Your Middle Name" Width="400px" 
                    ReadOnly="True"></asp:TextBox>
                <br />
                <asp:Label ID="Label14" runat="server" CssClass="label-style" 
                    Text="Last Name :"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox3" runat="server" CssClass="textbox-style" 
                    Height="25px" PlaceHolder="Enter Your Last Name" Width="400px" 
                    ReadOnly="True"></asp:TextBox>
                <br />
                <asp:Label ID="Label7" runat="server" CssClass="label-style" 
                    Text="Date Of Birth :"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox4" runat="server" CssClass="textbox-style" 
                    Height="25px" ontextchanged="TextBox4_TextChanged" TextMode="Date" 
                    Width="400px" ReadOnly="True"></asp:TextBox>
                <br />
                <asp:Label ID="Label21" runat="server" CssClass="label-style" 
                    Text="Blood Group :"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="textbox-style" 
                    Height="25px" onselectedindexchanged="DropDownList2_SelectedIndexChanged" 
                    Width="400px">
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
                <asp:Label ID="Label8" runat="server" CssClass="label-style" Text="E-mail  :"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:TextBox ID="TextBox5" runat="server" CssClass="textbox-style" 
                    Height="25px" PlaceHolder="Enter Your E-Mail" Width="400px" 
                    ReadOnly="True"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label9" runat="server" CssClass="label-style" 
                    Text="Mobile Number :"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox7" runat="server" CssClass="textbox-style" 
                    Height="25px" PlaceHolder="Enter Your Mobile Number" Width="400px" 
                    ReadOnly="True"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label10" runat="server" CssClass="label-style" Text="Gender :"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton1" runat="server" CssClass="textbox-style" 
                    GroupName="gender" Text="Male" />
                <asp:RadioButton ID="RadioButton2" runat="server" CssClass="textbox-style" 
                    GroupName="gender" Text="Female" />
                <asp:RadioButton ID="RadioButton3" runat="server" CssClass="textbox-style" 
                    GroupName="gender" Text="Other" />
                <br />
                &nbsp;&nbsp;
                <br />
                <asp:Label ID="Label11" runat="server" CssClass="label-style" 
                    Text="Marital Status :"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton4" runat="server" CssClass="textbox-style" 
                    GroupName="marital" Text="Single" />
                <asp:RadioButton ID="RadioButton5" runat="server" CssClass="textbox-style" 
                    GroupName="marital" Text="Married" />
                &nbsp;&nbsp;
                <br />
                <br />
                <asp:Label ID="Label15" runat="server" CssClass="label-style" Text="Religion :"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox8" runat="server" CssClass="textbox-style" 
                    Height="25px" PlaceHolder="Enter Your Religion" Width="400px" 
                    ReadOnly="True"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label16" runat="server" CssClass="label-style" 
                    Text="Caste Category :"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton6" runat="server" CssClass="textbox-style" 
                    GroupName="caste" Text="General" />
                <asp:RadioButton ID="RadioButton7" runat="server" CssClass="textbox-style" 
                    GroupName="caste" Text="SC" />
                <asp:RadioButton ID="RadioButton8" runat="server" CssClass="textbox-style" 
                    GroupName="caste" Text="ST" />
                <asp:RadioButton ID="RadioButton9" runat="server" CssClass="textbox-style" 
                    GroupName="caste" Text="OBC" />
                <asp:RadioButton ID="RadioButton10" runat="server" CssClass="textbox-style" 
                    GroupName="caste" Text="OTHER" />
                <br />
                <br />
                <asp:Label ID="Label17" runat="server" CssClass="label-style" 
                    Text="Father's / Spouse's Name :"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox9" runat="server" CssClass="textbox-style" 
                    Height="25px" PlaceHolder="Enter Your Father's / Spouse's Name" 
                    Width="400px" ReadOnly="True"></asp:TextBox>
                <br />
                <asp:Label ID="Label22" runat="server" CssClass="label-style" 
                    Text="Contact No.  :"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox10" runat="server" CssClass="textbox-style" 
                    Height="25px" PlaceHolder="Enter Your Father's / Spouse's Contact No." 
                    Width="400px" ReadOnly="True"></asp:TextBox>
                <br />
                <asp:Label ID="Label18" runat="server" CssClass="label-style" 
                    Text="Mother's  Name :"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox11" runat="server" CssClass="textbox-style" 
                    Height="25px" PlaceHolder="Enter Your Mother's  Name" Width="400px" 
                    ReadOnly="True"></asp:TextBox>
                <br />
                <asp:Label ID="Label23" runat="server" CssClass="label-style" 
                    Text="Contact No.  :"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox12" runat="server" CssClass="textbox-style" 
                    Height="25px" PlaceHolder="Enter Your Mother's Contact No." Width="400px" 
                    ReadOnly="True"></asp:TextBox>
                <br />
                <asp:Label ID="Label19" runat="server" CssClass="label-style" 
                    Text="Occupation of Father / Spouse :"></asp:Label>
                &nbsp;<asp:TextBox ID="TextBox13" runat="server" CssClass="textbox-style" 
                    Height="25px" PlaceHolder="Enter Occupation of Your Father / Spouse " 
                    Width="400px" ReadOnly="True"></asp:TextBox>
                <br />
                <asp:Label ID="Label20" runat="server" CssClass="label-style" 
                    Text="Annual Income :"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
                    ID="TextBox14" runat="server" 
                    CssClass="textbox-style" Height="25px" 
                    PlaceHolder="Enter Your Family's Annual Income " Width="400px" 
                    ReadOnly="True"></asp:TextBox>
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
                    TextMode="MultiLine" Width="400px" ReadOnly="True"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label30" runat="server" CssClass="label-style" Text="City :"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                <asp:TextBox ID="TextBox16" runat="server" CssClass="textbox-style" 
                    Height="25px" PlaceHolder="Enter City" Width="400px" ReadOnly="True"></asp:TextBox>
                <br />
                <asp:Label ID="Label31" runat="server" CssClass="label-style" Text="Pin Code :"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox17" runat="server" CssClass="textbox-style" 
                    Height="25px" Width="400px" PlaceHolder="Enter Pin Code (Upto 6 Digits)" 
                    ReadOnly="True"></asp:TextBox>
                <br />
                <asp:Label ID="Label32" runat="server" CssClass="label-style" Text="State :"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox18" runat="server" CssClass="textbox-style" 
                    Height="25px" Width="400px" PlaceHolder="Enter State" ReadOnly="True"></asp:TextBox>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
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
                    Height="112px" TextMode="MultiLine" Width="400px" 
                    PlaceHolder="Enter Your Permanent Address" ReadOnly="True"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label36" runat="server" CssClass="label-style" Text="City :"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox20" runat="server" CssClass="textbox-style" 
                    Height="25px" Width="400px" PlaceHolder="Enter City" ReadOnly="True"></asp:TextBox>
                <br />
                <asp:Label ID="Label37" runat="server" CssClass="label-style" Text="Pin Code :"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox21" runat="server" CssClass="textbox-style" 
                    Height="25px" Width="400px" PlaceHolder="Enter Pin Code (Upto 6 Digits)" 
                    ReadOnly="True"></asp:TextBox>
                <br />
                <asp:Label ID="Label38" runat="server" CssClass="label-style" Text="State :"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox22" runat="server" CssClass="textbox-style" 
                    Height="25px" Width="400px" PlaceHolder="Enter State" ReadOnly="True"></asp:TextBox>
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
                    <asp:ListItem>BCA</asp:ListItem>
                    <asp:ListItem>B.voc</asp:ListItem>
                    <asp:ListItem>Bsc</asp:ListItem>
                    <asp:ListItem>Bsc IT</asp:ListItem>
                </asp:DropDownList>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:DropDownList ID="DropDownList5" runat="server" 
                    AutoPostBack="True" CssClass="textbox-style" Height="25px" 
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
                <asp:Panel ID="Panel3" runat="server" Height="808px">
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
                        Height="25px" Width="400px" PlaceHolder="Enter Name of School (Std 10)" 
                        ReadOnly="True"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label46" runat="server" CssClass="label-style" 
                        Text="Name of Board  :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox24" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px" PlaceHolder="Enter Name of Board (Std 10)" 
                        ReadOnly="True"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label47" runat="server" CssClass="label-style" Text="City :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox25" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px" PlaceHolder="Enter Name of City (Std 10)" 
                        ReadOnly="True"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label48" runat="server" CssClass="label-style" 
                        Text="Medium of Instruction :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
                        ID="TextBox26" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px" 
                        PlaceHolder="Enter Medium of Instruction (Std 10)" ReadOnly="True"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label49" runat="server" CssClass="label-style" 
                        Text="Year of Passing :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox27" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px" PlaceHolder="Enter Year of Passing (Std 10)" 
                        ReadOnly="True"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label50" runat="server" CssClass="label-style" 
                        Text="Percentage :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox28" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px" PlaceHolder="Enter Percentage (Std 10)" 
                        ReadOnly="True"></asp:TextBox>
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
                        Height="25px" Width="400px" PlaceHolder="Enter Name of School (Std 12)" 
                        ReadOnly="True"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label72" runat="server" CssClass="label-style" 
                        Text="Name of Board  :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox30" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px" PlaceHolder="Enter Name of Board (Std 12)" 
                        ReadOnly="True"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label73" runat="server" CssClass="label-style" Text="City :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox31" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px" PlaceHolder="Enter Name of City (Std 12)" 
                        ReadOnly="True"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label74" runat="server" CssClass="label-style" 
                        Text="Medium of Instruction :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
                        ID="TextBox32" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px" 
                        PlaceHolder="Enter Medium of Instruction (Std 12)" ReadOnly="True"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label75" runat="server" CssClass="label-style" 
                        Text="Year of Passing :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox33" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px" PlaceHolder="Enter Year of Passing (Std 12)" 
                        ReadOnly="True"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label76" runat="server" CssClass="label-style" 
                        Text=" Stream / Discipline :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
                        ID="TextBox34" runat="server" 
                        CssClass="textbox-style" Height="25px" Width="400px" 
                        PlaceHolder="Enter Stream / Discipline (Std 12)" ReadOnly="True"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;<br />
                    <asp:Label ID="Label80" runat="server" CssClass="label-style" 
                        Text="Percentage :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox35" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px" PlaceHolder="Enter Percentage (Std 12)" 
                        ReadOnly="True"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <%--<asp:Image ID="Image2" runat="server" Height="200px" ImageAlign="Middle" 
                    Width="200px" />--%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                </asp:Panel>
                <br />
                <asp:Panel ID="Panel4" runat="server" Height="324px">
                    <asp:Label ID="Label140" runat="server" CssClass="heading-style" 
                        Text="Graduation Details "></asp:Label>
                    <ajaxToolkit:RoundedCornersExtender ID="Label140_RoundedCornersExtender0" 
                        runat="server" BehaviorID="Label140_RoundedCornersExtender" 
                        TargetControlID="Label140" />
                    <ajaxToolkit:DropShadowExtender ID="Label140_DropShadowExtender0" runat="server" 
                        BehaviorID="Label140_DropShadowExtender" TargetControlID="Label140" />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label81" runat="server" CssClass="sub-heading-style" 
                        Text="Semester 1 Details "></asp:Label>
                    <ajaxToolkit:RoundedCornersExtender ID="Label81_RoundedCornersExtender0" 
                        runat="server" BehaviorID="Label81_RoundedCornersExtender" 
                        TargetControlID="Label81" />
                    <ajaxToolkit:DropShadowExtender ID="Label81_DropShadowExtender0" runat="server" 
                        BehaviorID="Label81_DropShadowExtender" TargetControlID="Label81" />
                    <br />
                    <br />
                    <asp:Label ID="Label82" runat="server" CssClass="label-style" 
                        Text="Name of College :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox36" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px" 
                        PlaceHolder="Enter Name of College (Semester 1)" ReadOnly="True"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label83" runat="server" CssClass="label-style" 
                        Text="Name of University  :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;<asp:TextBox 
                        ID="TextBox37" runat="server" 
                        CssClass="textbox-style" Height="25px" Width="400px" 
                        PlaceHolder="Enter Name of University (Semester 1)" ReadOnly="True"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label84" runat="server" CssClass="label-style" Text="City :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox38" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px" PlaceHolder="Enter Name of City (Semester 1)" 
                        ReadOnly="True"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <asp:Label ID="Label86" runat="server" CssClass="label-style" 
                        Text="Year of Passing :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox40" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px" 
                        PlaceHolder="Enter Year of Passing (Semester 1)" ReadOnly="True"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label87" runat="server" CssClass="label-style" 
                        Text="Percentage / GPA  :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox41" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px" 
                        PlaceHolder="Enter Percentage / GPA (Semester 1)" ReadOnly="True"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%--<asp:Image ID="Image2" runat="server" Height="200px" ImageAlign="Middle" 
                    Width="200px" />--%><br /><br /><br /><br /><br /><br /><br /></asp:Panel>
                <br />
                <asp:Panel ID="Panel5" runat="server" Height="272px">
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
                        Height="25px" Width="400px" 
                        PlaceHolder="Enter Name of College (Semester 2)" ReadOnly="True"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label94" runat="server" CssClass="label-style" 
                        Text="Name of University  :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:TextBox 
                        ID="TextBox44" runat="server" 
                        CssClass="textbox-style" Height="25px" Width="400px" 
                        PlaceHolder="Enter Name of University (Semester 2)" ReadOnly="True"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label95" runat="server" CssClass="label-style" Text="City :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:TextBox ID="TextBox45" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px" PlaceHolder="Enter Name of City (Semester 2)" 
                        ReadOnly="True"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <asp:Label ID="Label97" runat="server" CssClass="label-style" 
                        Text="Year of Passing :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:TextBox ID="TextBox47" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px" 
                        PlaceHolder="Enter Year of Passing (Semester 2)" ReadOnly="True"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label98" runat="server" CssClass="label-style" 
                        Text="Percentage / GPA  :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
                        ID="TextBox48" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px" 
                        PlaceHolder="Enter Percentage / GPA (Semester 2)" ReadOnly="True"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%--<asp:Image ID="Image2" runat="server" Height="200px" ImageAlign="Middle" 
                    Width="200px" />--%><br /><br /><br /><br /><br /><br /><br /><br /><br /></asp:Panel>
                <br />
                <br />
                <asp:Panel ID="Panel6" runat="server" Height="274px">
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
                        Height="25px" Width="400px" 
                        PlaceHolder="Enter Name of College (Semester 3)" ReadOnly="True"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label105" runat="server" CssClass="label-style" 
                        Text="Name of University  :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;<asp:TextBox 
                        ID="TextBox51" runat="server" 
                        CssClass="textbox-style" Height="25px" Width="400px" 
                        PlaceHolder="Enter Name of University (Semester 3)" ReadOnly="True"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label106" runat="server" CssClass="label-style" Text="City :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox52" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px" PlaceHolder="Enter Name of City (Semester 3)" 
                        ReadOnly="True"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label108" runat="server" CssClass="label-style" 
                        Text="Year of Passing :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox54" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px" 
                        PlaceHolder="Enter Year of Passing (Semester 3)" ReadOnly="True"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label109" runat="server" CssClass="label-style" 
                        Text="Percentage / GPA  :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:TextBox ID="TextBox55" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px" 
                        PlaceHolder="Enter Percentage / GPA (Semester 3)" ReadOnly="True"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
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
                <asp:Panel ID="Panel7" runat="server" Height="274px">
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
                        Height="25px" Width="400px" 
                        PlaceHolder="Enter Name of College (Semester 4)" ReadOnly="True"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label116" runat="server" CssClass="label-style" 
                        Text="Name of University  :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;<asp:TextBox 
                        ID="TextBox58" runat="server" 
                        CssClass="textbox-style" Height="25px" Width="400px" 
                        PlaceHolder="Enter Name of University (Semester 4)" ReadOnly="True"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label117" runat="server" CssClass="label-style" Text="City :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox59" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px" PlaceHolder="Enter Name of City (Semester 4)" 
                        ReadOnly="True"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label119" runat="server" CssClass="label-style" 
                        Text="Year of Passing :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:TextBox ID="TextBox61" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px" 
                        PlaceHolder="Enter Year of Passing (Semester 4)" ReadOnly="True"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label120" runat="server" CssClass="label-style" 
                        Text="Percentage / GPA  :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox62" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px" 
                        PlaceHolder="Enter Percentage / GPA (Semester 4)" ReadOnly="True"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
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
                <asp:Panel ID="Panel8" runat="server" Height="272px">
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
                        Height="25px" Width="400px" 
                        PlaceHolder="Enter Name of College (Semester 5)" ReadOnly="True"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label127" runat="server" CssClass="label-style" 
                        Text="Name of University  :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;<asp:TextBox 
                        ID="TextBox65" runat="server" 
                        CssClass="textbox-style" Height="25px" Width="400px" 
                        PlaceHolder="Enter Name of University (Semester 5)" ReadOnly="True"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label128" runat="server" CssClass="label-style" Text="City :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox66" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px" PlaceHolder="Enter Name of City (Semester 5)" 
                        ReadOnly="True"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <asp:Label ID="Label130" runat="server" CssClass="label-style" 
                        Text="Year of Passing :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;
                    <asp:TextBox ID="TextBox68" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px" 
                        PlaceHolder="Enter Year of Passing (Semester 5)" ReadOnly="True"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label131" runat="server" CssClass="label-style" 
                        Text="Percentage / GPA  :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox69" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px" 
                        PlaceHolder="Enter Percentage / GPA (Semester 5)" ReadOnly="True"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%--<asp:Image ID="Image2" runat="server" Height="200px" ImageAlign="Middle" 
                    Width="200px" />--%><br /><br /><br /><br /><br /><br /><br /><br /><br /></asp:Panel>
                <br />
                <asp:Panel ID="Panel10" runat="server" Height="208px">
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
                    <%--<asp:Label ID="Label143" runat="server" CssClass="label-style" 
                        Text="Select Security Question  :"></asp:Label>--%>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<%--<asp:DropDownList ID="DropDownList6" runat="server" AutoPostBack="True" 
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
                    </asp:DropDownList>--%>&nbsp;&nbsp;&nbsp;<br />
                    <asp:Panel ID="Panel11" runat="server">
                        <asp:Label ID="Label144" runat="server" CssClass="label-style" 
                            Text="Enter Security Question  :"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox70" runat="server" CssClass="textbox-style" 
                            Height="25px" PlaceHolder="Enter Security Question" ReadOnly="True" 
                            Width="400px"></asp:TextBox>
                    </asp:Panel>
                    <br />
                    <asp:Label ID="Label145" runat="server" CssClass="label-style" 
                        Text="Enter Security Answer  :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:TextBox ID="TextBox71" runat="server" CssClass="textbox-style" 
                        Height="25px" Width="400px" PlaceHolder="Enter Security Answer" 
                        ReadOnly="True"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                </asp:Panel>
                <br />
                <asp:Panel ID="Panel13" runat="server" Height="152px">
                    <asp:Label ID="Label67" runat="server" CssClass="label-style" 
                        Text="View Class X Marksheet :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;<%--<asp:FileUpload ID="FileUpload2" runat="server" CssClass="button-style" 
                        Height="25px" Width="400px" />--%><asp:Button ID="Button14" runat="server" 
                        CssClass="dbutton-style" Text="View Class X MarkSheet" 
                        onclick="Button14_Click" Height="30px" />
                    <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <%--<asp:Button ID="Button4" runat="server" CssClass="button-style" Height="33px" 
                        onclick="Button4_Click" Text="Upload" Width="97px" />--%>
                    <br />
                    <%--<asp:Label ID="Label68" runat="server" Text="Label"></asp:Label>--%>
                    <%--<asp:Label ID="Label69" runat="server" Text="Label"></asp:Label>--%>
                    <br />
                    <asp:Label ID="Label77" runat="server" CssClass="label-style" 
                        Text="View Class XII Marksheet :"></asp:Label>
                    &nbsp;<%--<asp:FileUpload ID="FileUpload3" runat="server" CssClass="button-style" 
                        Height="25px" Width="400px" />--%><asp:Button ID="Button15" runat="server" 
                        CssClass="dbutton-style" Text="View Class XII MarkSheet" 
                        onclick="Button15_Click" Height="30px" />
                    <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                  
                    <br />
                </asp:Panel>
                <br />
                <asp:Panel ID="Panel14" runat="server" Height="66px">
                    <asp:Label ID="Label89" runat="server" CssClass="label-style" 
                        Text="View Semester 1 Marksheet :"></asp:Label>
                   
                    <asp:Button ID="Button16" runat="server" CssClass="dbutton-style" 
                        onclick="Button16_Click" Text="View Semester 1 MarkSheet" Height="30px" />
                   
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                  
                    <br />
                    <br />
                </asp:Panel>
                <br />
                <asp:Panel ID="Panel15" runat="server" Height="56px">
                    <asp:Label ID="Label100" runat="server" CssClass="label-style" 
                        Text="View Semester 2 Marksheet :"></asp:Label>
                    &nbsp;<asp:Button ID="Button17" runat="server" CssClass="dbutton-style" 
                        onclick="Button17_Click" Text="View Semester 2 MarkSheet" Height="30px" />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                 
                    <br />
                    <br />
                </asp:Panel>
                <br />
                <asp:Panel ID="Panel16" runat="server" Height="63px">
                    <asp:Label ID="Label111" runat="server" CssClass="label-style" 
                        Text="View Semester 3 Marksheet :"></asp:Label>
                    &nbsp;<asp:Button ID="Button18" runat="server" CssClass="dbutton-style" 
                        onclick="Button18_Click" Text="View Semester 3 MarkSheet" Height="30px" />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <%--<asp:Button ID="Button8" runat="server" CssClass="button-style" Height="33px" 
                        onclick="Button8_Click" Text="Upload" Width="97px" />--%>
                    <br />
                    <br />
                </asp:Panel>
                <br />
                <asp:Panel ID="Panel17" runat="server" Height="68px">
                    <asp:Label ID="Label122" runat="server" CssClass="label-style" 
                        Text="View Semester 4 Marksheet :"></asp:Label>
                    &nbsp;<asp:Button ID="Button19" runat="server" CssClass="dbutton-style" 
                        onclick="Button19_Click" Text="View Semester 4 MarkSheet" Height="30px" />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <%--<asp:Button ID="Button9" runat="server" CssClass="button-style" Height="33px" 
                        onclick="Button9_Click" Text="Upload" Width="97px" />--%>
                    <br />
                    <br />
                </asp:Panel>
                <br />
                <asp:Panel ID="Panel18" runat="server" Height="68px">
                    <asp:Label ID="Label133" runat="server" CssClass="label-style" 
                        Text="View Semester 5 Marksheet :"></asp:Label>
                    &nbsp;<asp:Button ID="Button20" runat="server" CssClass="dbutton-style" 
                        onclick="Button20_Click" Text="View Semester 5 MarkSheet" Height="30px" />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <%--<asp:Button ID="Button10" runat="server" CssClass="button-style" Height="33px" 
                        onclick="Button10_Click" Text="Upload" Width="97px" />--%>
                    <br />
                    <br />
                </asp:Panel>
                <br />
                <asp:Panel ID="Panel12" runat="server" Height="370px">
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label153" runat="server" CssClass="sub-heading-style" 
                        Text="View Passport Size Photo "></asp:Label>
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
                    <br />
                    <asp:Label ID="Label151" runat="server" CssClass="label-style" 
                        Text="View Passport Size Photo : "></asp:Label>
                    &nbsp;&nbsp;
                    <asp:Button ID="Button21" runat="server" CssClass="dbutton-style" 
                        onclick="Button21_Click" Text="View Passport Size Photo" Height="30px" />
                    <br />
                    <html>
                    <body>
                    <body>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <%-- <asp:Button ID="Button1" runat="server" CssClass="button-style" Height="33px" 
                onclick="Button1_Click" Text="Upload" Width="97px" />--%>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    </body>
                    </body>
                    </html>
                </asp:Panel>
                <br />
                <asp:Panel ID="Panel9" runat="server" Height="364px">
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label136" runat="server" CssClass="sub-heading-style" 
                        Text="View Signature "></asp:Label>
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
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <asp:Label ID="Label137" runat="server" CssClass="label-style" 
                        Text="View Signature  :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button22" runat="server" CssClass="dbutton-style" 
                        onclick="Button22_Click" Text="View Signature" Height="30px" />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <%--<asp:Button ID="Button11" runat="server" CssClass="button-style" Height="33px" 
                        onclick="Button11_Click" Text="Upload" Width="97px" />--%>
                </asp:Panel>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> 
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                <asp:Panel ID="Panel19" runat="server" Height="90px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label157" runat="server" CssClass="sub-heading-style" 
                        Text="Select Student's Batch :"></asp:Label>
                    <ajaxToolkit:RoundedCornersExtender ID="Label157_RoundedCornersExtender" 
                        runat="server" BehaviorID="Label157_RoundedCornersExtender" 
                        TargetControlID="Label157" />
                    <ajaxToolkit:DropShadowExtender ID="Label157_DropShadowExtender" runat="server" 
                        BehaviorID="Label157_DropShadowExtender" TargetControlID="Label157" />
                    <br />
                    <br />
                    <asp:Label ID="Label158" runat="server" CssClass="label-style" 
                        Text="Select Batch  :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList6" runat="server" CssClass="textbox-style" 
                        Height="25px"   Width="400px">
                        <asp:ListItem>2021-2024</asp:ListItem>
                        <asp:ListItem>2022-2025</asp:ListItem>
                        <asp:ListItem>2023-2026</asp:ListItem>
                        <asp:ListItem>2024-2027</asp:ListItem>
                        <asp:ListItem>2025-2028</asp:ListItem>
                        <asp:ListItem>2026-2029</asp:ListItem>
                        <asp:ListItem>2027-2030</asp:ListItem>

                        <asp:ListItem>2028-2031</asp:ListItem>
                        <asp:ListItem>2029-2032</asp:ListItem>
                        <asp:ListItem>2030-2033</asp:ListItem>
                        <asp:ListItem>2031-2034</asp:ListItem>
                        <asp:ListItem>2032-2035</asp:ListItem>
                        <asp:ListItem>2033-2036</asp:ListItem>
                        <asp:ListItem>2034-2037</asp:ListItem>
                        <asp:ListItem>2035-2038</asp:ListItem>
                        <asp:ListItem>2036-2039</asp:ListItem>
                        <asp:ListItem>2037-2040</asp:ListItem>

                        <asp:ListItem>2038-2041</asp:ListItem>
                        <asp:ListItem>2039-2042</asp:ListItem>
                        <asp:ListItem>2040-2043</asp:ListItem>
                        <asp:ListItem>2041-2044</asp:ListItem>
                        <asp:ListItem>2042-2045</asp:ListItem>
                        <asp:ListItem>2043-2046</asp:ListItem>
                        <asp:ListItem>2044-2047</asp:ListItem>
                        <asp:ListItem>2045-2048</asp:ListItem>
                        <asp:ListItem>2046-2049</asp:ListItem>
                        <asp:ListItem>2047-2050</asp:ListItem>

                        <asp:ListItem>2048-2051</asp:ListItem>
                        <asp:ListItem>2049-2052</asp:ListItem>
                        <asp:ListItem>2050-2053</asp:ListItem>
                        <asp:ListItem>2051-2054</asp:ListItem>
                        <asp:ListItem>2052-2055</asp:ListItem>
                        <asp:ListItem>2053-2056</asp:ListItem>
                        <asp:ListItem>2054-2057</asp:ListItem>
                        <asp:ListItem>2055-2058</asp:ListItem>
                        <asp:ListItem>2056-2059</asp:ListItem>
                        <asp:ListItem>2057-2060</asp:ListItem>

                        <asp:ListItem>2058-2061</asp:ListItem>
                        <asp:ListItem>2059-2062</asp:ListItem>
                        <asp:ListItem>2060-2063</asp:ListItem>
                        <asp:ListItem>2061-2064</asp:ListItem>
                        <asp:ListItem>2062-2065</asp:ListItem>
                        <asp:ListItem>2063-2066</asp:ListItem>
                        <asp:ListItem>2064-2067</asp:ListItem>
                        <asp:ListItem>2065-2068</asp:ListItem>
                        <asp:ListItem>2066-2069</asp:ListItem>
                        <asp:ListItem>2067-2070</asp:ListItem>

                        <asp:ListItem>2068-2071</asp:ListItem>
                        <asp:ListItem>2069-2072</asp:ListItem>
                        <asp:ListItem>2070-2073</asp:ListItem>
                        <asp:ListItem>2071-2074</asp:ListItem>
                        <asp:ListItem>2072-2075</asp:ListItem>
                        <asp:ListItem>2073-2076</asp:ListItem>
                        <asp:ListItem>2074-2077</asp:ListItem>
                        <asp:ListItem>2075-2078</asp:ListItem>
                        <asp:ListItem>2076-2079</asp:ListItem>
                        <asp:ListItem>2077-2080</asp:ListItem>

                        <asp:ListItem>2078-2081</asp:ListItem>
                        <asp:ListItem>2079-2082</asp:ListItem>
                        <asp:ListItem>2080-2083</asp:ListItem>
                        <asp:ListItem>2081-2084</asp:ListItem>
                        <asp:ListItem>2082-2085</asp:ListItem>
                        <asp:ListItem>2083-2086</asp:ListItem>
                        <asp:ListItem>2084-2087</asp:ListItem>
                        <asp:ListItem>2085-2088</asp:ListItem>
                        <asp:ListItem>2086-2089</asp:ListItem>
                        <asp:ListItem>2087-2090</asp:ListItem>

                        <asp:ListItem>2088-2091</asp:ListItem>
                        <asp:ListItem>2089-2092</asp:ListItem>
                        <asp:ListItem>2090-2093</asp:ListItem>
                        <asp:ListItem>2091-2094</asp:ListItem>
                        <asp:ListItem>2092-2095</asp:ListItem>
                        <asp:ListItem>2093-2096</asp:ListItem>
                        <asp:ListItem>2094-2097</asp:ListItem>
                        <asp:ListItem>2095-2098</asp:ListItem>
                        <asp:ListItem>2096-2099</asp:ListItem>
                        <asp:ListItem>2097-2100</asp:ListItem>
                        <%--<asp:ListItem>20-20</asp:ListItem>
                        <asp:ListItem>20-20</asp:ListItem>
                        <asp:ListItem>20-20</asp:ListItem>
                        <asp:ListItem>20-20</asp:ListItem>
                        <asp:ListItem>20-20</asp:ListItem>
                        <asp:ListItem>20-20</asp:ListItem>
                        <asp:ListItem>20-20</asp:ListItem>
                        <asp:ListItem>20-20</asp:ListItem>
                        <asp:ListItem>20-20</asp:ListItem>
                        <asp:ListItem>20-20</asp:ListItem>
                        <asp:ListItem>20-20</asp:ListItem>
                        <asp:ListItem>20-20</asp:ListItem>
                        <asp:ListItem>20-20</asp:ListItem>
                        <asp:ListItem>20-20</asp:ListItem>
                        <asp:ListItem>20-20</asp:ListItem>
                        <asp:ListItem>20-20</asp:ListItem>
                        <asp:ListItem>20-20</asp:ListItem>
                        <asp:ListItem>20-20</asp:ListItem>
                        <asp:ListItem>20-20</asp:ListItem>
                        <asp:ListItem>20-20</asp:ListItem>
                        <asp:ListItem>20-20</asp:ListItem>
                        <asp:ListItem>20-20</asp:ListItem>
                        <asp:ListItem>20-20</asp:ListItem>
                        <asp:ListItem>20-20</asp:ListItem>
                        <asp:ListItem>20-20</asp:ListItem>
                        <asp:ListItem>20-20</asp:ListItem>
                        <asp:ListItem>20-20</asp:ListItem>
                        <asp:ListItem>20-20</asp:ListItem>--%>
                    </asp:DropDownList>
                    <br />
                    <br />
                    <br />
                </asp:Panel>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button12" runat="server" CssClass="button-style" Height="33px" 
                    onclick="Button12_Click" Text="Admit Student" Width="146px" />
                &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button23" runat="server" CssClass="button-style" 
                    Height="33px" onclick="Button23_Click" Text="Delete Student Application" 
                    Width="162px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                <asp:Button ID="Button13" runat="server" CssClass="button-style" Height="33px" 
                    onclick="Button13_Click" Text="Cancel" Width="146px" />
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

