using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace College_Job_Portal.admin
{
    public partial class forgot : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            string user = TextBox1.Text;
            string MySqlConnect = ConfigurationManager.ConnectionStrings["MySqlConnect"].ConnectionString;
            using (MySqlConnection con = new MySqlConnection(MySqlConnect))
            {
                con.Open();
                MySqlCommand cmd = con.CreateCommand();
                MySqlDataAdapter MData = new MySqlDataAdapter();
                DataSet DS = new DataSet();
                cmd.CommandText = "update login set pass = 123 where user='" + user+ "'";
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                int x = cmd.ExecuteNonQuery();
                
                if (x > 0)
                {
                    Label1.Text = "重置成功，初始密码为123";
                }
                else
                {
                    Label1.Text = "账号错误或不存在";
                }
                con.Close();

            }
        }
    }
}