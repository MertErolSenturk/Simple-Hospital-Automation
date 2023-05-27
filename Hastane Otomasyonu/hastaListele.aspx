<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="hastaListele.aspx.cs" Inherits="hastaListele" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
        width: 199px;
    }
    .style3
    {
        width: 199px;
        height: 272px;
    }
    .style4
    {
        height: 272px;
    }
    .style5
    {
        width: 199px;
        height: 19px;
    }
    .style6
    {
        height: 19px;
    }
    .style7
    {
        width: 199px;
        height: 30px;
    }
    .style8
    {
        height: 30px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="style1">
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td>
            <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                DataFile="\App_Data\medicalClinic.accdb" 
                DeleteCommand="DELETE FROM [hastaBilgi] WHERE [tcKimlik] = @tcKimlik" 
                InsertCommand="INSERT INTO [hastaBilgi] ([tcKimlik], [adSoyad], [cinsiyet], [kanGrubu], [foto]) VALUES (?, ?, ?, ?, ?)" 
                SelectCommand="SELECT * FROM [hastaBilgi]" 
                UpdateCommand="UPDATE [hastaBilgi] SET [adSoyad] = @adSoyad, [cinsiyet] = @cinsiyet, [kanGrubu] = @kanGrubu, [foto] = @foto WHERE [tcKimlik] = @tcKimlik">
                <DeleteParameters>
                    <asp:Parameter Name="tcKimlik" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="tcKimlik" Type="String" />
                    <asp:Parameter Name="adSoyad" Type="String" />
                    <asp:Parameter Name="cinsiyet" Type="String" />
                    <asp:Parameter Name="kanGrubu" Type="String" />
                    <asp:Parameter Name="foto" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="adSoyad" Type="String" />
                    <asp:Parameter Name="cinsiyet" Type="String" />
                    <asp:Parameter Name="kanGrubu" Type="String" />
                    <asp:Parameter Name="foto" Type="String" />
                    <asp:Parameter Name="tcKimlik" Type="String" />
                </UpdateParameters>
            </asp:AccessDataSource>
            <asp:AccessDataSource ID="AccessDataSource3" runat="server" 
                DataFile="\App_Data\medicalClinic.accdb" 
                SelectCommand="SELECT * FROM [hastaBilgi] WHERE ([adSoyad] = ?)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="adSoyad" PropertyName="Text" 
                        Type="String" />
                </SelectParameters>
            </asp:AccessDataSource>
        </td>
    </tr>
    <tr>
        <td class="style3">
        </td>
        <td class="style4">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                DataKeyNames="tcKimlik" DataSourceID="AccessDataSource1" ForeColor="#333333" 
                GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ButtonType="Image" CancelImageUrl="~/images/cancel.png" 
                        DeleteImageUrl="~/images/delete.png" EditImageUrl="~/images/edit.png" 
                        ShowDeleteButton="True" ShowEditButton="True" UpdateImageUrl="~/images/update.png" />
                    <asp:TemplateField HeaderText="tcKimlik" SortExpression="tcKimlik">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("tcKimlik") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="adSoyad" HeaderText="adSoyad" 
                        SortExpression="adSoyad" />
                    <asp:BoundField DataField="cinsiyet" HeaderText="cinsiyet" 
                        SortExpression="cinsiyet" />
                    <asp:BoundField DataField="kanGrubu" HeaderText="kanGrubu" 
                        SortExpression="kanGrubu" />
                    <asp:TemplateField HeaderText="foto" SortExpression="foto">
                        <EditItemTemplate>
                            <asp:Label ID="Label2" runat="server"></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Bind("foto") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td class="style5">
            HASTA ARA:</td>
        <td class="style6">
        </td>
    </tr>
    <tr>
        <td class="style7">
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                RepeatDirection="Horizontal">
                <asp:ListItem>Ad Soyad</asp:ListItem>
            </asp:RadioButtonList>
        </td>
        <td class="style8">
        </td>
    </tr>
    <tr>
        <td class="style2">
            <asp:TextBox ID="TextBox1" runat="server" Width="177px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="ARA" 
                Width="193px" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>

</asp:Content>

