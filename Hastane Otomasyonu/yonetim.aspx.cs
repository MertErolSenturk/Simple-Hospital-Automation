using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class yonetim : System.Web.UI.Page
{
    DataSet1TableAdapters.yonetimBilgiTableAdapter ajan = new DataSet1TableAdapters.yonetimBilgiTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
        if (ajan.GetDataByAdmin(TextBox1.Text).Count>0)
        {
            if (ajan.GetDataByAdmin(TextBox1.Text).Rows[0][1].ToString()==TextBox2.Text)
            {
                Response.Redirect("yonetimGiris.aspx");
            }
            else
            {
                Label1.Text = "Böyle bir Kayıt Yok";
            }
        }

    }
}