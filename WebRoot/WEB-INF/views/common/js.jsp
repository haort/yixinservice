<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/effects.jquery-ui.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/jquery.nivo-slider.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/jquery.colorbox.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/custom.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/jquery.validate.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/jquery.validate.messages_cn.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/jquery.validate.ex.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/contact.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/msgbox.js"></script>

<!-- JavaScript files start -->
<script type="text/javascript">
	var useragent = navigator.userAgent;
	if (useragent.match(/MicroMessenger/i) != 'MicroMessenger') {
		// 这里警告框会阻塞当前页面继续加载
		alert('已禁止本次访问：您必须使用微信内置浏览器访问本页面！');
		// 以下代码是用javascript强行关闭当前页面
		var opened = window.open('about:blank', '_self');
		opened.opener = null;
		opened.close();
	}
	$(document).ready(
			function() {
				document.addEventListener('WeixinJSBridgeReady',
						function onBridgeReady() {
							WeixinJSBridge.call('hideOptionMenu');
						});

			})
</script>
<!-- JavaScript files end -->