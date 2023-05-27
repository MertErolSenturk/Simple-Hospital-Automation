using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class hastaKayit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSet1TableAdapters.hastaBilgiTableAdapter ekle = new DataSet1TableAdapters.hastaBilgiTableAdapter();
        ekle.InsertQueryEkle(TextBox1.Text, TextBox2.Text, RadioButtonList1.Text, DropDownList1.Text, "hastalar/" + FileUpload1.FileName);
        Label2.Text = "Kayıt Başarılı";

    }
}