<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="GuestBook.aspx.cs" Inherits="Web.GuestBook" Title="留言本" %>
<%@ Register TagPrefix="uc1" TagName="uc_LeftContents"   Src="~/LeftContents.ascx"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table width="780" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="150" background="images/bn6.jpg">&nbsp;</td>
  </tr>
</table>
<table width="780" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <td height="32" class="xia2"> 　　首页 &gt; 服务中心 &gt; 在线留言
    </td>
  </tr>
</table>
<table width="780" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <td width="200" valign="top" class="you"><table width="200" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="50"><div align="center"><img src="images/left5.jpg" width="190" height="30" /></div></td>
      </tr>
      <tr>
        <td height="28">              <div align="left"> 
              	<!--左边自定义控件-->
              <uc1:uc_LeftContents id="LeftContents" runat="server" ></uc1:uc_LeftContents>
              </div></td>
      </tr>
    </table></td>
    <td width="580"><table width="550" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td align="center" valign="top">
            <div style="width:100%;text-align:left;">            
            <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
                  <tr> 
                    <td align="left" background="image/qy11_120.gif" height="29"><span style="padding-left:60px;font-weight:bold;">在线留言</span></td>
                  </tr>
                </table>
                <table width="100%" height="8" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
                  <tr> 
                    <td align="center">&nbsp;</td>
                  </tr>
                </table>
            <table width="100%" height="25" border="0" cellpadding="0" cellspacing="0">
      <form name="form" method="post" action="?Action=send" onsubmit="return checkinput(form)" autocomplete = "off">
        <tr> 
          <td width="15%" height="25" align="right" class="font1">标题：</td>
          <td> <input name="topic" type="text" size="45" class="input3"></td>
        </tr>
        <tr> 
          <td height="25" align="right" class="font1">您的姓名：</td>
          <td><input name="myname" type="text" size="25" class="input3"> 
            <font color="#FF0000">*</font></td>
        </tr>
        <tr> 
          <td height="25" align="right" class="font1">公司：</td>
          <td><input name="corpname" type="text" size="45" class="input3"></td>
        </tr>
        <tr> 
          <td height="25" align="right" class="font1">地址：</td>
          <td><input name="address" type="text" size="45" class="input3"></td>
        </tr>
        <tr> 
          <td height="25" align="right" class="font1">电话：</td>
          <td><input name="phone" type="text" size="45" class="input3"></td>
        </tr>
        <tr> 
          <td height="25" align="right" class="font1">传真：</td>
          <td><input name="fax" type="text" size="35" class="input3"></td>
        </tr>
        <tr> 
          <td height="25" align="right" class="font1">E-mail：</td>
          <td><input name="email" type="text" size="45" class="input3"> 
            <font color="#FF0000">*</font></td>
        </tr>
        <tr> 
          <td align="right" class="font1">内容：</td>
          <td><textarea name="content" cols="45" rows="6" class="input3"></textarea></td>
        </tr>
        <tr> 
          <td align="right" class="font1">&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
      </table>
            <table width="80%" border="0" cellspacing="0" cellpadding="0">
                      <tr> 
                        <td align=center height=30 valign=middle> <br>
                          &nbsp;&nbsp;&nbsp;&nbsp; </td>
                        <td height=30 valign=middle> 
                          <input type="submit" name="Submit3" value="发送" style="font-size: 12px; color: white; border: 1px; width: 50px; height: 21 px; background-color: #0066CC">
                          &nbsp;&nbsp; 
                          <input type="button" name="button3" value="重填" style="font-size: 12px; color: white; border: 1px; width: 50px; height: 21 px; background-color: #0066CC" onClick="form.reset();form('myname').focus();return false;">
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                      </tr>
            </form>
            </table>
		
<script language=Javascript>
	var flag=true;
	function checkinput(form)
	{
		if(form("content").value=="")
			{alert("留言内容不能为空!");form("content").focus();flag=false;return flag;}else{flag=true;}
		if(form("myname").value=="")
			{alert("请填入你的姓名!");form("myname").focus();flag=false;return flag;}else{flag=true;}	
//		if(form("topic").value=="")
//			{alert("请输入留言标题!");form("topic").focus();flag=false;return flag;}else{flag=true;}	
		if(form("email").value=="")
			{alert("请输入你的电子邮件地址!");form("email").focus();flag=false;return flag;}else{flag=true;}
		if(form("email").value.search("@")==-1)
			{alert("你的电子邮件地址填写有误，请检查输入!");form("email").focus();flag=false;return flag;}else{flag=true;}

//		if (flag==true) {flag=checkchar(form("topic").value)} 
		if (flag==true) {flag=checkchar(form("email").value)} 
		if (flag==true) {flag=checkchar(form("myname").value)} 
		if (flag==true) {flag=checkchar(form("address").value)} 
//		if (flag==true) {flag=checkchar(form("corpname").value)} 
		if (flag==true) {flag=checkchar(form("phone").value)} 
//		if (flag==true) {flag=checkchar(form("fax").value)} 
		
		return flag;
	}

	function checkchar(str)
	{
		str=str.toLowerCase()
		oldstr=str
		str="2"+str
		if (str.search("<"+"%")>0)  
		{
			window.alert("("+oldstr+")中有非法字符,请检查!");
			return false;
		}
		if (str.search("<scrip"+"t")>0)
		{
			window.alert("("+oldstr+")中有非法字符,请检查!");
			return false;
		}
		if (str.search("'")>0)
		{
			window.alert("("+oldstr+")中有非法字符,请检查!");
			return false;
		}
		if (str.search('"')>0)
		{
			window.alert("("+oldstr+")中有非法字符,请检查!");
			return false;
		}
		return true;
	}
	
	function checkcharbody(str)
	{
		str=str.toLowerCase()
		oldstr=str
		str="2"+str
		if (str.search("<"+"%")>0)  
		{
			window.alert("("+oldstr+")中有非法字符,请检查!");
			return false;
		}
		if (str.search("<scrip"+"t")>0)
		{
			window.alert("("+oldstr+")中有非法字符,请检查!");
			return false;
		}

		return true;
	}
	
</script>
                <table width="96%" height="8" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
                  <tr> 
                    <td align="center" height="40">&nbsp;</td>
                  </tr>
                </table>
             </div>
            </td>
      </tr>
      <tr>
    </table></td>
  </tr>
</table>
</asp:Content>
