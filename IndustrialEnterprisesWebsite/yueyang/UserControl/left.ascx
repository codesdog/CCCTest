<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="left.ascx.cs" Inherits="Webwangzhan.yueyang.UserControl.left" %>
<script type="text/javascript">
    function d(dom, d) {
        var url = escape(d);
        location.href = dom + url;
    }
</script>
<div id="left"> 
                                             <div class="pro_left" >
                                             <div class="m-body">
                                                  <div class="m-header">产品分类</div>
                                                  <div class="m-content">
                                                           
                                                            
                                                                <ul class="vas">
                                                                    <asp:Repeater ID="gclist" runat="server">
                                                                    <ItemTemplate>
                                                                     <li class="cat">
                                                                        <h4 class="cat-hd"><i></i><a href='javascript:d("goodlist.aspx?id=","<%#Eval("gc_name")%>")' title="<%# Eval("gc_name") %>" ><span ><%# Eval("gc_name")%></span></a></h4>
                                                                  </li>
                                                                    </ItemTemplate>
                                                                    </asp:Repeater>                       
                                                               </ul><br />
                                                            
                                                           
                                                  </div>
                                         </div> 
                                         </div>
                                         <!--***pro_left end ***********************************************************-->
                                         <div class="contact" >
                                           <div class="m-body">
                                                <div class="m-header"> 联系方式 </div>
                                                <div class="m-content">
                                                <dl>
                                                              <dt>公司名称：</dt>
                                                              <dd><asp:Label ID="lianxiLabel" runat="server" Text=""></asp:Label></dd>
                                                 </dl>
                                                 <dl>
                                                              <dt>联系人：</dt>
                                                              <dd><asp:Label ID="Label1" runat="server" Text=""></asp:Label></dd>
                                                 </dl>
                                                  <dl >
                                                              <dt>手机号：</dt>
                                                              <dd> <asp:Label ID="Label2" runat="server" Text=""></asp:Label></dd>
                                                 </dl>     
                                                 <dl >
                                                              <dt>公司地址：</dt>
                                                              <dd><asp:Label ID="Label3" runat="server" Text=""></asp:Label></dd>
                                                 </dl>     
                                                       
                                                          <!--/m-content-->
                                                      <div class="m-footer"><a href="contact.aspx" >更多&gt;&gt;</a> </div>
                                              </div><br />
                                      </div>
                                      </div>
                                      <!--***contact  end ***********************************************************-->
                                      <div class="link">
                                      <div class="m-body">
                                          <div class="m-header"> 友情链接 </div>
                                          <div class="m-content">
                                                  <ul class="fd-clr">

                                                      <asp:Repeater ID="youqing" runat="server">
                                                      <ItemTemplate>
                                                       <li><a href="<%#Eval("yq_url") %>" target="_blank" title="<%#Eval("yq_name") %>"><%#Eval("yq_name")%></a></li>
                                                      </ItemTemplate>
                                                     </asp:Repeater>
                                                  </ul>
                                           </div>
                                      </div>
                                      </div>
                                      <!--***  end ***********************************************************-->
            </div>