<%@ Page Language="C#" AutoEventWireup="true" CodeFile="activityList.aspx.cs" Inherits="activityList" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>activityList</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/pingwest.css">
</head>
    
<body><form id="form1" runat="server">
       <div id="Div1" class="nav" runat="server">
			<img src="images/logo.png" alt="">
			<ul class="navUl">
				<li class="navFirstLi">
					<a href="Index.aspx">首页</a>
				</li>
				<li class="navBlock">
					<a href="#">咨询</a>
					<ul class="navSlideDown">
						<li><a href="#">人物</a></li>
						<li><a href="#">现象</a></li>
						<li><a href="#">真相</a></li>
						<li><a href="#">短新闻</a></li>
						<li><a href="#">腔调</a></li>
						<li><a href="#">酷玩</a></li>
					</ul>
				</li>
				<li class="navBlock">
					<a href="Activity.aspx">活动</a>
					<ul class="navSlideDown">
						<li><a href="Activity.aspx">首页</a></li>
						<li><asp:linkbutton ID="BJ" runat="server" OnClick="BJ_Click" Text="北京"></asp:linkbutton></li>
						<li><asp:linkbutton ID="SH" runat="server" OnClick="SH_Click" Text="上海"></asp:linkbutton></li>
						<li><asp:linkbutton ID="GG" runat="server" OnClick="GG_Click" Text="硅谷"></asp:linkbutton></li>
						<li><asp:linkbutton ID="SZ" runat="server" OnClick="SZ_Click" Text="深圳"></asp:linkbutton></li>
						<li><asp:linkbutton ID="AL" runat="server" OnClick="AL_Click" Text="活动一览"></asp:linkbutton></li>
					</ul>
					</li>
				<li><a href="#">专题</a></li>
				<li><a href="#">墨镜</a></li>
				<li><a href="#">物事</a></li>
				<li><a href="#">NO！</a></li>
				<li id="InLi" runat="server" visible="true"><a href="#loginmodal" class="modaltrigger flatbtn"><asp:Label ID="labellogin" runat="server" Text="登录"></asp:Label>
                   </a></li>
                <li id="OutLi" visible="false" runat="server"><asp:LinkButton ID="logOut" runat="server" Text="退出"  OnClick="logOut_Click"></asp:LinkButton></li>
				<li><a href="#">Search</a></li>
				<div class="clear"></div>
			</ul>
		<div class="clear"></div>
	</div>


    <div id="loginmodal" style="display:none;">
    	<img src="images/logo11.png" alt="">
    	<div id="Div2" class="loginform" name="loginform"   runat="server">
      		<label for="username">Username:</label>
      		<%--<input type="text" name="username" id="username" class="txtfield" tabindex="1">--%>
             <asp:TextBox id="username"  runat="server" class="txtfield" tabindex="1"></asp:TextBox>     
      		<label for="password">Password:</label>
      		<%--<input type="password" name="password" id="password" class="txtfield" tabindex="2">--%>
            <asp:TextBox id="password" runat="server" class="txtfield" tabindex="2" TextMode="Password"></asp:TextBox>
      	<div class="center">
      		<%--<input type="submit" name="loginbtn" id="loginbtn" class="flatbtn-blu hidemodal" value="Log In" tabindex="3">--%>
              <asp:Button ID="btnLogin" runat="server" class="flatbtn-blu hidemodal" Text="LOG IN" value="Log In" TabIndex="3" OnClick="btnLogin_Click" />
      	</div>
    	</div>
  </div>

    	<div class="listBanner">
		<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>
             <div class="carousel-inner" role="listbox">
                 <asp:Repeater ID="RptTop" runat="server">
                     <ItemTemplate>
                 <div class=' <%=(i++) <1 ? "item active indexBannerImg" : "item indexBannerImg" %>' >
      <img class="img-responsive" src='<%#Eval("picture","{0}")%>'  alt="...">
    </div>
                     </ItemTemplate>
                 </asp:Repeater>


                   </div>
             <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
	</div>


    <div class="listMain">
		<div class="actMainnav listMainnav">
			<ul>
				<li >/&nbsp<asp:linkbutton ID="ALL" runat="server" Text="ALL" OnClick="ALL_Click"></asp:linkbutton>&nbsp</li>
				<li >/&nbsp<asp:linkbutton ID="ShangHai" runat="server" Text="上海" OnClick="ShangHai_Click"></asp:linkbutton>&nbsp</li>
				<li >/&nbsp<asp:linkbutton ID="BeiJing" runat="server" Text="北京" OnClick="BeiJing_Click"></asp:linkbutton>&nbsp</li>
				<li >/&nbsp<asp:linkbutton ID="Taibei" runat="server" Text="台北" OnClick="Taibei_Click"></asp:linkbutton> &nbsp</li>
				<li >/&nbsp<asp:linkbutton ID="Recommend" runat="server" Text="推荐" OnClick="Recommend_Click"></asp:linkbutton>&nbsp</li>
				<li >/&nbsp<asp:linkbutton ID="ShenZhen" runat="server" Text="深圳" OnClick="ShenZhen_Click"></asp:linkbutton>&nbsp</li>
				<li >/&nbsp<asp:linkbutton ID="GuiGU" runat="server" Text="硅谷" OnClick="GuiGU_Click"></asp:linkbutton>&nbsp/</li>
				<div class="clear"></div>
			</ul>
		</div>
        <div class="listMainContact">
            <asp:Repeater ID="List" runat="server">
                     <ItemTemplate>
                       <%-- <div class="listMainContactText">                      
                            <a href="#listContact" class="modaltrigger" ><img src='<%#Eval("picture","{0}")%>' alt=""></a>
				         <div class="listMainContactText1">
					     <h1><a href="#listContact" class="modaltrigger"> <%# Eval("Title") %></a></h1>
					     <p><%# Eval("summary") %></p>			
				         </div>
				         <div class="clear"></div>
			            </div> 
                         <div id="listContact" style="display:none;">
                             <h1> <%# Eval("Title") %></h1>
		                 <%-- <%--<img src='<%#Eval("picture","{0}")%>' alt="">--%>
		                  <%-- <%# Eval("text") %> 
	                     </div>--%>
                         <div class="listMainContactText">
				<a href=".listContact" class="modaltrigger"><img src='<%#Eval("picture","{0}")%>' alt=""></a>
				<div class="listMainContactText1">
					<h1><a href=".listContact" class="modaltrigger"><%# Eval("Title") %></a></h1>
					<p><%# Eval("summary") %></p>
				</div>
				<div class="clear"></div>
			</div>
                         <div class="listContact" style="display:none;">
                              <h1> <%# Eval("Title") %></h1>
                             <%# Eval("text") %>
                             </div>
       
                     </ItemTemplate>
           </asp:Repeater>
          </div>
	</div>


	<script src="js/jquery-1.11.3.js"></script>
	<script src="js/pingwest.js"></script>
	<script src="js/bootstrap.min.js"></script></form>
</body>
</html>