using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class database : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        selectAll(sender,e);
    }
    public void selectAll(object sender,EventArgs e) {
        String sqlconnstr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection sqlconn = new SqlConnection(sqlconnstr);
        //创建Command对象
        SqlCommand sqlcommand = new SqlCommand();
        sqlcommand.Connection = sqlconn;
        sqlconn.Open();
        String text = "<table cellspacing='10'>";
        text += "<tr>";
        text += "<td>学号</td>";
        text += "<td>姓名</td>";
        text += "<td>性别</td>";
        text += "<td>年龄</td>";
        text += "<td>地址</td>";

        text += "</tr>";
        //SQL命令
        sqlcommand.CommandText = "select * from student";
        SqlDataReader sqldatareader = sqlcommand.ExecuteReader();
        while (sqldatareader.Read())
        {
            text += "<tr>";
            text += "<td>" + sqldatareader["No"].ToString() + "</td>";
            text += "<td>" + sqldatareader["Name"].ToString() + "</td>";
            text += "<td>" + sqldatareader["Sex"].ToString() + "</td>";
            text += "<td>" + sqldatareader["Age"].ToString() + "</td>";
            text += "<td>" + sqldatareader["Address"].ToString() + "</td>";
            text += "</tr>";
        }

        text += "</table>";
        Label1.Text = text;
        sqlcommand = null;
        sqlconn.Close();
        sqlconn = null;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    //删除
    protected void Button2_Click(object sender, EventArgs e)
    {
        int intDeleteCount;
        String sqlconnstr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection sqlconn = new SqlConnection(sqlconnstr);
        //创建Command对象
        SqlCommand sqlcommand = new SqlCommand();
        sqlcommand.Connection = sqlconn;
        sqlcommand.CommandText ="delete from student where no=@no";
        sqlcommand.Parameters.AddWithValue("@no",TextBox1.Text);
        try{
            sqlconn.Open();
            intDeleteCount = sqlcommand.ExecuteNonQuery();
            if(intDeleteCount > 0){
                Label2.Text = "sql删除成功";
                selectAll(sender, e);
            }else{
                Label2.Text ="该记录不存在";
            }

        }catch(Exception ex){
            Label2.Text = "错误原因"+ ex.Message;
        }
        finally{
        sqlcommand = null;
        sqlconn.Close();
        sqlconn = null;
        }
    }
    //插入
    protected void Button4_Click(object sender, EventArgs e)
    {
        int intInsertCount;
        String sqlconnstr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection sqlconn = new SqlConnection(sqlconnstr);
        //创建Command对象
        SqlCommand sqlcommand = new SqlCommand();
        sqlcommand.Connection = sqlconn;
        sqlcommand.CommandText = "insert into student(no,name,sex,age,address) values(@no,@name,@sex,@age,@address)";
        sqlcommand.Parameters.AddWithValue("@no",TextBox6.Text);
        sqlcommand.Parameters.AddWithValue("@name", TextBox7.Text);
        sqlcommand.Parameters.AddWithValue("@sex", DropDownList2.Text);
        sqlcommand.Parameters.AddWithValue("@age", TextBox8.Text);
        sqlcommand.Parameters.AddWithValue("@address", TextBox9.Text);
        try
        {
            sqlconn.Open();
            intInsertCount = sqlcommand.ExecuteNonQuery();
            if (intInsertCount > 0)
            {
                Label3.Text = "sql插入成功";
                selectAll(sender, e);
            }
            else
            {
                Label3.Text = "该记录已存在";
            }

        }
        catch (Exception ex)
        {
            Label3.Text = "错误原因" + ex.Message;
        }
        finally
        {
            sqlcommand = null;
            sqlconn.Close();
            sqlconn = null;
        }
    }
    //更新
    protected void Button3_Click(object sender, EventArgs e)
    {
        int intUpdateCount;
        String sqlconnstr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection sqlconn = new SqlConnection(sqlconnstr);
        //创建Command对象
        SqlCommand sqlcommand = new SqlCommand();
        sqlcommand.Connection = sqlconn;
        sqlcommand.CommandText = "update student set name=@name,sex=@sex,age=@age,address=@address where no=@no";
        sqlcommand.Parameters.AddWithValue("@no", TextBox2.Text);
        sqlcommand.Parameters.AddWithValue("@name", TextBox5.Text);
        sqlcommand.Parameters.AddWithValue("@sex", DropDownList1.Text);
        sqlcommand.Parameters.AddWithValue("@age", TextBox3.Text);
        sqlcommand.Parameters.AddWithValue("@address", TextBox4.Text);
        try
        {
            sqlconn.Open();
            intUpdateCount = sqlcommand.ExecuteNonQuery();
            if (intUpdateCount > 0)
            {
                Label3.Text = "sql更新成功";
                selectAll(sender, e);
            }
            else
            {
                Label3.Text = "记录不存在";
            }

        }
        catch (Exception ex)
        {
            Label3.Text = "错误原因" + ex.Message;
        }
        finally
        {
            sqlcommand = null;
            sqlconn.Close();
            sqlconn = null;
        }
    }
}