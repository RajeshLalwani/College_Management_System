<%@ Page Title="" Language="C#" MasterPageFile="~/Student_MasterPage.master" AutoEventWireup="true" CodeFile="Student_Apply_For_Update_Semester.aspx.cs" Inherits="Student_Apply_For_Update_Semester" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <%--<asp:Image ID="Image2" runat="server" Height="200px" ImageAlign="Middle" 
                    Width="200px" />--%>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label 
                ID="Label1" runat="server" Text="Student Semester Updation Application" 
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
        Height="2635px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image5" runat="server" Height="150px" ImageAlign="Middle" 
                    Width="150px" />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label155" runat="server" Font-Bold="True" Text="Student ID"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;
                <asp:Label ID="Label156" runat="server" Text="Label"></asp:Label>
                &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Full Name"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;
                <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
                &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Current Semester"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;:&nbsp;&nbsp;
                <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp; &nbsp;
                <asp:Label ID="Label17" runat="server" Font-Bold="True" 
                    Text="Applying For Semester"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;
                <asp:Label ID="Label18" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label19" runat="server" Text="Label"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;<asp:Panel ID="Panel4" runat="server" Height="325px" 
                    style="margin-top: 26px">
                    <asp:Label ID="Label140" runat="server" CssClass="heading-style" 
                        Text="Last Semester Details "></asp:Label>
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
                        Height="25px" PlaceHolder="Enter Name of College (Semester 1)" 
                        Width="400px"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label83" runat="server" CssClass="label-style" 
                        Text="Name of University  :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;<asp:TextBox 
                        ID="TextBox37" runat="server" 
                        CssClass="textbox-style" Height="25px" 
                        PlaceHolder="Enter Name of University (Semester 1)" 
                        Width="400px"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label84" runat="server" CssClass="label-style" Text="City :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox38" runat="server" CssClass="textbox-style" 
                        Height="25px" PlaceHolder="Enter Name of City (Semester 1)" 
                        Width="400px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <asp:Label ID="Label86" runat="server" CssClass="label-style" 
                        Text="Year of Passing :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox40" runat="server" CssClass="textbox-style" 
                        Height="25px" PlaceHolder="Enter Year of Passing (Semester 1)" 
                        Width="400px"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label87" runat="server" CssClass="label-style" 
                        Text="Percentage / GPA  :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox41" runat="server" CssClass="textbox-style" 
                        Height="25px" PlaceHolder="Enter Percentage / GPA (Semester 1)" 
                        Width="400px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%--<asp:Image ID="Image2" runat="server" Height="200px" ImageAlign="Middle" 
                    Width="200px" />--%><br /><asp:Panel ID="Panel5" runat="server" 
                        Height="313px">
                        <asp:Label ID="Label157" runat="server" CssClass="heading-style" 
                            Text="Last Semester Details "></asp:Label>
                        <ajaxToolkit:RoundedCornersExtender ID="Label157_RoundedCornersExtender" 
                            runat="server" BehaviorID="Label157_RoundedCornersExtender" 
                            TargetControlID="Label157" />
                        <ajaxToolkit:DropShadowExtender ID="Label157_DropShadowExtender" runat="server" 
                            BehaviorID="Label157_DropShadowExtender" TargetControlID="Label157" />
                        <br />
                        <br />
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
                            Height="25px" PlaceHolder="Enter Name of College (Semester 2)" 
                            Width="400px"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label94" runat="server" CssClass="label-style" 
                            Text="Name of University  :"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:TextBox 
                            ID="TextBox44" runat="server" 
                            CssClass="textbox-style" Height="25px" 
                            PlaceHolder="Enter Name of University (Semester 2)" 
                            Width="400px"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label95" runat="server" CssClass="label-style" Text="City :"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:TextBox ID="TextBox45" runat="server" CssClass="textbox-style" 
                            Height="25px" PlaceHolder="Enter Name of City (Semester 2)" 
                            Width="400px"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        <asp:Label ID="Label97" runat="server" CssClass="label-style" 
                            Text="Year of Passing :"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:TextBox ID="TextBox47" runat="server" CssClass="textbox-style" 
                            Height="25px" PlaceHolder="Enter Year of Passing (Semester 2)" 
                            Width="400px"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label98" runat="server" CssClass="label-style" 
                            Text="Percentage / GPA  :"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
                            ID="TextBox48" runat="server" 
                            CssClass="textbox-style" Height="25px" 
                            PlaceHolder="Enter Percentage / GPA (Semester 2)" Width="400px"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%--<asp:Image ID="Image2" runat="server" Height="200px" ImageAlign="Middle" 
                    Width="200px" />--%><br /><br /><br /><br /><br /><br /><br /><br /><br /></asp:Panel>
                    <ajaxToolkit:RoundedCornersExtender ID="Panel5_RoundedCornersExtender" 
                        runat="server" BehaviorID="Panel5_RoundedCornersExtender" 
                        TargetControlID="Panel5" />
                    <ajaxToolkit:DropShadowExtender ID="Panel5_DropShadowExtender" runat="server" 
                        BehaviorID="Panel5_DropShadowExtender" TargetControlID="Panel5" />
                    <asp:Panel ID="Panel6" runat="server" Height="329px">
                        <asp:Label ID="Label158" runat="server" CssClass="heading-style" 
                            Text="Last Semester Details "></asp:Label>
                        <ajaxToolkit:RoundedCornersExtender ID="Label158_RoundedCornersExtender" 
                            runat="server" BehaviorID="Label158_RoundedCornersExtender" 
                            TargetControlID="Label158" />
                        <ajaxToolkit:DropShadowExtender ID="Label158_DropShadowExtender" runat="server" 
                            BehaviorID="Label158_DropShadowExtender" TargetControlID="Label158" />
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label103" runat="server" CssClass="sub-heading-style" 
                            Text="Semester 3 Details "></asp:Label>
                        <ajaxToolkit:DropShadowExtender ID="Label103_DropShadowExtender" runat="server" 
                            BehaviorID="Label103_DropShadowExtender" TargetControlID="Label103" />
                        <br />
                        <br />
                        <asp:Label ID="Label104" runat="server" CssClass="label-style" 
                            Text="Name of College :"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox50" runat="server" CssClass="textbox-style" 
                            Height="25px" PlaceHolder="Enter Name of College (Semester 3)" 
                            Width="400px"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label105" runat="server" CssClass="label-style" 
                            Text="Name of University  :"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;<asp:TextBox 
                            ID="TextBox51" runat="server" 
                            CssClass="textbox-style" Height="25px" 
                            PlaceHolder="Enter Name of University (Semester 3)" 
                            Width="400px"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label106" runat="server" CssClass="label-style" Text="City :"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox52" runat="server" CssClass="textbox-style" 
                            Height="25px" PlaceHolder="Enter Name of City (Semester 3)" 
                            Width="400px"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label108" runat="server" CssClass="label-style" 
                            Text="Year of Passing :"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                        <asp:TextBox ID="TextBox54" runat="server" CssClass="textbox-style" 
                            Height="25px" PlaceHolder="Enter Year of Passing (Semester 3)" 
                            Width="400px"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label109" runat="server" CssClass="label-style" 
                            Text="Percentage / GPA  :"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:TextBox ID="TextBox55" runat="server" CssClass="textbox-style" 
                            Height="25px" PlaceHolder="Enter Percentage / GPA (Semester 3)" 
                            Width="400px"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
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
                    <asp:Panel ID="Panel7" runat="server" Height="325px">
                        <asp:Label ID="Label159" runat="server" CssClass="heading-style" 
                            Text="Last Semester Details "></asp:Label>
                        <ajaxToolkit:RoundedCornersExtender ID="Label159_RoundedCornersExtender" 
                            runat="server" BehaviorID="Label159_RoundedCornersExtender" 
                            TargetControlID="Label159" />
                        <ajaxToolkit:DropShadowExtender ID="Label159_DropShadowExtender" runat="server" 
                            BehaviorID="Label159_DropShadowExtender" TargetControlID="Label159" />
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label114" runat="server" CssClass="sub-heading-style" 
                            Text="Semester 4 Details "></asp:Label>
                        <ajaxToolkit:RoundedCornersExtender ID="Label114_RoundedCornersExtender" 
                            runat="server" BehaviorID="Label114_RoundedCornersExtender" 
                            TargetControlID="Label114" />
                        <br />
                        <br />
                        <asp:Label ID="Label115" runat="server" CssClass="label-style" 
                            Text="Name of College :"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                        <asp:TextBox ID="TextBox57" runat="server" CssClass="textbox-style" 
                            Height="25px" PlaceHolder="Enter Name of College (Semester 4)" 
                            Width="400px"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label116" runat="server" CssClass="label-style" 
                            Text="Name of University  :"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;<asp:TextBox 
                            ID="TextBox58" runat="server" 
                            CssClass="textbox-style" Height="25px" 
                            PlaceHolder="Enter Name of University (Semester 4)" 
                            Width="400px"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label117" runat="server" CssClass="label-style" Text="City :"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
                        <asp:TextBox ID="TextBox59" runat="server" CssClass="textbox-style" 
                            Height="25px" PlaceHolder="Enter Name of City (Semester 4)" 
                            Width="400px"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label119" runat="server" CssClass="label-style" 
                            Text="Year of Passing :"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:TextBox ID="TextBox61" runat="server" CssClass="textbox-style" 
                            Height="25px" PlaceHolder="Enter Year of Passing (Semester 4)" 
                            Width="400px"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label120" runat="server" CssClass="label-style" 
                            Text="Percentage / GPA  :"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                        <asp:TextBox ID="TextBox62" runat="server" CssClass="textbox-style" 
                            Height="25px" PlaceHolder="Enter Percentage / GPA (Semester 4)" 
                            Width="400px"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
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
                    <ajaxToolkit:RoundedCornersExtender ID="Panel7_RoundedCornersExtender" 
                        runat="server" BehaviorID="Panel7_RoundedCornersExtender" 
                        TargetControlID="Panel7" />
                    <ajaxToolkit:DropShadowExtender ID="Panel7_DropShadowExtender" runat="server" 
                        BehaviorID="Panel7_DropShadowExtender" TargetControlID="Panel7" />
                    <asp:Panel ID="Panel8" runat="server" Height="326px">
                        <asp:Label ID="Label160" runat="server" CssClass="heading-style" 
                            Text="Last Semester Details "></asp:Label>
                        <ajaxToolkit:DropShadowExtender ID="Label160_DropShadowExtender" runat="server" 
                            BehaviorID="Label160_DropShadowExtender" TargetControlID="Label160" />
                        <br />
                        <br />
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
                            Height="25px" PlaceHolder="Enter Name of College (Semester 5)" 
                            Width="400px"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label127" runat="server" CssClass="label-style" 
                            Text="Name of University  :"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;<asp:TextBox 
                            ID="TextBox65" runat="server" 
                            CssClass="textbox-style" Height="25px" 
                            PlaceHolder="Enter Name of University (Semester 5)" 
                            Width="400px"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label128" runat="server" CssClass="label-style" Text="City :"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox66" runat="server" CssClass="textbox-style" 
                            Height="25px" PlaceHolder="Enter Name of City (Semester 5)" 
                            Width="400px"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        <asp:Label ID="Label130" runat="server" CssClass="label-style" 
                            Text="Year of Passing :"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;
                        <asp:TextBox ID="TextBox68" runat="server" CssClass="textbox-style" 
                            Height="25px" PlaceHolder="Enter Year of Passing (Semester 5)" 
                            Width="400px"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label131" runat="server" CssClass="label-style" 
                            Text="Percentage / GPA  :"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                        <asp:TextBox ID="TextBox69" runat="server" CssClass="textbox-style" 
                            Height="25px" PlaceHolder="Enter Percentage / GPA (Semester 5)" 
                            Width="400px"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%--<asp:Image ID="Image2" runat="server" Height="200px" ImageAlign="Middle" 
                    Width="200px" />--%><br /><br /><br /><br /><br /><br /><br /><br /><br /></asp:Panel>
                    <ajaxToolkit:RoundedCornersExtender ID="Panel8_RoundedCornersExtender" 
                        runat="server" BehaviorID="Panel8_RoundedCornersExtender" 
                        TargetControlID="Panel8" />
                    <ajaxToolkit:DropShadowExtender ID="Panel8_DropShadowExtender" runat="server" 
                        BehaviorID="Panel8_DropShadowExtender" TargetControlID="Panel8" />
                    <br />
                    <asp:Panel ID="Panel14" runat="server">
                        <asp:Label ID="Label89" runat="server" CssClass="label-style" 
                            Text="Upload Semester 1 Marksheet :"></asp:Label>
                        <asp:FileUpload ID="FileUpload4" runat="server" CssClass="button-style" 
                            Height="25px" Width="400px" />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <%--<asp:Button ID="Button6" runat="server" CssClass="button-style" Height="33px" 
                        onclick="Button6_Click" Text="Upload" Width="97px" />--%>
                        <br />
                        <asp:Label ID="Label90" runat="server" Text="Label"></asp:Label>
                        <br />
                        <asp:Label ID="Label91" runat="server" Text="Label"></asp:Label>
                    </asp:Panel>
                    <ajaxToolkit:RoundedCornersExtender ID="Panel14_RoundedCornersExtender" 
                        runat="server" BehaviorID="Panel14_RoundedCornersExtender" 
                        TargetControlID="Panel14" />
                    <ajaxToolkit:DropShadowExtender ID="Panel14_DropShadowExtender" runat="server" 
                        BehaviorID="Panel14_DropShadowExtender" TargetControlID="Panel14" />
                    <asp:Panel ID="Panel15" runat="server">
                        <asp:Label ID="Label100" runat="server" CssClass="label-style" 
                            Text="Upload Semester 2 Marksheet :"></asp:Label>
                        &nbsp;<asp:FileUpload ID="FileUpload5" runat="server" CssClass="button-style" 
                            Height="25px" Width="400px" />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <%--<asp:Button ID="Button7" runat="server" CssClass="button-style" Height="33px" 
                        onclick="Button7_Click" Text="Upload" Width="97px" />--%>
                        <br />
                        <asp:Label ID="Label101" runat="server" Text="Label"></asp:Label>
                        <br />
                        <asp:Label ID="Label102" runat="server" Text="Label"></asp:Label>
                    </asp:Panel>
                    <ajaxToolkit:RoundedCornersExtender ID="Panel15_RoundedCornersExtender" 
                        runat="server" BehaviorID="Panel15_RoundedCornersExtender" 
                        TargetControlID="Panel15" />
                    <ajaxToolkit:DropShadowExtender ID="Panel15_DropShadowExtender" runat="server" 
                        BehaviorID="Panel15_DropShadowExtender" TargetControlID="Panel15" />
                    <asp:Panel ID="Panel16" runat="server">
                        <asp:Label ID="Label111" runat="server" CssClass="label-style" 
                            Text="Upload Semester 3 Marksheet :"></asp:Label>
                        &nbsp;<asp:FileUpload ID="FileUpload6" runat="server" CssClass="button-style" 
                            Height="25px" Width="400px" />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <%--<asp:Button ID="Button8" runat="server" CssClass="button-style" Height="33px" 
                        onclick="Button8_Click" Text="Upload" Width="97px" />--%>
                        <br />
                        <asp:Label ID="Label112" runat="server" Text="Label"></asp:Label>
                        <br />
                        <asp:Label ID="Label113" runat="server" Text="Label"></asp:Label>
                    </asp:Panel>
                    <ajaxToolkit:RoundedCornersExtender ID="Panel16_RoundedCornersExtender" 
                        runat="server" BehaviorID="Panel16_RoundedCornersExtender" 
                        TargetControlID="Panel16" />
                    <ajaxToolkit:DropDownExtender ID="Panel16_DropDownExtender" runat="server" 
                        BehaviorID="Panel16_DropDownExtender" DynamicServicePath="" 
                        TargetControlID="Panel16">
                    </ajaxToolkit:DropDownExtender>
                    <asp:Panel ID="Panel17" runat="server">
                        <asp:Label ID="Label122" runat="server" CssClass="label-style" 
                            Text="Upload Semester 4 Marksheet :"></asp:Label>
                        &nbsp;<asp:FileUpload ID="FileUpload7" runat="server" CssClass="button-style" 
                            Height="25px" Width="400px" />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <%--<asp:Button ID="Button9" runat="server" CssClass="button-style" Height="33px" 
                        onclick="Button9_Click" Text="Upload" Width="97px" />--%>
                        <br />
                        <asp:Label ID="Label123" runat="server" Text="Label"></asp:Label>
                        <br />
                        <asp:Label ID="Label124" runat="server" Text="Label"></asp:Label>
                    </asp:Panel>
                    <ajaxToolkit:RoundedCornersExtender ID="Panel17_RoundedCornersExtender" 
                        runat="server" BehaviorID="Panel17_RoundedCornersExtender" 
                        TargetControlID="Panel17" />
                    <ajaxToolkit:DropShadowExtender ID="Panel17_DropShadowExtender" runat="server" 
                        BehaviorID="Panel17_DropShadowExtender" TargetControlID="Panel17" />
                    <asp:Panel ID="Panel18" runat="server">
                        <asp:Label ID="Label133" runat="server" CssClass="label-style" 
                            Text="Upload Semester 5 Marksheet :"></asp:Label>
                        &nbsp;<asp:FileUpload ID="FileUpload8" runat="server" CssClass="button-style" 
                            Height="25px" Width="400px" />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <%--<asp:Button ID="Button10" runat="server" CssClass="button-style" Height="33px" 
                        onclick="Button10_Click" Text="Upload" Width="97px" />--%>
                        <br />
                        <asp:Label ID="Label134" runat="server" Text="Label"></asp:Label>
                        <br />
                        <asp:Label ID="Label135" runat="server" Text="Label"></asp:Label>
                    </asp:Panel>
                    <ajaxToolkit:RoundedCornersExtender ID="Panel18_RoundedCornersExtender" 
                        runat="server" BehaviorID="Panel18_RoundedCornersExtender" 
                        TargetControlID="Panel18" />
                    <ajaxToolkit:DropShadowExtender ID="Panel18_DropShadowExtender" runat="server" 
                        BehaviorID="Panel18_DropShadowExtender" TargetControlID="Panel18" />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button12" runat="server" CssClass="button-style" Height="33px" 
                        onclick="Button12_Click" Text="Apply" Width="146px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button13" runat="server" CssClass="button-style" Height="33px" 
                        onclick="Button13_Click" Text="Cancel" Width="146px" />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label154" runat="server" Text="Label"></asp:Label>
                    <br />
                    <br />
                    <br />
                    <br />
                </asp:Panel>
                <ajaxToolkit:RoundedCornersExtender ID="Panel4_RoundedCornersExtender" 
                    runat="server" BehaviorID="Panel4_RoundedCornersExtender" 
                    TargetControlID="Panel4" />
    </asp:Panel>
            <br />
        </body>
    <br />
    
</asp:Content>

