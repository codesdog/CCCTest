<%@ Page Language="C#" AutoEventWireup="true" CodeFile="left0.aspx.cs" Inherits="system80_left" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>�����̨�˵�</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" type="text/css" id="css" href="images/M1.css">
<script src="images/common.js" type="text/javascript"></script>
<script>
var collapsed = getcookie('cdb_collapse');
function collapse_change(menucount) {
	if($('menu_' + menucount).style.display == 'none') {
		$('menu_' + menucount).style.display = '';collapsed = collapsed.replace('[' + menucount + ']' , '');
		$('menuimg_' + menucount).src = 'images/menu_reduce.gif';
	} else {
		$('menu_' + menucount).style.display = 'none';collapsed += '[' + menucount + ']';
		$('menuimg_' + menucount).src = 'images/menu_add.gif';
	}
	setcookie('cdb_collapse', collapsed, 2592000);
}
</script>
</head>
<body style="margin:5px!important;margin:3px;">
    <form id="form1" runat="server">
  <table width="146" border="0" cellspacing="0" align="center" cellpadding="0" class="leftmenulist" style="margin-bottom: 5px;">
	<tr class="leftmenutext">
		<td>
			<div align="center"><a href="../index.aspx" target="_blank">��վ��ҳ</a>&nbsp;&nbsp;<a href="index.aspx" target="_parent">��̨��ҳ</a></div>
	  </td>
	</tr>
</table>
<div id="home">
	<table width="146" border="0" cellspacing="0" align="center" cellpadding="0" class="leftmenulist" style="margin-bottom: 5px;">
		<tr class="leftmenutext">
			<td><a href="#" onClick="collapse_change(1)"><img id="menuimg_1" src="images/menu_add.gif" border="0"/></a>&nbsp;<a href="#" onClick="collapse_change(1)">��������</a></td>
		</tr>
		<tbody id="menu_1" style="display:none">
			<tr class="leftmenutd">
				<td>
					<table width="100" border="0" cellpadding="0" cellspacing="0" class="leftmenuinfo">
				    <tr >
				      <td><a href="modifyconfig.aspx" target="main">��վ��������</a></td>
				    </tr>
						<tr>
						  <td><a href="PersonInfo.aspx?action=add" target="main">����Ա����</a></td>
					  </tr>
					
					  </tr>
						<tr>
						  <td><a href="admin_count.asp" target="main">��̨��½��¼</a></td>
					  </tr>
					</table>
			  </td>
			</tr>
		</tbody>
	</table>
	<table width="146" border="0" cellspacing="0" align="center" cellpadding="0" class="leftmenulist" style="margin-bottom: 5px;">
		<tr class="leftmenutext">
			<td><a href="#" onClick="collapse_change(2)"><img id="menuimg_2" src="images/menu_add.gif" border="0"/></a>&nbsp;<a href="#" onClick="collapse_change(2)">��������</a></td>
		</tr>
		<tbody id="menu_2" style="display:none">
			<tr class="leftmenutd">
				<td>
					<table border="0" cellspacing="0" cellpadding="0" class="leftmenuinfo">
						<tr >
						  <td><a href="add_about.aspx?action=add" target="main">����������ӵ�ҳ</a></td>
						</tr>
						<tr >
						  <td><a href="add_about.aspx?action=list" target="main">����ҳ</a></td>
					  </tr>
					  <tr >
						  <td><a href="abt.aspx?action=add" target="main">���ӵ�ҳ</a></td>
						</tr>
					</table>
			  </td>
			</tr>
		</tbody>
	</table>
    <table width="146" border="0" cellspacing="0" align="center" cellpadding="0" class="leftmenulist" style="margin-bottom: 5px;">
      <tr class="leftmenutext">
        <td><a href="#" onClick="collapse_change(3)"><img id="menuimg_3" src="images/menu_add.gif" border="0"/></a>&nbsp; <a href="#" onClick="collapse_change(3)">���Ź���</a></td>
      </tr>
      <tbody id="menu_3" style="display:none">
        <tr class="leftmenutd">
          <td><table border="0" cellspacing="0" cellpadding="0" class="leftmenuinfo">
              <tr >
                <td><a href="AddChNews.aspx" target="main">�����������</a></td>
              </tr>
               <tr >
                <td><a href="AddEnNews.aspx" target="main">���Ӣ������</a></td>
              </tr>
              <tr >
                <td><a href="NewsList.aspx" target="main">�����б�</a></td>
              </tr>
              <tr >
                <td><a href="AddNews.aspx?action=NewsClass" target="main">���ŷ���</a></td>
              </tr>
          </table></td>
        </tr>
      </tbody>
    </table>
	<table width="146" border="0" cellspacing="0" align="center" cellpadding="0" class="leftmenulist" style="margin-bottom: 5px;">
      <tr class="leftmenutext">
        <td><a href="#" onClick="collapse_change(31)"><img id="menuimg_31" src="images/menu_add.gif" border="0"/></a>&nbsp; <a href="#" onClick="collapse_change(31)">��Ƹ����</a></td>
      </tr>
      <tbody id="menu_31" style="display:none">
        <tr class="leftmenutd">
          <td><table border="0" cellspacing="0" cellpadding="0" class="leftmenuinfo">
              <tr >
                <td><a href="zhaopin.aspx?action=add" target="main">������Ƹ��Ϣ</a></td>
              </tr>
              <tr >
                <td><a href="zhaopinlist.aspx" target="main">��Ƹ��Ϣ����</a></td>
              </tr>
              <tr >
                <td><a href="yinpin.aspx" target="main">ӦƸ�û��б�</a></td>
              </tr>
          </table></td>
        </tr>
      </tbody>
    </table>
    <table width="146" border="0" cellspacing="0" align="center" cellpadding="0" class="leftmenulist" style="margin-bottom: 5px;">
      <tr class="leftmenutext">
        <td><a href="#" onClick="collapse_change(4)"><img id="menuimg_4" src="images/menu_add.gif" border="0"/></a>&nbsp; <a href="#" onClick="collapse_change(4)">��Ʒ����</a></td>
      </tr>
      <tbody id="menu_4" style="display:none">
        <tr class="leftmenutd">
          <td><table border="0" cellspacing="0" cellpadding="0" class="leftmenuinfo">
           <tr><td><a href ="ProductList.aspx?action=list" target="main">��Ʒ�б�</a></td></tr>
              <tr >
                <td><a href="AddEnPro.aspx" target="main">���Ӣ�Ĳ�Ʒ</a></td>
              </tr>
              <tr >
                <td><a href="ChProducts.aspx" target="main">������Ĳ�Ʒ</a></td>
              </tr>
             
              <tr >
                <td><a href="Productlist.aspx?action=cat" target="main">��Ʒ����</a></td>
              </tr>
             
             
          </table></td>
        </tr>
      </tbody>
    </table>
    <table width="146" border="0" cellspacing="0" align="center" cellpadding="0" class="leftmenulist" style="margin-bottom: 5px;">
      <tr class="leftmenutext">
        <td><a href="#" onClick="collapse_change(6)"><img id="menuimg_6" src="images/menu_add.gif" border="0"/></a>&nbsp;<a href="#" onClick="collapse_change(6)">��Ա����</a></td>
      </tr>
      <tbody id="menu_6" style="display:none">
        <tr class="leftmenutd">
          <td><table border="0" cellspacing="0" cellpadding="0" class="leftmenuinfo">
              <tr >
                <td><a href="admin_user.asp" target="main">��Ա����</a></td>
              </tr>
              <tr >
                <td><a href="admin_orders.asp" target="main">��������</a></td>
              </tr>
              
              
          </table></td>
        </tr>
      </tbody>
    </table>
    <table width="146" border="0" cellspacing="0" align="center" cellpadding="0" class="leftmenulist" style="margin-bottom: 5px;">
      <tr class="leftmenutext">
        <td><a href="#" onClick="collapse_change(7)"><img src="images/menu_add.gif" alt="" border="0" id="menuimg_7"/></a>&nbsp;<a href="#" onClick="collapse_change(7)">������</a></td>
      </tr>
      <tbody id="menu_7" style="display:none">
        <tr class="leftmenutd">
          <td><table border="0" cellspacing="0" cellpadding="0" class="leftmenuinfo">
              <tr >
                <td><a href="add_ad.asp?id=1" target="main">��ӹ��</a></td>
              </tr>
              <tr >
                <td><a href="admin_ad.asp"  target="main">������</a></td>
              </tr>
              <tr >
                <td><a href="add_flash.asp"  target="main">���ӻõ�</a></td>
              </tr>
              <tr >
                <td><a href="admin_flash.asp"  target="main">�õƹ���</a></td>
              </tr>
              
          </table></td>
        </tr>
      </tbody>
    </table>
   <table width="146" border="0" cellspacing="0" align="center" cellpadding="0" class="leftmenulist" style="margin-bottom: 5px;">
      <tr class="leftmenutext">
        <td><a href="#" onClick="collapse_change(8)"><img src="images/menu_add.gif" alt="" border="0" id="menuimg_8"/></a>&nbsp;<a href="#" onClick="collapse_change(8)">��������</a></td>
      </tr>
      <tbody id="menu_8" style="display:none">
        <tr class="leftmenutd">
          <td><table border="0" cellspacing="0" cellpadding="0" class="leftmenuinfo">
              <tr >
                <td><a href="xm.aspx?action=add" target="main">��������</a></td>
              </tr>
              <tr >
                <td><a href="xm.aspx?action=list" target="main">���ӹ���</a></td>
              </tr>
              <tr >
                <td><a href="admin_Resume.asp" target="main">�鿴����</a></td>
              </tr>
          </table></td>
        </tr>
      </tbody>
    </table>
    <table width="146" border="0" cellspacing="0" align="center" cellpadding="0" class="leftmenulist" style="margin-bottom: 5px;">
      <tbody id="menu_9" style="display:none">
        <tr class="leftmenutd">
          <td>&nbsp;</td>
        </tr>
      </tbody>
    </table>
<table width="146" border="0" cellspacing="0" align="center" cellpadding="0" class="leftmenulist" style="margin-bottom: 5px;">
      <tr class="leftmenutext">
        <td><a href="#" onClick="collapse_change(10)"><img src="images/menu_add.gif" alt="" border="0" id="menuimg_10"/></a>&nbsp;<a href="#" onClick="collapse_change(10)">��������</a></td>
      </tr>
      <tbody id="menu_10" style="display:none">
        <tr class="leftmenutd">
          <td><table border="0" cellspacing="0" cellpadding="0" class="leftmenuinfo">
              <tr >
                <td><a href="liuyan2.aspx" target="main">���Թ���</a></td>
              </tr>
          </table></td>
        </tr>
      </tbody>
    </table>
</div>
<table width="146" border="0" cellspacing="0" align="center" cellpadding="0" class="leftmenulist">
	<tr class="leftmenutext">
		<td><div style="margin-left:48px;"><a href="LoginOut.asp" target="_parent">�˳�</a></div></td>
	</tr>
</table>
    </form>
</body>
</html>
