<%@ Page Language="C#" AutoEventWireup="true" CodeFile="activityDetail.aspx.cs" Inherits="activityDetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Repeater ID="Detail" runat="server" DataSourceID="SqlDataSource1" OnItemDataBound="Detail_ItemDataBound">
            <ItemTemplate>
               <h1><%#Eval("title")%></h1>
                <%-- <img src='<%#Eval("picture","{0}")%>'/>--%>
               <h2><%#Eval("text")%></h2>
                  <%-- <asp:Repeater ID="activityPicture" runat="server" >
                       <ItemTemplate>
                               <img src='<%#Eval("picture","{0}")%>'/>
                       </ItemTemplate>
                   </asp:Repeater>--%>
            </ItemTemplate>
        </asp:Repeater> 
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:PingwestConnectionString%>" 
        SelectCommand="SELECT * FROM [Activity] WHERE ([ID] = @ID)">
    <SelectParameters>
        <asp:QueryStringParameter DefaultValue="1" Name="ID" QueryStringField="ID"  Type="Int32" />
    </SelectParameters>
</asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
