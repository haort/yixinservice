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
				<!-- portfolio wrapper starts -->

				<div class="portfolioTwoWrapper">
					<!-- portfolio item starts  -->
					<div class="portfolioTwoItemWrapper">
						<a href="<%=request.getContextPath()%>/service/getProduct.do?productId=0"
							class="portfolioTwoItemImageWrapper" id="product_1"><img
								src="<%=request.getContextPath()%>/images/product_1.jpg" alt="" />
						</a>
						<div class="portfolioTwoItemInfoWrapper">
							<h4 class="portfolioTwoItemTitle">
								移动电源：500积分
							</h4>
						</div>
					</div>
					<!-- portfolio item ends -->
					<!-- portfolio item starts  -->
					<div class="portfolioTwoItemWrapper">
						<a href="<%=request.getContextPath()%>/service/getProduct.do?productId=1"
							class="portfolioTwoItemImageWrapper" id="product_2"><img
								src="<%=request.getContextPath()%>/images/product_2.jpg" alt="" />
						</a>
						<div class="portfolioTwoItemInfoWrapper">
							<h4 class="portfolioTwoItemTitle">
								羊年挂历：10积分
							</h4>
						</div>
					</div>
					<!-- portfolio item ends -->
				</div>
				<!-- portfolio wrapper ends -->
			</div>
			<!-- page wrapper ends -->

			<!-- footer wrapper starts -->
			<%@include file="/WEB-INF/views/common/footer.jsp"%>
			<!-- footer wrapper ends -->
		</div>
		<!-- website wrapper ends -->
	</body>
</html>

