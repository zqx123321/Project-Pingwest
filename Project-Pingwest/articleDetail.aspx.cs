using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class articleDetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] != null)
        {
            labellogin.Visible = false;
            InLi.Visible = false;
            OutLi.Visible = true;
        }
        else
        {
            labellogin.Visible = true;
            InLi.Visible = true;
            OutLi.Visible = false;

        }

    }
    //protected void Detail_ItemCommand(object source, RepeaterCommandEventArgs e)
    //{
       
    //}
    protected void Detail_ItemDataBound(object sender, RepeaterItemEventArgs e)
    { 
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {

            //DataRowView rowv = (DataRowView)e.Item.DataItem;
            //int ID = Convert.ToInt32(rowv["ID"]);
            //string select = "select * from articlePicture where articleID=" + ID.ToString();
            //Repeater rept = (Repeater)e.Item.FindControl("articlePicture");
            //rept.DataSource = SqlHelper.SelectDS(select);
            //rept.DataBind();
        }

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string name = username.Text;
        string passwordHash = SqlHelper.getHash.getSHA1(password.Text);
        string sql = "select * from [User] where username=N'" + name + "'";
        int result = 0;
        result = SqlHelper.SqlExecute(sql);
        if (result > 0)
        {
            string sql2 = "select * from [User] where username=N'" + name + "'and password='" + passwordHash + "'";
            int result2 = 0;
            result2 = SqlHelper.SqlExecute(sql2);
            if (result2 > 0)
            {
                //sendCookie(name, passwordHash);
                Response.Write("<script>alert('登录成功')</script>");
                Session["name"] = name;
                labellogin.Visible = false;
                //logout.Visible = true;
                InLi.Visible = false;
                OutLi.Visible = true;

            }
            else
                Response.Write("<script>alert('密码错误')</script>");
        }
        else
        {
            Response.Write("<script>alert('用户名不存在')</script>");
        }

    }
    protected void logOut_Click(object sender, EventArgs e)
    {
        Session["name"] = null;
        Response.Write("<script>alert('退出成功'),location='articleDetail.aspx'</script>");

    }
    protected void BJ_Click(object sender, EventArgs e)
    {
        Response.Write("<script>location='activityList.aspx'</script>");
        Session["place"] = BJ.Text;

    }
    protected void SH_Click(object sender, EventArgs e)
    {
        Response.Write("<script>location='activityList.aspx'</script>");
        Session["place"] = SH.Text;
    }
    protected void GG_Click(object sender, EventArgs e)
    {
        Response.Write("<script>location='activityList.aspx'</script>");
        Session["place"] = GG.Text;
    }
    protected void SZ_Click(object sender, EventArgs e)
    {
        Response.Write("<script>location='activityList.aspx'</script>");
        Session["place"] = SZ.Text;
    }
    protected void AL_Click(object sender, EventArgs e)
    {
        Response.Write("<script>location='activityList.aspx'</script>");
        Session["place"] = "all";
    }

}