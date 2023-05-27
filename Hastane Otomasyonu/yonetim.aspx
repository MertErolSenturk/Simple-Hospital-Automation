<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="yonetim.aspx.cs" Inherits="yonetim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
    {
        width: 91%;
            margin-right: 48px;
        }
    .style2
    {
        width: 107px;
    }
    .style3
    {
        width: 107px;
        height: 19px;
    }
    .style4
    {
        height: 19px;
            width: 656px;
        }
        .style5
        {
            width: 656px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td class="style2">
            Kullanıcı Adı:</td>
        <td class="style5">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <td class="style5" rowspan="4">
            
            <img src="images/adminLogo.png" alt="Alternate Text" /></td>
    </tr>
    <tr>
        <td class="style3">
            Parola:</td>
        <td class="style4">
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style2">
            </td>
        <td class="style5">
            </td>
    </tr>
    <tr>
        <td class="style2">
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="GİRİŞ" 
                Width="110px" />
        </td>
        <td class="style5">
            <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

