<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="hastaKayit.aspx.cs" Inherits="hastaKayit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 123px;
        }
        .style3
        {
            width: 115px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="style1">
        <tr>
            <td class="style2">
                TC KİMLİK NO:</td>
            <td class="style3">
                <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" 
                    ontextchanged="TextBox1_TextChanged" MaxLength="11"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Kan Grubu:</td>
            <td class="style3">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>A+</asp:ListItem>
                    <asp:ListItem>AB</asp:ListItem>
                    <asp:ListItem>A-</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Cinsiyet:</td>
            <td class="style3">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem>Erkek</asp:ListItem>
                    <asp:ListItem>Kadın</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td rowspan="4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Ad Soyad:</td>
            <td class="style3">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Fotoğraf:</td>
            <td class="style3">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td class="style3">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Kaydet" 
                    Width="110px" />
            </td>
        </tr>
    </table>

</asp:Content>

