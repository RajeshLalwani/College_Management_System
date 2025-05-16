<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_MasterPage.master" AutoEventWireup="true" CodeFile="Admin_View_Semester_3_Students_Whole_List.aspx.cs" Inherits="Admin_View_Semester_3_Students_Whole_List" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;
    
   
<title>Student Registration Form</title>&nbsp;<body>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:Label 
                ID="Label1" runat="server" Text="Semester 3 Student Details " 
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
        </body>
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
    <%-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">--%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    &nbsp;Search For Students : 
    <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox-style" 
        Height="29px" Width="590px" AutoPostBack="True"></asp:TextBox>
    <%--<asp:ImageButton ID="ImageButton1" runat="server" 
        Height="21px" 
        onclick="ImageButton1_Click" Width="55px" CssClass="fa-search" />--%>
    <asp:Button ID="Button1" runat="server" CssClass="sbutton-style" 
        Text="Search" Font-Bold="False" Font-Italic="True" Font-Size="13pt" 
        Height="30px" onclick="Button1_Click" Width="110px" />
    <br />
    <br />
    <br />
    <br />
    <asp:DataList ID="DataList1" runat="server" DataKeyField="StdAdmissionID" 
        DataSourceID="SqlDataSource1" CellPadding="5" CellSpacing="5" 
        Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Size="Large" 
        Font-Strikeout="False" Font-Underline="False" RepeatColumns="3" 
        BackColor="#333333" BorderColor="Aqua" ForeColor="Aqua" 
        HorizontalAlign="Justify" BorderWidth="5px" GridLines="Both" 
        RepeatDirection="Horizontal" onitemcommand="DataList1_ItemCommand">
        <ItemTemplate>
             <table>
    <tr align="center">
        <td>
        <br /><br />
            <asp:Image ID="Image1" runat="server" ImageUrl='<%#"Images/Student Details/Passport Size Photos/"+ Eval("StdAPassSizePhoto") %>' Width="150" Height="150"/>
        <br /> <br />
        
        
        </td>
    </tr>

    <tr align="center">
       <td> <asp:Label ID="Label1" runat="server" Text="Admission ID. : "></asp:Label>  
       <asp:Label ID="Label2" runat="server" Text='<%# Eval("StdAdmissionID") %>' /></td>
    </tr>   

    <tr align="center">
        <td> <asp:Label ID="Label3" runat="server" Text="Admission Date : "></asp:Label> 
        <asp:Label ID="Label4" runat="server" Text='<%# Eval("StdAdmissionDate") %>' /></td>
    </tr>

    <tr align="center">
        <td> <asp:Label ID="Label5" runat="server" Text="Student Name : "></asp:Label> 
        <asp:Label ID="Label6" runat="server" Text='<%# Eval("StdASalutation")+""+Eval("StdAfname")+" "+ Eval("StdAmname")+" "+ Eval("StdAlname") %>' /></td>
    </tr>
    
    <tr align="center">
        <td> 
            <br /> 
            <asp:Button ID="Button1" runat="server" Text="View Details" CommandArgument='<%# Eval("StdAdmissionID") %>' CommandName="View Details" CssClass="button-style" Height="30px" Width="90px"/>
            <br /><br />    
        </td>
    </tr>
    
    </table>
            <br />
<br />
        </ItemTemplate>

    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Conn %>" 
        
        
    SelectCommand="SELECT * FROM [Student_Details] WHERE (([StdAStatus] = @StdAStatus) AND ([StdASemester] = @StdASemester))">
        <SelectParameters>
            <asp:Parameter DefaultValue="Studying" Name="StdAStatus" Type="String" />
            <asp:Parameter DefaultValue="Semester 3" Name="StdASemester" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>


