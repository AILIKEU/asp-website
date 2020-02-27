using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class servercontrols : System.Web.UI.Page

{

    protected void Page_Load(object sender, EventArgs e)
    {
        Label5.Text = "";
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        CheckBoxList1.RepeatDirection = CheckBox1.Checked ? RepeatDirection.Horizontal : RepeatDirection.Vertical;

    }
    protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBox2.Checked)
        {
            this.CheckBox1.ForeColor = System.Drawing.Color.Red;
            Label1.ForeColor = System.Drawing.Color.Red;
        }
        else
        {
            this.CheckBox1.ForeColor = System.Drawing.Color.White;
            Label1.ForeColor = System.Drawing.Color.White;

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String str = "选择结果 ";

        Label1.Text = "";
        for (int i = 0; i < CheckBoxList1.Items.Count;i++ )
        {
            if(CheckBoxList1.Items[i].Selected){
                str += CheckBoxList1.Items[i].Text + ".";
            }
        }
        if(str.EndsWith(".")== true){
            str = str.Substring(0,str.Length-1);
        }
        Label1.Text = str;
        if (str == "选择结果 ")
        {
            String scriptString = "alert('请做出选择')";
            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "WARNING!", scriptString, true);

        }
        else {
            Label1.Visible = true;
            Label1.Text = str;
        }
    }
    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string str = "";
        Label4.Text = "";
        for (int i = 0; i < ListBox1.Items.Count;i++ )
        {
            if(ListBox1.Items[i].Selected){
                str += ListBox1.Items[i].Text + ".";
            }
        }
        Label4.Text = "你选择了" + str + "课程";
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label3.Text = "你选择了"+DropDownList1.Text+"课程";

    }
    protected void Button2_Click(object sender, EventArgs e)
    {

            Label5.Text = "登录成功";
           
        

    }
}