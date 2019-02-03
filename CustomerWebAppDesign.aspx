<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerPage.aspx.cs" Inherits="Shoolroj2.CustomerPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>School Projet2</title>
    <style>
        body{
         width:100vw;
         height:100vh;
         display:flex;
         justify-content:center;
         align-items:center;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            width: 136px;
        }
        .auto-style4 {
            width: 89px;
        }
        .auto-style5 {
            margin-left: 80px;
        }
        .auto-style6 {
            margin-left: 20px;
        }
        .auto-style7 {
            width: 81px;
        }
        .auto-style8 {
            margin-left: 8px;
        }
        .auto-style9 {
            width: 21px;
        }
        .auto-style10 {
            height: 26px;
            width: 67px;
        }
        .auto-style11 {
            width: 67px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="align-items:center; background-color:yellowgreen">
        <div>
            <table style=" margin-left:50px; width:160px auto; height:50px auto">
                <tr >
                    <td class="auto-style10">
                        <asp:TextBox ID="TextBox3" text="Name" runat="server" BackColor="Lime" Width="37px" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 35px" Width="160px" Height="20px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter your name" Text="*" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        <asp:Label ID="Label1" runat="server" Text="Password" BackColor="Lime"></asp:Label>
                        </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 35px" TextMode="Password" Height="20px" Width="160px" OnTextChanged="TextBox2_TextChanged" ClientIDMode="Static" ViewStateMode="Enabled">input your password here
</asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage=" Password required" Text="*" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>
                   
                        </td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        <asp:Label ID="Label2" runat="server" BackColor="Lime" Text="Email"></asp:Label>
                    </td>

                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" style="margin-left: 35px" Height="20px" Width="160px" OnTextChanged="TextBox2_TextChanged" ToolTip="Make sure you enter a valid email adress"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" Display="Dynamic" runat="server" ErrorMessage="Please enter your email address"  ControlToValidate="TextBox4" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" Display="Dynamic" ControlToValidate="TextBox4" SetFocusOnError="true" runat="server" ErrorMessage="Invalid email address" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
            </table>
            <table style="align-items:center; margin-left:20px">

                <tr>
                    <td class="auto-style4">
                        <asp:ListBox ID="ListBox1" runat="server" Width="119px">
                            <asp:ListItem Value="1" Selected="True">Vanilla</asp:ListItem>
                            <asp:ListItem Value="2 ">Chocolate </asp:ListItem>
                            <asp:ListItem Value="3">Strawberry</asp:ListItem>
                        </asp:ListBox>

                    </td>
                    <td class="auto-style9">
                        &nbsp;</td>
                    <td class="auto-style3">
                        <asp:CheckBox ID="CheckBox1" runat="server" Text="Hot Fudge" Checked="True" />
                       
                        <br />
                        <asp:CheckBox ID="CheckBox2" runat="server" Text="Butterscotch" />
                        <br />
                        <asp:CheckBox ID="CheckBox3" runat="server" Text="Nuts " />
                        <br />
                        <asp:CheckBox ID="CheckBox4" runat="server" Text="Whipped Cream" />
                       
                    </td>
                    <td class="auto-style9">
                        &nbsp;</td>
                    <td class="auto-style7">
                        <asp:RadioButton ID="RadioButton1" runat="server" Text="Eat here" GroupName="Location" Checked="True" />
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="RadioButton1" ForeColor="Red" ErrorMessage="This field is required"></asp:RequiredFieldValidator>--%>
                        <br />
                        <asp:RadioButton ID="RadioButton2" runat="server" Text="To go " GroupName="Location" />
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"  ControlToValidate="RadioButton2" ForeColor="Red" ErrorMessage="This field is required"></asp:RequiredFieldValidator>--%>
                    </td>
                </tr>

                <tr>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td class="auto-style9">
                        &nbsp;</td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style9">
                        &nbsp;</td>
                    <td class="auto-style7">
                        &nbsp;</td>
                </tr>
               <tr>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox7" Text=" Flavor" runat="server" BackColor="Lime" Width="60px" AutoCompleteType="Disabled" ReadOnly="True" ToolTip="Select the flavor you like"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        &nbsp;</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox6" Text=" Toppings" runat="server" BackColor="Lime" CssClass="auto-style6" Width="60px" AutoCompleteType="Disabled" ReadOnly="True" ToolTip="Select any of the above toppings"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        &nbsp;</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TextBox5" Text=" Location" runat="server" BackColor="Lime" CssClass="auto-style8" Width="60px" AutoCompleteType="Disabled" ReadOnly="True" ToolTip="Select if you want to eat here or take it away"></asp:TextBox>
                       
                    </td>
                </tr>
               <tr>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td class="auto-style9">
                        &nbsp;</td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style9">
                        &nbsp;</td>
                    <td class="auto-style7">
                        &nbsp;</td>
                </tr>
            </table>
            <table style="align-items:center; margin-left:80px">
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Submit " BackColor="Lime" Font-Bold="True" Height="40px" Width="100px" OnClick="Button1_Click" OnClientClick="return confirm('Are you sure you want to submit this record ?')" />
                    </td>
                   
                    <td>
                         <asp:Button ID="Button2" runat="server" Text="Reset " BackColor="Lime" Font-Bold="True" Height="40px" Width="100px" CssClass="auto-style5" OnClick="Button2_Click" ValidateRequestMode="Disabled" CausesValidation="False" />
                    </td>
                </tr>
               
                <tr>
                    <td>
                        &nbsp;</td>
                   
                    <td>
                         &nbsp;</td>
                </tr>
               
            </table>
            <asp:TextBox ID="TextBox8" style="margin-left:25px" runat="server" Height="250px" Width="360px" Font-Bold="True" Font-Names="Courier New" Font-Overline="False" Font-Size="Larger" ReadOnly="True" TextMode="MultiLine"></asp:TextBox>
            

            <br />

            <br />

        </div>
    </form>
</body>
</html>
