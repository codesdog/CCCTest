<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="liuyan.aspx.cs" Inherits="Webwangzhan.yueyang.liuyan" %>
<%@ Register Src ="~/yueyang/UserControl/top.ascx" TagName ="Webtop1" TagPrefix ="top" %>
<%@ Register Src ="~/yueyang/UserControl/left.ascx" TagName ="Webleft1" TagPrefix ="left" %>
<%@ Register Src ="~/yueyang/UserControl/foot.ascx" TagName ="Webfoot1" TagPrefix ="foot" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>客户留言</title>
<link rel="stylesheet" href="css/css.css"  />
<link rel="stylesheet" href="css/stylecss.css"  />
<script type="text/javascript" src="js/all.js"></script>

<link type="text/css" rel="stylesheet" href="css/plug.css">
<script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
<!--[if IE 6]>
<script type="text/javascript" src="js/iepngfix_tilebg.js"></script>
<![endif]-->
<script type="text/javascript">
    function position(elem, l, t) {
        var isIE6 = ! -[1, ] && !window.XMLHttpRequest;
        if (isIE6) {
            var style = elem.style,
		dom = '(document.documentElement)',
        left = l - document.documentElement.scrollLeft,
        top = t - document.documentElement.scrollTop;
            style.position = 'absolute';
            style.removeExpression('left');
            style.removeExpression('top');
            style.setExpression('left', 'eval(' + dom + '.scrollLeft + ' + left + ') + "px"');
            style.setExpression('top', 'eval(' + dom + '.scrollTop + ' + top + ') + "px"');
        } else {
            elem.style.position = 'fixed';
        }
    }
    function scscms_alert(msg, sign, ok, can) {
        var c_ = false; //是否已经关闭窗口，解决自动关闭与手动关闭冲突
        sign = sign || "";
        var s = "<div id='mask_layer'></div><div id='scs_alert'><div id='alert_top'></div><div id='alert_bg'><table width='260' align='center' border='0' cellspacing='0' cellpadding='1'><tr>";
        if (sign != "") s += "<td width='45'><div id='inco_" + sign + "'></div></td>";
        s += "<td id='alert_txt'>" + msg + "</td></tr></table>";
        if (sign == "confirm") {
            s += "<a href='javascript:void(0)' id='confirm_ok'>确 定</a><a href='javascript:void(0)' id='confirm_cancel'>取 消</a>";
        } else {
            s += "<a href='javascript:void(0)' id='alert_ok'>确 定</a>"
        }
        s += "</div><div id='alert_foot'></div></div>";
        $("body").append(s);
        $("#scs_alert").css("margin-top", -($("#scs_alert").height() / 2) + "px"); //使其垂直居中
        $("#scs_alert").focus(); //获取焦点，以防回车后无法触发函数
        position(document.getElementById('mask_layer'), 0, 0);
        position(document.getElementById('scs_alert'), $(window).width() / 2, $(window).height() / 2);
        if (typeof can == "number") {
            //定时关闭提示
            setTimeout(function () {
                close_info();
            }, can * 1000);
        }
        function close_info() {
            //关闭提示窗口
            if (!c_) {
                $("#mask_layer").fadeOut("fast", function () {
                    $("#scs_alert").remove();
                    $(this).remove();
                });
                c_ = true;
            }
        }
        $("#alert_ok").click(function () {
            close_info();
            if (typeof (ok) == "function") ok();
        });
        $("#confirm_ok").click(function () {
            close_info();
            if (typeof (ok) == "function") ok();
        });
        $("#confirm_cancel").click(function () {
            close_info();
            if (typeof (can) == "function") can();
        });
        function modal_key(e) {
            e = e || event;
            close_info();
            var code = e.which || event.keyCode;
            if (code == 13 || code == 32) { if (typeof (ok) == "function") ok() }
            if (code == 27) { if (typeof (can) == "function") can() }
        }
        //绑定回车与ESC键
        if (document.attachEvent)
            document.attachEvent("onkeydown", modal_key);
        else
            document.addEventListener("keydown", modal_key, true);
    }

    //====================================以下为测试函数=======================================//
    function test1() {
        scscms_alert("默认提示信息");
    }
    function test2() {
        scscms_alert("成功保存信息！", "ok");
    }
    function test3() {
        scscms_alert("成功提示后回调函数", "ok", function () { alert("回调成功！") });
    }
    function test4() {
        scscms_alert("失败提示信息", "error");
    }
    function test5() {
        scscms_alert("失败提示信息", "error", function () { alert("哦！no!") });
    }
    function test6() {
        scscms_alert("警告提示信息", "warn");
    }
    function test7() {
        scscms_alert("警告提示信息", "warn", function () { alert("哦！警告!") });
    }
    function test8() {
        scscms_alert("您喜欢此信息提示吗？", "confirm", function () {
            scscms_alert("您选择了喜欢，谢谢！", "ok");
        }, function () {
            scscms_alert("您选择了不喜欢，汗！", "error");
        });
    }
    function test9() {
        scscms_alert("本信息3秒后自动关闭", "ok", "", 3);
    }
    function test10() {
        scscms_alert("询问信息定时关闭提示信息,3秒后自动关闭，无取消时回调函数.不推荐使用。", "confirm", function () { alert("确定回调用！") }, 3);
    }
</script>
</head>
<body>
    <form id="form1" runat="server">
   <div id="content_bg">
	<div id="content"   >
<!--***content ***************************************************************************************************-->
<top:Webtop1 id="Webtop2" runat="server"/>
        <!--***foot end **********************************************************************************-->
        
        <div id="main">
        	<left:Webleft1 id="Webleft1" runat="server"/>
            <div id="right">
            
                                      
                                      <div id="message">
                                            <div class="m-header"> 在线订购 </div>
                                            <div class="message_list">
                                                <div class="key-name"><em class="red">*</em>产品名称：</div>
                                                <div>
                                                    <asp:TextBox ID="TextBox1" class="key-content" runat="server" Width="220"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="message_list">
                                                <div class="key-name"><em class="red">*</em>产品数量：</div>
                                                <div><asp:TextBox ID="TextBox2" class="key-content" runat="server" Width="220"></asp:TextBox></div>
                                            </div>
                                            <div class="message_list">
                                                <div class="key-name"><em class="red">*</em>联系人：</div>
                                                <div>
                                                    <asp:TextBox ID="TextBox3" class="key-content" runat="server" Width="220"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="message_list">
                                                <div class="key-name"><em class="red">*</em>联系电话：</div>
                                                <div>
                                                    <asp:TextBox ID="TextBox4" class="key-content" runat="server" Width="220"></asp:TextBox>
                                                </div>
                                            </div>
                                             <div class="message_list">
                                                <div style="color:Red; font-size:12px; margin-left:110px;">
                                                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                                </div>
                                            </div>
                                            <div class="message_list">
                                                  <div class="key-name">&nbsp;</div>
                                                  <div class="key-content_1">
                                                  <button type="button" onclick="test2()">保存并发送</button><br/>
                                                     <%-- <asp:LinkButton ID="sublb" runat="server"  onclick="test2()"><sub>保存并发送</sub></asp:LinkButton>--%>
                                                  </div>
                                            </div>
                                            <div class="message_list" style="height:20px;"></div>
                                      </div>
                                     <!--***  end ***********************************************************-->              
        </div>
        <!--***main end **********************************************************************************-->
 <foot:Webfoot1 id="Webfoot1" runat="server"/>
<!--***content end***************************************************************************************************-->
	</div>
	</div>

    </form>
</body>
</html>
