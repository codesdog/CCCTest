<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="QiZhanBang.Web.backend.main" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=uft-8" />
    <title>main</title>
    <link href="images/style.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        <!
        -- body
        {
            padding: 10px;
        }
        -- ></style>
</head>
<body>
    <h3 class="boxtitle">
        ��̨���� &gt;&gt; ϵͳ��Ϣ</h3>
    <div class="box">
       ���ã�<asp:Literal runat="server" ID="ltlUsername" />��[ <a href="memberedit.aspx?action=edit&uid=<%= LoginUid %>" target="_blank">�޸�����</a> ]
    </div>
    <div class="box">
        ���������ͣ�
        <%= SiteServerInfo.ServerOS %><br />
        �ű��������棺<%= SiteServerInfo.DotNetVersion %><br />
        �ռ�ʹ�������<%= SiteServerInfo.SiteTotalFileSize %>
        <br />
    </div>
    <div class="box">
        �������ƣ���վ����վ����ϵͳ<br />
        �ٷ���վ��<a href="http://www.qizhanbang.com" target="_blank">http://www.qizhanbang.com</a>
    </div>
</body>
</html>
