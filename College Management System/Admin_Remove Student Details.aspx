<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_MasterPage.master" AutoEventWireup="true" CodeFile="Admin_Remove Student Details.aspx.cs" Inherits="Admin_Remove_Student_Details" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <html>
    <style>


        
           .body
           {
               background-color:white;
           }
           
          .label1-style
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
        
        
        .button-style
         {
        
                background:#1bae9a;
                color: rgb(127,234,217);
                color: linear-gradient(0deg, rgba(127,234,217,1) 0%, rgba(240,255,253,1) 100%);
               
                box-shadow: 0px 0px 0px 3px aqua;
        
                transition: box-shadow 0.6s linear; 
                margin: 0.5em; 
         
        }
    
    
      .button-style:hover  
        {
               box-shadow: 0px 0px 0px 5px #1bae9a;   
        } 
    
    
    
       h3
       {
            font-family: Calibri; 
            font-size: 22pt; 
            font-style: normal; 
            font-weight: bold; 
            color:SlateBlue;
            text-align: center; 
            text-decoration: underline 
       }

      reg-style
       {
            font-family: Calibri; 
            color: rgb(127,234,217);
        color: linear-gradient(0deg, rgba(127,234,217,1) 0%, rgba(240,255,253,1) 100%); 
            font-size: 11pt; 
            font-style: normal;
            text-align:center; 
             background: rgb(127,234,217);
            background: linear-gradient(0deg, rgba(127,234,217,1) 0%, rgba(240,255,253,1) 100%); 
            border-collapse: collapse; 
            border: 2px solid navy
      }
    
      table.inner
      {
            sborder: 0px
      }
    
    </style>
    <body>
        <br />
        <br />
        <p style="margin-left: 280px">
            <asp:Label ID="Label2" runat="server" Text="Remove / Delete Student Details Page" 
                CssClass="label1-style"></asp:Label>
            <ajaxToolkit:DropShadowExtender ID="Label2_DropShadowExtender" runat="server" 
                BehaviorID="Label2_DropShadowExtender" TargetControlID="Label2" />
            <ajaxToolkit:RoundedCornersExtender ID="Label2_RoundedCornersExtender" 
                runat="server" BehaviorID="Label2_RoundedCornersExtender" 
                TargetControlID="Label2" />
            <asp:ScriptManager ID="ScriptManager2" runat="server">
            </asp:ScriptManager>
        </p>
        <br />&nbsp;&nbsp;&nbsp;
    
   
<title>Student Details Updation Form</title>
        <body>
            <h3 class="label1-style">
                STUDENT DATA 
                DELETION FORM</h3>
            <form action="../form.php" method="POST">
            <BR />
            <BR />
            <BR />
            <table align="center" cellpadding = "10" class="reg-style">
 
<!----- First Name ---------------------------------------------------------->
                <tr>
                    <td>
                        <br />FIRST NAME<br />
                    </td>
                    <td>
                        <br />
                        <input type="text" name="First_Name" maxlength="30"/>
(max 30 characters a-z and A-Z)
                        <br />
                    </td>
                </tr>

<!----- Middle Name ---------------------------------------------------------->
                <tr>
                    <td>
                        <br />MIDDLE NAME<br />
                    </td>
                    <td>
                        <br />
                        <input type="text" name="Middle_Name" maxlength="30"/>
(max 30 characters a-z and A-Z)
                        <br />
                    </td>
                </tr>
 
<!----- Last Name ---------------------------------------------------------->
                <tr>
                    <td>
                        <br />LAST NAME</td>
                    <td>
                        <br />
                        <input type="text" name="Last_Name" maxlength="30"/>
(max 30 characters a-z and A-Z)
                    </td>
                </tr>
 
<!----- Date Of Birth -------------------------------------------------------->
                <tr>
                    <td>
                        <br />DATE OF BIRTH</td>
                    <td>
                        <br />
                        <select name="Birthday_day" id="Birthday_Day">
                            <option value="-1">Day:</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                            <option value="7">7</option>
                            <option value="8">8</option>
                            <option value="9">9</option>
                            <option value="10">10</option>
                            <option value="11">11</option>
                            <option value="12">12</option>
                            <option value="13">13</option>
                            <option value="14">14</option>
                            <option value="15">15</option>
                            <option value="16">16</option>
                            <option value="17">17</option>
                            <option value="18">18</option>
                            <option value="19">19</option>
                            <option value="20">20</option>
                            <option value="21">21</option>
                            <option value="22">22</option>
                            <option value="23">23</option>
                            <option value="24">24</option>
                            <option value="25">25</option>
                            <option value="26">26</option>
                            <option value="27">27</option>
                            <option value="28">28</option>
                            <option value="29">29</option>
                            <option value="30">30</option>
                            <option value="31">31</option>
                        </select>
                        <select id="Birthday_Month" name="Birthday_Month">
                            <option value="-1">Month:</option>
                            <option value="January">Jan</option>
                            <option value="February">Feb</option>
                            <option value="March">Mar</option>
                            <option value="April">Apr</option>
                            <option value="May">May</option>
                            <option value="June">Jun</option>
                            <option value="July">Jul</option>
                            <option value="August">Aug</option>
                            <option value="September">Sep</option>
                            <option value="October">Oct</option>
                            <option value="November">Nov</option>
                            <option value="December">Dec</option>
                        </select>
                        <select name="Birthday_Year" id="Birthday_Year">
                            <option value="-1">Year:</option>
                            <option value="2050">2050</option>
                            <option value="2049">2049</option>
                            <option value="2048">2048</option>
                            <option value="2047">2047</option>
                            <option value="2046">2046</option>
                            <option value="2045">2045</option>
                            <option value="2044">2044</option>
                            <option value="2043">2043</option>
                            <option value="2042">2042</option>
                            <option value="2041">2041</option>
                            <option value="2040">2040</option>
                            <option value="2039">2039</option>
                            <option value="2038">2038</option>
                            <option value="2037">2037</option>
                            <option value="2036">2036</option>
                            <option value="2035">2035</option>
                            <option value="2034">2034</option>
                            <option value="2033">2033</option>
                            <option value="2032">2032</option>
                            <option value="2031">2031</option>
                            <option value="2030">2030</option>
                            <option value="2029">2029</option>
                            <option value="2028">2028</option>
                            <option value="2027">2027</option>
                            <option value="2026">2026</option>
                            <option value="2025">2025</option>
                            <option value="2024">2024</option>
                            <option value="2023">2023</option>
                            <option value="2022">2022</option>
                            <option value="2021">2021</option>
                            <option value="2020">2020</option>
                            <option value="2019">2019</option>
                            <option value="2018">2018</option>
                            <option value="2017">2017</option>
                            <option value="2016">2016</option>
                            <option value="2015">2015</option>
                            <option value="2014">2014</option>
                            <option value="2013">2013</option>
                            <option value="2012">2012</option>
                            <option value="2011">2011</option>
                            <option value="2010">2010</option>
                            <option value="2009">2009</option>
                            <option value="2008">2008</option>
                            <option value="2007">2007</option>
                            <option value="2006">2006</option>
                            <option value="2005">2005</option>
                            <option value="2004">2004</option>
                            <option value="2003">2003</option>
                            <option value="2002">2002</option>
                            <option value="2001">2001</option>
                            <option value="2000">2000</option>
                            <option value="1999">1999</option>
                            <option value="1998">1998</option>
                            <option value="1997">1997</option>
                            <option value="1996">1996</option>
                            <option value="1995">1995</option>
                            <option value="1994">1994</option>
                            <option value="1993">1993</option>
                            <option value="1992">1992</option>
                            <option value="1991">1991</option>
                            <option value="1990">1990</option>
                            <option value="1989">1989</option>
                            <option value="1988">1988</option>
                            <option value="1987">1987</option>
                            <option value="1986">1986</option>
                            <option value="1985">1985</option>
                            <option value="1984">1984</option>
                            <option value="1983">1983</option>
                            <option value="1982">1982</option>
                            <option value="1981">1981</option>
                            <option value="1980">1980</option>
                        </select>
                    </td>
                </tr>
 
<!----- Email Id ---------------------------------------------------------->
                <tr>
                    <td>
                        <br />EMAIL ID</td>
                    <td>
                        <br />
                        <input type="text" name="Email_Id" maxlength="100" /></td>
                </tr>
 
<!----- Mobile Number ---------------------------------------------------------->
                <tr>
                    <td>
                        <br />MOBILE NUMBER</td>
                    <td>
                        <br />
                        <input type="text" name="Mobile_Number" maxlength="10" />
(10 digit number)
                    </td>
                </tr>
 
<!----- Gender ----------------------------------------------------------->
                <tr>
                    <td>
                        <br />GENDER</td>
                    <td>
                        <br />Male 
                        <input type="radio" name="Gender" value="Male" checked="checked" />
Female 
                        <input type="radio" name="Gender" value="Female" />
Other 
                        <input type="radio" name="Gender" value="Other" />
                    </td>
                </tr>
 
<!----- Address ---------------------------------------------------------->
                <tr>
                    <td>
                        <br />ADDRESS 
 
 
                    </td>
                    <td>
                        <br />
                        <textarea name="Address" rows="4" cols="30"></textarea><br />
                    </td>
                </tr>
 
<!----- City ---------------------------------------------------------->
                <tr>
                    <td>
                        <br />CITY</td>
                    <td>
                        <input type="text" name="City" maxlength="30" />
(max 30 characters a-z and A-Z)
                        <br />
                    </td>
                </tr>
 
<!----- Pin Code ---------------------------------------------------------->
                <tr>
                    <td>
                        <br />PIN CODE</td>
                    <td>
                        <input type="text" name="Pin_Code" maxlength="6" />
(6 digit number)
                        <br />
                    </td>
                </tr>
 
<!----- State ---------------------------------------------------------->
                <tr>
                    <td>
                        <br />STATE</td>
                    <td>
                        <input type="text" name="State" maxlength="30" />
(max 30 characters a-z and A-Z)
                        <br />
                    </td>
                </tr>
 
<!----- Country ---------------------------------------------------------->
                <tr>
                    <td>
                        <br />COUNTRY</td>
                    <td>
                        <input type="text" name="Country" value="India" readonly="readonly" /><br />
                    </td>
                </tr>
 
<!----- Hobbies ---------------------------------------------------------->
 
                <tr>
                    <td>
                        <br />HOBBIES 
 
 
                    </td>
                    <td>
                        <br />Drawing
                        <input type="checkbox" name="Hobby_Drawing" value="Drawing" />
Singing
                        <input type="checkbox" name="Hobby_Singing" value="Singing" />
Dancing
                        <input type="checkbox" name="Hobby_Dancing" value="Dancing" />
Sketching
                        <input type="checkbox" name="Hobby_Cooking" value="Cooking" />
 
 
Others
                        <input type="checkbox" name="Hobby_Other" value="Other">
                        <input type="text" name="Other_Hobby" maxlength="30" /><br />&nbsp;</td>
                </tr>
 
<!----- Qualification---------------------------------------------------------->
                <tr>
                    <td>
                        <br />QUALIFICATION 
 
 
 
 
 
 
                    </td>
                    <td>
                        <table>
                            <tr>
                                <td align="center">
                                    <b>Sl.No.<br /></b>
                                </td>
                                <td align="center">
                                    <b>Examination<br /></b>
                                </td>
                                <td align="center">
                                    <b>Board<br /></b>
                                </td>
                                <td align="center">
                                    <b>Percentage<br /></b>
                                </td>
                                <td align="center">
                                    <b>Year of Passing<br /></b>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    1</td>
                                <td>
                                    Class X</td>
                                <td>
                                    <input type="text" name="ClassX_Board" maxlength="30" /></td>
                                <td>
                                    <input type="text" name="ClassX_Percentage" maxlength="30" /></td>
                                <td>
                                    <input type="text" name="ClassX_YrOfPassing" maxlength="30" /></td>
                            </tr>
                            <tr>
                                <td>
                                    2</td>
                                <td>
                                    Class XII</td>
                                <td>
                                    <input type="text" name="ClassXII_Board" maxlength="30" /></td>
                                <td>
                                    <input type="text" name="ClassXII_Percentage" maxlength="30" /></td>
                                <td>
                                    <input type="text" name="ClassXII_YrOfPassing" maxlength="30" /></td>
                            </tr>
                            <tr>
                                <td>
                                    3</td>
                                <td>
                                    Graduation</td>
                                <td>
                                    <input type="text" name="Graduation_Board" maxlength="30" /></td>
                                <td>
                                    <input type="text" name="Graduation_Percentage" maxlength="30" /></td>
                                <td>
                                    <input type="text" name="Graduation_YrOfPassing" maxlength="30" /></td>
                            </tr>
                            <tr>
                                <td>
                                    4</td>
                                <td>
                                    Masters</td>
                                <td>
                                    <input type="text" name="Masters_Board" maxlength="30" /></td>
                                <td>
                                    <input type="text" name="Masters_Percentage" maxlength="30" /></td>
                                <td>
                                    <input type="text" name="Masters_YrOfPassing" maxlength="30" /></td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td>
                                </td>
                                <td align="center">
                                    (10 char max)</td>
                                <td align="center">
                                    (upto 2 decimal)</td>
                            </tr>
                        </table>
                    </td>
                </tr>
 
<!----- Course ---------------------------------------------------------->
                <tr>
                    <td>
                        <br />COURSES
APPLIED FOR</td>
                    <td>
BCA
                        <input type="radio" name="Course_BCA" value="BCA">
B.Com
                        <input type="radio" name="Course_BCom" value="B.Com">
B.Sc
                        <input type="radio" name="Course_BSc" value="B.Sc">
B.A
                        <input type="radio" name="Course_BA" value="B.A">
                    </td>
                </tr>
 
<!----- Submit and Reset ------------------------------------------------->
                <tr>
                    <td colspan="2" align="center">
&nbsp;&nbsp;
                        <br />
                        <br />
                        <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="button-style" 
        Height="32px" Width="100px"/>
                        <ajaxToolkit:RoundedCornersExtender ID="RoundedCornersExtender1" 
        runat="server" BehaviorID="Button1_RoundedCornersExtender" 
        TargetControlID="Button1" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Text="Reset" CssClass="button-style" 
        Height="31px" Width="90px"/>
                        <ajaxToolkit:RoundedCornersExtender ID="RoundedCornersExtender2" 
        runat="server" BehaviorID="Button2_RoundedCornersExtender" 
        TargetControlID="Button2" />
&nbsp;
                    </td>
                </tr>
            </table>
            </form>
        </body>
    </html>
</asp:Content>

