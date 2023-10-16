<!DOCTYPE html>

<!-- =========================================================
* Sneat - Bootstrap 5 HTML Admin Template - Pro | v1.0.0
==============================================================

* Product Page: https://themeselection.com/products/sneat-bootstrap-html-admin-template/
* Created by: ThemeSelection
* License: You must have a valid license purchased in order to legally use the theme for your project.
* Copyright ThemeSelection (https://themeselection.com)

=========================================================
 -->
<!-- beautify ignore:start -->
<%@ page import="com.tsys.smartnfc.model.CustomerDetails" %>
<%@ page import="java.util.List" %>
<html lang="en" class="light-style layout-menu-fixed" dir="ltr"
	data-theme="theme-default" 
	data-assets-path="${pageContext.request.contextPath}/assets/"
	data-template="vertical-menu-template-free">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0"/>
<title>Merchant POS UI</title>

<meta name="description" content="" />

<!-- Favicon -->
<link rel="icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/assets/img/favicon/ring.ico" />

<!-- Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.min.css'></link>
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
	rel="stylesheet" />

<!-- Icons. Uncomment required icon fonts -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/vendor/fonts/boxicons.css" />

<!-- Core CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/vendor/css/core.css"
	class="template-customizer-core-css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/vendor/css/theme-default.css"
	class="template-customizer-theme-css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/demo.css" />

<!-- Vendors CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/vendor/libs/apex-charts/apex-charts.css" />


<style>

::-webkit-scrollbar {
    width: 10px;
  }

::-webkit-scrollbar-track {
    background: rgb(179, 177, 177);
    border-radius: 10px;
}

::-webkit-scrollbar-thumb {
    background: rgb(136, 136, 136);
    border-radius: 10px;
  }

::-webkit-scrollbar-thumb:hover {
    background: rgb(100, 100, 100);
    border-radius: 10px;
  }

::-webkit-scrollbar-thumb:active {
    background: rgb(68, 68, 68);
    border-radius: 10px;
  }
  
</style>
<!-- Page CSS -->

<!-- Helpers -->
<script src="${pageContext.request.contextPath}/assets/vendor/js/helpers.js"></script>

<!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
<!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
<script src="${pageContext.request.contextPath}/assets/js/config.js"></script>

<%
List<CustomerDetails> custList=(List) request.getAttribute("custList");
List<CustomerDetails> customerDetail=(List) request.getAttribute("custDetail");
String PaymentMessage=(String)request.getAttribute("PaymentMessage");

int transaction=0,transactionCount=0;
for(CustomerDetails customer:custList){
 transaction+=customer.getAmount();
transactionCount++;
}
%>
</head>

<body>
	<!-- Layout wrapper -->
	

		

			<!-- Layout container -->
		
				<!-- / Navbar -->

				<!-- Content wrapper -->
				
				
				
					<!-- Content -->
	<div class="row">
							
								<div class="card">
								<div class="row">
								<div class="col-md-3">
									<div class="avatar flex-shrink-0">
														<img src="${pageContext.request.contextPath}/assets/img/icons/unicons/paypal.png"
															alt="Credit Card" class="rounded" />
													</div>
								</div>
								<div class="col-md-6"><p  style="color:red;  font-weight:bold; font-size: large; text-align:center !important">
												Extended User interface of POS Machine (Merchant's End)
										</p></div>
									<div class="col-md-3">
									<p  style="color: black;  font: bolder; font-size: large; text-align:right !important">
													SmartNFC - Innovation In Payments 
										
										</p>
										</div>
									</div>
								</div>
						
							
							<div class="content-wrapper">
					<div class="container flex-grow-0 container-p-y">
						<div class="row">
							<div class="col-lg-8 col-md-4 order-0">
								<div class="card">
									<div class="d-flex align-items-end row">
									<div class="col-sm-5">
											<div class="card-body">
												<img
													src="${pageContext.request.contextPath}/assets/img/illustrations/man.png"
													height="160" alt="View Badge User"
													data-app-dark-img="illustrations/man.png"
													data-app-light-img="illustrations/man.png" />
											</div>
										</div>
										<div class="col-sm-7">
											<div class="card-body">
												<h5 class="fw-bold" style="color: captiontext;">Welcome to the innovation world ! &#9884;</h5>
												<p class="mb-4" style="color: darkgreen;">
													SmartNFC - Innovation In Payments <span class="fw-bold">Secure,Faster and Simpler</span> Near Field Communication (NFC) Solutions for payment to overcome the security.This is super environment friendly and effectively maintainable. 
												</p>

											</div>
										</div>
										
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-4 order-0">
								<div class="row">
									<div class="col-5">
										<div class="card">
											<div class="card-body">
												<div
													class="card-title d-flex align-items-start justify-content-between">
													<div class="avatar flex-shrink-0">
														<img src="${pageContext.request.contextPath}/assets/img/icons/unicons/cc-success.png"
															alt="Credit Card" class="rounded" />
													</div>

												</div>
												<span class="fw-semibold d-block mb-1">Transactions</span>
												<h3 class="card-title mb-2  fw-semibold" style="color: #C0392B!important">&#X20B9;
													<%=transaction%></h3>

											</div>
										</div>
									</div>
									<div class="col-5">
										<div class="card">
											<div class="card-body">
												<div
													class="card-title d-flex align-items-start justify-content-between">
													<div class="avatar flex-shrink-0">
														<img src="${pageContext.request.contextPath}/assets/img/icons/unicons/wallet-info.png"
															alt="Credit Card" class="rounded" />
													</div>

												</div>
												<span class="fw-semibold d-block mb-1">Sales</span>
												<h3 class="card-title mb-2  fw-semibold" style="color: #C0392B!important"><%=transactionCount%></h3>

											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- Total Revenue -->


</div>
						<form action="nfc" method="POST" autocomplete="off">
						<div class="row" style="margin-top: 2%">
							<!-- Order Statistics -->
							<div class="col-md-6 col-lg-6 col-xl-6 order-0 mb-6">
								<div class="card h-100">
									<div
										class="card-header d-flex align-items-center justify-content-between pb-0">
										<div class="card-title mb-0">
											<h5 class="m-0 me-2"
												style="font-weight: bolder; color: #34495E;">Make
												Payment</h5>
											<div class="tab-content p-0"></div>
										</div>

									</div>
									<div class="d-flex p-0 pt-3">
										<div class="card-body">
											<div class="tab-content p-0">
												<ul class="p-0 m-0">
												<li class="d-flex mb-0 pb-0">
														<div class="mb-3 col-md-7">
															 <input type="customerName" class="form-control"
																id="customerName" name="customerName" 
																disabled placeholder="Customer Name"  value="<%=customerDetail==null ? "":customerDetail.get(0).getUserName()%>">
																<input type="hidden" name="userName" id="userName" value="<%=customerDetail==null ? "":customerDetail.get(0).getUserName()%>">
																						<input type="hidden" name="tagId" id="tagId" value="<%=customerDetail==null ? "":customerDetail.get(0).getTagId()%>">
														</div>
														<div class="mb-3 col-md-1"></div>
														
														<div class="mb-3 col-md-3">
														<button type="submit" class="btn btn-dark" name="addCustomer" value="Authenticate">Tap Your NFC
														</button>
														</div>
														
													</li>
													<li class="d-flex mb-0 pb-0">
														<div class="mb-7 col-md-7">
														
																<select  id="cardTypeDetails" name="cardTypeT" class="select2 form-select" onchange="changeCard()">
																	<option  value="">---Select Card---</option>
																	<% 
														int amounts=0;
														
															if(customerDetail !=null){
																for(CustomerDetails cs:customerDetail)
																{
																
															 %>
																	<option value="<%=cs.getCardNumber()%>" ><%=cs.getCardType()%></option>
																	<%}} %>
																</select>

															
														
														</div>
														<div class="mb-1 col-md-1"></div>
														<div class="mb-4 col-md-4">
														
														<input 
																class="form-control" required name="amountT" value="<%=amounts!=0 ? amounts : 0%>"
																type="number" placeholder="amount"/>
																

				</div>										
													</li>
												
													<li class="d-flex mb-0 pb-0">
														<div class="mb-0 col-md-12">
															<label for="zipCode" class="form-label">Card
																Number</label> <input disabled="disabled"
																class="form-control" id="zipCode" name="zipCode"
																placeholder="0000-0000-0000-0000"/>
																
														
																
														</div>
													</li>
												<li class="d-flex mb-0 pb-0">
														<div class="mb-3 col-md-5">
															<label for="pinNumber" class="form-label">Enter
																Your PIN </label> <input type="password" class="form-control" autocomplete="new-password"
																id="userPIN" name="userPIN" placeholder="****"
																maxlength="6">
																<input type="hidden" name="pin" id="pin" value="<%=customerDetail==null ? "":customerDetail.get(0).getUserPin()%>">
														</div>
														<div class="mb-0 col-md-2"></div>
														<div class="mb-0 col-md-5">
														<label for="submit" class="form-label"> 
														</label>
														<button type="submit" name="addCustomer" class="form-control btn btn-info btn-md" 
													style="background-color: #2C4399;" name="submit" onclick="newAlert()">
													Pay</button></div>
													</li>
												</ul>
											</div>
										</div>
									</div>
									

								</div>
							</div>
						
							<div class="col-md-6 col-lg-6 col-xl-6 order-0 mb-6">
								<div class="card h-100">
									<div
										class="card-header d-flex align-items-center justify-content-between pb-0">
										<div class="card-title mb-0">
											<h5 class="m-0 me-2" style="color: brown;font-weight: bolder;">Transactions</h5>
											<div class="tab-content p-0"></div>
										</div>

									</div>
									<div class="d-flex p-4 pt-3">
										<div class="card-body scrollStyle" style="height: 295px; overflow-y: auto" >
											<div class="tab-content p-0">
												<ul>
												
												<% for(CustomerDetails cust:custList){%>
												
													<li class="pb-3" style="list-style: none">
									
														<div class="row">
														<div class="col-md-2">
															<div class="avatar flex-shrink-0">
														<img src="${pageContext.request.contextPath}/assets/img/icons/unicons/cc-warning.png" alt="Credit Card" class="rounded">
													</div>
													</div>
													<div class="col-md-6">
															<div class="me-3 ">
																<h6 class="mb-1 mr-2" style="color: #186A3B;"><%=cust.getUserName()%></h6>
																<small class="text-muted">debited by - <%=cust.getCardType()%></small>
															</div>
															</div>
															<div class="col-md-4" style="text-align: right;">
															<div class="user-progress me-4 w-30">
																<small class="fw-semibold" style="color: #76A620;">&#X20B9;<%=cust.getAmount()%></small>
															</div>
															</div>
															</div>
													
													</li>
													<%}%>
														
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						
							
							
							</div>
							</form>
							
							
						</div>
							</div>
							

						
						<!-- Expense Overview -->

						<!--/ Expense Overview -->

						<!-- Transactions -->

			
				
				<!-- / Content -->

				<!-- Footer -->
				<footer class="content-footer footer bg-footer-theme">
					<div
						class="container-xxl d-flex flex-wrap justify-content-between py-2 flex-md-row flex-column">
						<div class="mb-0 mb-md-0">
								&#169;
							<script>
								document.write(new Date().getFullYear());
							</script>
							, made by <a href="" target="_blank"
								class="footer-link fw-bolder" style="color: darkgreen;">Team LordOfTheRings</a>
						</div>

					</div>
				</footer>
				<!-- / Footer -->
</div>
				
	

	<!-- / Layout wrapper -->
	<!--
    <div class="buy-now">
      <a
        href="https://themeselection.com/products/sneat-bootstrap-html-admin-template/"
        target="_blank"
        class="btn btn-danger btn-buy-now"
        >Upgrade to Pro</a
      >
    </div>-->

	<!-- Core JS -->
	<!-- Core JS -->
	<!-- build:js assets/vendor/js/core.js -->
	<script>
	 function changeCard(){
		    var x = document.getElementById("cardTypeDetails").value;
			x=x.slice(-4); 
			x="****_****_****_"+x;
  			document.getElementById("zipCode").value = x;
}
	</script>
	<script type="text/javascript">
	function checkPin(){
		var user=document.getElementById('userPIN');
		var store=document.getElementById('pin');
		
		if(user != store ){
			Swal.fire({
				  icon: 'error',
				  title: 'Incorrect Pin...',
				  text: 'User Authentication Failed!'
				})
		}
	}
	function checkUser(){
		
		if(user != store ){
			Swal.fire({
				  icon: 'error',
				  title: 'Invalidate NFC',
				  text: 'No Card Associated or Unrecognized Details !'
				})
		}
	}
</script>

	<script src="${pageContext.request.contextPath}/assets/vendor/libs/jquery/jquery.js"> </script>
	<script src="${pageContext.request.contextPath}/assets/vendor/libs/popper/popper.js"> </script>
	<script src="${pageContext.request.contextPath}/assets/vendor/js/bootstrap.js"></script>
	<script src="${pageContext.request.contextPath}/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>
	<script src="${pageContext.request.contextPath}/assets/vendor/js/menu.js"></script>
	<!-- Vendors JS -->

	<!-- Main JS -->
	<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>

	<!-- Page JS -->
	<script src="${pageContext.request.contextPath}/assets/js/pages-account-settings-account.js"></script>

	<!-- Place this tag in your head or just before your close body tag. -->
	<script async defer src="https://buttons.github.io/buttons.js"></script>
	

</body>
</html>
