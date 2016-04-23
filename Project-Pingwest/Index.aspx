<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Index</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/pingwest.css">
</head>
    
<body><form id="form1" runat="server">
       <div class="nav" runat="server">
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
    	<div class="loginform" name="loginform"   runat="server">
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




      <div class="indexBanner">

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
                     <a href='<%# Eval("id", "articleDetail.aspx?ID={0}") %>'>
      <div class="indexBannerImgText">
				<h1>
					 <%# Eval("Title") %>
				</h1>
				<span>
					<%# Eval("summary") %>
				</span>
			</div>
    </div>
                    </a>
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
		


	<div class="indexBannerText clearfix">
			<div class="indexBannerTextDongtai">
				<span>最新动态</span>
			</div>
			<div class="indexBannerTextHot">
				<span>一周热点</span>
			</div>
		</div>
	</div>



        <div class="indexMain">
			<div class="indexMainSlideRight">
			<div class="main1 clearfix">


        <asp:Repeater ID="RptArticle" runat="server" OnItemDataBound="RptArticle_ItemDataBound">
       
            <ItemTemplate>
                <div class="pin">
               <div class="indexAbout">
			 <a href='<%# Eval("id", "articleDetail.aspx?ID={0}") %>'>
                   <img src='<%#Eval("picture","{0}")%>' />
             </a>
			<span>'<%# Eval("Title") %>'</span>
		      </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
            
         </div>
			<%--<input type="button" value="加载更多" onClick="n()" ></input>--%>
                <asp:Button ID="more"  runat="server" Text="加载更多" onclientclick="n()" />
		</div>



           <div class="indexMainSlideLeft">
			<div class="main2 clearfix">
               <asp:Repeater ID="Repeater1" runat="server" OnItemDataBound="RptArticle_ItemDataBound">
       
            <ItemTemplate>
                	<div class="pin">
               <div class="indexAbout">
			 <a href='<%# Eval("id", "articleDetail.aspx?ID={0}") %>'>
                        <img src='<%#Eval("picture","{0}")%>' />
                    </a>
			<span>'<%# Eval("Title") %>'</span>
		</div>
                        </div>
            </ItemTemplate>
        </asp:Repeater>
              </div>
			<%--<input type="button" value="加载更多" onClick="n()" ></input>--%>
                <asp:Button ID="Button1"  runat="server" Text="加载更多" onclientclick="m()" />
		</div>
           </div> 



	<div class="clear"></div>
	<div class="footer">
		<div class="footerLeft">
			<img src="images/logo.png" alt="">
		</div>
		<div class="footerMiddle">
			<div class="footerMiddleList">
				<ul>
					<li><a href="#">关于我们</a></li>
					<li><a href="#">加入我们</a></li>
					<li><a href="#">合作伙伴</a></li>
					<li><a href="#">联系我们</a></li>
					<li><a href="#">品玩活动</a></li>
					<div class="clear"></div>
				</ul>
				<div class="clear"></div>
			</div>
			<div class="footerMiddleText">
				<p>由七牛云存储提供CDN服务© 2016 PingWe</p>
			</div>
		</div>
		<div class="footerRight">
			<div class="footerImg1"></div>
			<div class="footerImg2"></div>
			<div class="footerImg3"></div>
			<div class="footerImg4"></div>
		</div>
		<div class="clear"></div>
	</div>
	<script src="js/jquery-1.11.3.js"></script>
	<script src="js/pingwest.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/html5.js"></script>
	<script src="js/respond.js"></script>
            </form>
</body>
</html>