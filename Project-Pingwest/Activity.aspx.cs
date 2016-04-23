using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Activity : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindRepeaterDataALL();
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
    private void BindRepeaterDataALL()
    {
        string sqlSelect = "select * from Activity";
        DataTable dt = SqlHelper.Select(sqlSelect);
        this.List.DataSource = dt;
        this.List.DataBind();
    }
    private void BindRepeaterDataTop()
    {
        //string sqlSelect = "select top 3 * from Activity order by time";
        //DataTable dt = SqlHelper.Select(sqlSelect);
        //this.RptTop.DataSource = dt;
        //this.RptTop.DataBind();
    }
    private void BindRepeaterDatanBJ()
    {
        string sqlSelect = "select * from Activity where place=N'北京'";
        DataTable dt = SqlHelper.Select(sqlSelect);
        this.List.DataSource = dt;
        this.List.DataBind();
    }
    private void BindRepeaterDatanTB()
    {
        string sqlSelect = "select * from Activity where place=N'台北'";
        DataTable dt = SqlHelper.Select(sqlSelect);
        this.List.DataSource = dt;
        this.List.DataBind();
    }
    private void BindRepeaterDatanGG()
    {
        string sqlSelect = "select * from Activity where place=N'硅谷'";
        DataTable dt = SqlHelper.Select(sqlSelect);
        this.List.DataSource = dt;
        this.List.DataBind();

    }
    private void BindRepeaterDatanSZ()
    {
        string sqlSelect = "select * from Activity where place=N'深圳'";
        DataTable dt = SqlHelper.Select(sqlSelect);
        this.List.DataSource = dt;
        this.List.DataBind();
    }
    private void BindRepeaterDatanSH()
    {
        string sqlSelect = "select * from Activity where place=N'深圳'";
        DataTable dt = SqlHelper.Select(sqlSelect);
        this.List.DataSource = dt;
        this.List.DataBind();
    }
    private void BindRepeaterDatanRe()
    {
        string sqlSelect = "select * from Activity where recommend=1";
        DataTable dt = SqlHelper.Select(sqlSelect);
        this.List.DataSource = dt;
        this.List.DataBind();
    }
    protected void ALL_Click(object sender, EventArgs e)
    {
        BindRepeaterDataALL();
    }
    protected void ShangHai_Click(object sender, EventArgs e)
    {
        BindRepeaterDatanSH();
    }
    protected void BeiJing_Click(object sender, EventArgs e)
    {
        BindRepeaterDatanBJ();
    }
    protected void Taibei_Click(object sender, EventArgs e)
    {
        BindRepeaterDatanTB();
    }
    protected void Recommend_Click(object sender, EventArgs e)
    {
        BindRepeaterDatanRe();
    }
    protected void ShenZhen_Click(object sender, EventArgs e)
    {
        BindRepeaterDatanSZ();
    }
    protected void GuiGU_Click(object sender, EventArgs e)
    {
        BindRepeaterDatanGG();
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        if (username.Text.Trim() == "") Response.Write("<script>alert('用户名不能为空')</script>");
        else
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

    }
    protected void logOut_Click(object sender, EventArgs e)
    {
        Session["name"] = null;
        Response.Write("<script>alert('退出成功'),location='Activity.aspx'</script>");

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