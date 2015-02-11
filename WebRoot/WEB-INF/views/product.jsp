<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>太湖世家物业管理有限公司</title>
		<!-- meta tags start -->
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="viewport"
			content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
		<!-- meta tags end -->
		<%@include file="/WEB-INF/views/common/css.jsp"%>
		<%@include file="/WEB-INF/views/common/js.jsp"%>
	</head>

	<body>
		<!-- website wrapper starts -->
		<div class="websiteWrapper">
			<!-- header wrapper starts -->
			<%@include file="/WEB-INF/views/common/header.jsp"%>
			<!-- header wrapper ends -->
			
			<!-- page wrapper starts -->
			<div class="pageWrapper portfolioTwoPageWrapper">
			<div class="sectionBreak"></div>
				<div class="singleProjectImageWrapper">
					<img src="<%=request.getContextPath()%>/images/${productPic}"
						class="singleProjectImage" alt="" />
				</div>
				<!-- page content wrapper starts -->
				<div class="pageContentWrapper singleProjectContentWrapper">
					<h3 class="pageTitle">
						${productName}
					</h3>
					<p>
						${productDes}
					</p>
					<p>
						兑换需要
						<font color="red">${productScore}</font>积分
					</p>
					<div class="pageBreak"></div>
				</div>
				<div class="pageBreak"></div>
				<div class="singleProjectItemButtonsWrapper">
					<p>
						<a href="javascript:confirm('是否删除？');"
							class="buttonWrapper buttonOrange">兑换</a>
					</p>
					<p>
					</p>
				</div>
				
			</div>
			<!-- page wrapper ends -->

			<!-- footer wrapper starts -->
			<%@include file="/WEB-INF/views/common/footer.jsp"%>
			<!-- footer wrapper ends -->
		</div>
		<!-- website wrapper ends -->
	</body>
</html>

