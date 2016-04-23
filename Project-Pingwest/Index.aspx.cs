using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Index : System.Web.UI.Page
{
    protected int i=0;
    protected string type = " ";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindRepeaterDatanew();
            BindRepeaterDataTop();

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
    }
    private void BindRepeaterDatanew()
    {
        string sqlSelect = "select * from Article ";
        DataTable dt = SqlHelper.Select(sqlSelect);
        this.RptArticle.DataSource = dt;
        this.RptArticle.DataBind();
        this.Repeater1.DataSource = dt;
        this.Repeater1.DataBind();
    }
    private void BindRepeaterDataTop()
    {
        string sqlSelect = "select top 3 * from Article  where id<>3 order by time";
        DataTable dt = SqlHelper.Select(sqlSelect);
        this.RptTop.DataSource = dt;
        this.RptTop.DataBind();
        this.Repeater1.DataSource = dt;
        this.Repeater1.DataBind();
    }
    private void BindRepeaterDatahot()
    {
        string sqlSelect = "select * from Article where ishot=1";
        DataTable dt = SqlHelper.Select(sqlSelect);
        this.RptArticle.DataSource = dt;
        this.RptArticle.DataBind();
        this.Repeater1.DataSource = dt;
        this.Repeater1.DataBind();
    }
    protected void new_Click(object sender, EventArgs e)
    {
        BindRepeaterDatanew();
    }
    protected void hot_Click(object sender, EventArgs e)
    {
        BindRepeaterDatahot();
    }
    protected void RptArticle_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
                //switch (e.Item.ItemIndex + 1)
                //{
                //    case 1: type = "indexAbout indexMainBuild11"; break;
                //    case 2: type = "indexAbout indexMain433"; break;
                //    case 3: type = "indexAbout indexMainLeijun"; break;
                //    case 4: type = "indexAbout indexMainHover"; break;
                //    case 5: type = "indexAbout indexMainBuild8"; break;
                //    case 6: type = "indexAbout indexMainHuami"; break;
                //    case 7: type = "indexAbout indexMain495"; break;

                //}
        }
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string name = username.Text;
        string passwordHash = SqlHelper.getHash.getSHA1(password.Text);
        string sql = "select * from [User] where username=N'" +  name + "'";
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
        Response.Write("<script>alert('退出成功'),location='Index.aspx'</script>");

    }
    protected void BJ_Click(object sender, EventArgs e)
    {
        Response.Write("<script>location='activityList.aspx'</script>");
        Session["place"] =BJ.Text;

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