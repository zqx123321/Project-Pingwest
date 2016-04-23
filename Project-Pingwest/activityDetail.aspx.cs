using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class activityDetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Detail_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        //if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        //{

        //    DataRowView rowv = (DataRowView)e.Item.DataItem;
        //    int ID = Convert.ToInt32(rowv["ID"]);
        //    string select = "select * from activityPicture where activityID=" + ID.ToString();
        //    Repeater rept = (Repeater)e.Item.FindControl("activityPicture");
        //    rept.DataSource = SqlHelper.SelectDS(select);
        //    rept.DataBind();
        //}
    }
}