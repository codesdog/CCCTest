<html>
<head>
<title><%= title %> - 管理页面</title>
<script language=JavaScript>
function logout(){
	if (confirm("您确定要退出控制面板吗？"))
	top.location = "out.asp";
	return false;
}
</script>
<script language=JavaScript1.2>
function showsubmenu(sid) {
	var whichEl = eval("submenu" + sid);
	var menuTitle = eval("menuTitle" + sid);
	if (whichEl.style.display == "none"){
		eval("submenu" + sid + ".style.display=\"\";");
	}else{
		eval("submenu" + sid + ".style.display=\"none\";");
	}
}
</script>
<meta http-equiv=Content-Type content=text/html;charset=gb2312>
<meta http-equiv="refresh" content="60">
<script language=JavaScript1.2>
function showsubmenu(sid) {
	var whichEl = eval("submenu" + sid);
	var menuTitle = eval("menuTitle" + sid);
	if (whichEl.style.display == "none"){
		eval("submenu" + sid + ".style.display=\"\";");
	}else{
		eval("submenu" + sid + ".style.display=\"none\";");
	}
}
</script>
<base target="main">
<link href="images/skin.css" rel="stylesheet" type="text/css">
</head>
<body leftmargin="0" topmargin="0">
<table width="100%" height="64" border="0" cellpadding="0" cellspacing="0" class="admin_topbg">
  <tr>
    <td width="61%" height="64"><img src="images/logo.gif" width="262" height="64" align="top"></td>
    <td width="39%" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="69%" height="38" class="admin_txt">管理员：<b><%=session("m_user")%></b> 您好,感谢登陆使用！</td>
       
		 <td width="9%"><a href="../Index.asp" target="_blank" ><img src="images/indexshop.gif" alt="访问商城首页" width="66" height="20" border="0"></a>&nbsp;&nbsp </td>
        <td width="9%"><a href="#" target="_self" onClick="logout();"><img src="images/out.gif" alt="安全退出" width="46" height="20" border="0"></a>&nbsp;&nbsp </td>
        <td width="1%">&nbsp;</td>
      </tr>
      <tr>
        <td height="19" colspan="4">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>
