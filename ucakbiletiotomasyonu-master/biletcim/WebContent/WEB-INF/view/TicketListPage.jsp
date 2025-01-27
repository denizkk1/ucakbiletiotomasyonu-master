<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="tr">
<head>
  <title>Üye Girişi | Biletcim </title>
  
  <jsp:include page="/WEB-INF/view/include/header.jsp" />
  
  
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/util.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/main.css">
  
  
  
  <!--Date Time Picker Css-->
  
  
  <style type="text/css">
  	
  	.btn_checkin {
 
  cursor: pointer;
 border: 1px solid rgba(119,188,31,1);
  color: rgba(119,188,31,1);
  background: #ffffff;
  
  -webkit-border-radius: 8px;
  border-radius: 8px;
  
  
  -o-text-overflow: clip;
  text-overflow: clip;
  
  
  -webkit-transition: all 300ms cubic-bezier(0.42, 0, 0.58, 1);
  -moz-transition: all 300ms cubic-bezier(0.42, 0, 0.58, 1);
  -o-transition: all 300ms cubic-bezier(0.42, 0, 0.58, 1);
  transition: all 300ms cubic-bezier(0.42, 0, 0.58, 1);
  
  padding:10px;
  float:right;
  margin-left:10px;
  margin-top:25px;
  
  
}

.btn_checkin:hover {
  border: 1px solid #ffffff;
  color: rgba(255,255,255,0.9);
  background: #77bc1f;
  
}
.check-in-text{
-webkit-transition: all 300ms cubic-bezier(0.42, 0, 0.58, 1) !important;
  -moz-transition: all 300ms cubic-bezier(0.42, 0, 0.58, 1) !important;
  -o-transition: all 300ms cubic-bezier(0.42, 0, 0.58, 1) !important;
  transition: all 300ms cubic-bezier(0.42, 0, 0.58, 1) !important;
  }
.ckeck-in-text:active{
	border: 1px solid rgba(119,188,31,1) !important;
  	color: rgba(119,188,31,1) !important;
 	 background: #ffffff !important;
}
  </style>
</head>
<body class="container-fluid">

<jsp:include page="/WEB-INF/view/include/navbartop.jsp" />


		
<div class="container p-0 ">
	
	<div class="row">
		<div class="col-md-12 col-sm-12">
		<div class="TicketListHead row ">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="row">
				<div class="col-md-4 col-sm-12 col-xs-12">
				</div>
					<div class="col-md-4 col-sm-12 col-xs-12">
					
							<div class="text-center">
											<c:choose>
						    <c:when test="${empty Error}">
						       <h3>${KalkisYeri} - ${VarisYeri} </h3>
						    </c:when>
						    <c:otherwise>
						        <h3>${Error}</h3>
						    </c:otherwise>
						</c:choose>
											
										
										</div>
										<div class="text-center">
											<h4>${Date}</h4>
										</div>
					</div>
					<div class="col-md-4 col-sm-12 col-xs-12 p-r-0">
						<a href="?order=time"><input  type="submit" name="btn_checkinControl" class=" btn_checkin" id="btn_checkinControl"  value="Uçuş Saatine Göre Sırala" /></a>
						<a href="?order=price"><input  type="submit" name="btn_checkinControl" class=" btn_checkin" id="btn_checkinControl"  value="Fiyata Göre Sırala" /></a>
					</div>
				</div>
				
			</div>
		</div>
			<div class="TicketList">
						<c:forEach var="ticketItem" items="${TicketsList}">
	
	
				<div class="Ticket">
				<div class="row">
					<div class="col-md-4 col-sm-4 col-xs-3 ">
						<div class="TicketLDTInfo ">
							<div class="TicketLDTLogo ">
								<img class="center-block" src="${pageContext.request.contextPath }/resources/img/airlineslogos/${ticketItem.company.companyImg }"  width="30" height="30"/>
							</div>
							<div class="TicketLDTName">
								<div class="center-block text-center">
								
									${ticketItem.company.companyName }
								
									
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-4 col-xs-6">
						<div class="TicketTimeInfo row">
							<div class="col-xs-12 text-center ">
								<span>${ticketItem.kalkisZamani}</span>	
								<img   src="${pageContext.request.contextPath }/resources/img/icons/plane-to.png"  width="21" height="21" style="margin-top: -2px;"/>
								<span>${ticketItem.varisZamani}</span>
							</div>
						</div>
						<div class="TicketDurationInfo row">
							<div class="col-xs-12 text-center">
							<span>${ticketItem.sure}</span>
							</div>
						</div>
						<div class="TicketAirportsInfo row">
							<div class="col-xs-12 text-center">
								<span >${ticketItem.kalkisYeri} </span><span class="hidden-xs"></span>	
								<i class="fas fa-angle-right"></i>
								<span >${ticketItem.varisYeri} </span><span class="hidden-xs"></span>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-4 col-xs-3 ">
						<div class="TicketMoneyInfo row">
							<div class="col-md-5 p-0">
								<div class="w-full">
								<div class="money-big text-center">${ticketItem.fiyat}<span class="money-kuru">TL</span></div>
								</div>
										
										
								
								
							</div>
							<div class="col-md-7 p-0">
								<a href="${pageContext.request.contextPath }/Buy/${ticketItem.ticketNumber}_${ticketItem.sinif}">
									<button type="button" class="TicketBuyButton float-r " data-ticket-number="${ticketItem.ticketNumber}">
								
										<i class="fas fa-shopping-cart hidden-md hidden-sm hidden-md  hidden-lg "></i>
										<div class="hidden-xs"><span>Satın Al</span></div>
									</button>
									</a>
								
							</div>
						</div>
					</div>
					
				</div>
					
				</div>
						</c:forEach>
			</div>
			
		</div>
	</div>
</div>



<jsp:include page="/WEB-INF/view/include/footer.jsp" />

<jsp:include page="/WEB-INF/view/include/js.jsp" />
  
  <script src="${pageContext.request.contextPath }/resources/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath }/resources/vendor/bootstrap/js/popper.js"></script>
	<script src="${pageContext.request.contextPath }/resources/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath }/resources/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath }/resources/vendor/daterangepicker/moment.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath }/resources/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath }/resources/js/main.js"></script>
  
  <script type="text/javascript">
  /*
  $(function() {
	$(".TicketBuyButton").click(function() {
		  window.location.replace(<% String contextPath = request.getContextPath(); out.print("\""+contextPath);%>/Buy/"+$(this).data('ticket-number'));
	});
	
	
	});
  */
  </script>
  
  <!--<jsp:include page="/WEB-INF/view/include/Loader.jsp" /> !-->
 
</body>
</html>
