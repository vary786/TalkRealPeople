using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        if(User.Identity.IsAuthenticated)
        {
            Response.Redirect("chat.aspx");
        }
        loadingIcon.Attributes.CssStyle.Add("opacity", "0");
        ButtonLogin.Attributes.CssStyle.Add("cursor", "allowed");

    }

    protected void ButtonLogin_Click(object sender, EventArgs e)
    {
        Page.Validate();
        if (Page.IsValid)
        {

            string conString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\var\Desktop\asp.net\p3\ProjectWeMate\App_Data\Database.mdf;Integrated Security=True";
            SqlConnection sqlconn = new SqlConnection(conString);
            try

            {
                
                string str = "Select COUNT(*) from UserDatabase where Username = @uname AND Password = @pass";
                SqlCommand comm = new SqlCommand(str, sqlconn);
                comm.Parameters.AddWithValue("@uname", Server.HtmlEncode(TextBoxUN.Text));
                comm.Parameters.AddWithValue("@pass", Server.HtmlEncode(TextBoxPass.Text));
            //    Response.Write("<script>alert('loging-------------')</script>");
                sqlconn.Open();
                int status = Convert.ToInt32(comm.ExecuteScalar());
                sqlconn.Close();
                if (status == 1)
                {
                    string OnlineStatusStr = "update UserDatabase set OnlineStatus = 1 where Username = @uname";
                    SqlCommand comm1 = new SqlCommand(OnlineStatusStr, sqlconn);
                    comm1.Parameters.AddWithValue("@uname", Server.HtmlEncode(TextBoxUN.Text));
                    sqlconn.Open();
                    comm1.ExecuteNonQuery();
                    sqlconn.Close();
                    InfoLabel.Text = "<p style='color:green' > Done!! </p>";
                    FormsAuthentication.RedirectFromLoginPage(Server.HtmlEncode(TextBoxUN.Text), RememberMeCheckBox.Checked);
                    Response.Redirect("chat.aspx");
                   
                }
                else
                {
                    InfoLabel.Text = "<p style='color:red' > Username or Password is Wrong!! </p>";
                }
                loadingIcon.Attributes.CssStyle.Add("opacity", "0");

            }
            catch (Exception ex)
            {
                InfoLabel.Text = "<p style='color:red' > Error: " + ex.Message + "</p>";
                loadingIcon.Attributes.CssStyle.Add("opacity", "0");
            }
            finally
            {
                sqlconn.Close();
            }
        }

    }

    
}