<%@ Control Inherits="QiZhanBang.Core.PageControler.UserControlBase" %>
<div id="footer">
<dl>
<dt>
<p>友情链接： <%=getlinks(6, "<a href='{0}' target='_blank'>{1}</a> ")%></p>
<%=getsetting("网站版权声明")%> <br />
<%=getsetting("工信部备案号")%> <%=getsetting("网站统计代码")%>
</dt>
<dd><img src="images/logos.gif" width="275" height="72" /></dd>
</dl>
</div>