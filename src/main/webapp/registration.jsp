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
<%@ page import="com.tsys.smartnfc.model.CustomerDetails"%>
<%@ page import="java.util.List"%>
<html lang="en" class="light-style layout-menu-fixed" dir="ltr"
	data-theme="theme-default"
	data-assets-path="${pageContext.request.contextPath}/assets/"
	data-template="vertical-menu-template-free">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />
<title>User Dashboard</title>

<meta name="description" content="" />

<!-- Favicon -->
<link rel="icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/assets/img/favicon/favicon.ico" />

<!-- Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel='stylesheet'
	href='https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.min.css'></link>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
	rel="stylesheet" />
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
<!-- Icons. Uncomment required icon fonts -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/vendor/fonts/boxicons.css" />

<!-- Core CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/vendor/css/core.css"
	class="template-customizer-core-css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/vendor/css/theme-default.css"
	class="template-customizer-theme-css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/demo.css" />

<!-- Vendors CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/vendor/libs/apex-charts/apex-charts.css" />

<!-- Page CSS -->

<!-- Helpers -->
<script
	src="${pageContext.request.contextPath}/assets/vendor/js/helpers.js"></script>

<!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
<!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
<script src="${pageContext.request.contextPath}/assets/js/config.js"></script>
<%
List<CustomerDetails> custList=(List) request.getAttribute("custList");
int customerCount=0;
for(CustomerDetails ct:custList){
	customerCount++;
}
%>

</head>

<body>
	<!-- Layout wrapper -->
	
			<!-- Menu -->

			
			<!-- / Menu -->

			<!-- Layout container -->
			
				<!-- Navbar -->

				

				<!-- / Navbar -->

				<!-- Content wrapper -->
				<div class="card">
								<div class="row">
								<div class="col-md-3">
									<div class="avatar flex-shrink-0">
														<img src="${pageContext.request.contextPath}/assets/img/icons/unicons/wallet.png"
															alt="Credit Card" class="rounded" />
													</div>
								</div>
								<div class="col-md-6"><p  style="color:darkGreen;  font-weight:bold; font-size: large; text-align:center !important">
												Registration Process At Users End (Could Be Mobile/web Application)
										</p></div>
									<div class="col-md-3">
									<p  style="color: black;  font: bolder; font-size: large; text-align:right !important">
													SmartNFC - Innovation In Payments 
										
										</p>
										</div>
									</div>
								</div>

				<div class="content-wrapper">
					<!-- Content -->

					<div class="container flex-grow-0 container-p-y">
						<div class="row">
							<div class="col-lg-10 mb-0 order-0">
								<div class="card">
									<div class="d-flex align-items-end row">
										<div class="col-sm-7">
											<div class="card-body">
												<h5 class="card-title text-primary" style="  color: red !important; font-size: x-large; ">For NFC Holder Only Strictly Confidential!
													&#9884;</h5>
												<p class="mb-4">
													<span class="fw-bold">Sensitive Personal information </span> means any information that relates to a natural person, which either directly or indirectly,
												</p>

											</div>
										</div>
										<div class="col-sm-5 text-center text-sm-left">
											<div class="card-body pb-0 px-0 px-md-4">
												<img
													src="${pageContext.request.contextPath}/assets/img/illustrations/girl-doing-yoga-light.png"
													height="140" alt="View Badge User"
													data-app-dark-img="illustrations/girl-doing-yoga-light.png"
													data-app-light-img="illustrations/girl-doing-yoga-light.png" />
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-2 col-md- order-0">
								<div class="row">
									<div class="col-12">
										<div class="card">
											<div class="card-body">
												<div
													class="card-title d-flex align-items-start justify-content-between">
													<div class="avatar flex-shrink-0">
														<img
															src="${pageContext.request.contextPath}/assets/img/icons/unicons/cc-warning.png"
															alt="Credit Card" class="rounded" />
													</div>

												</div>
												<span class="fw-semibold d-block mb-1">Total CARDS</span>
												<h3 class="card-title mb-2 text-primary fw-semibold"><%=customerCount%>
												</h3>

											</div>
										</div>
									</div>
									
								</div>
							</div>
							<!-- Total Revenue -->



						</div>
						<form action="registration" method="POST" autocomplete="off">
							<div class="row" style="margin-top: 3%">
								<!-- Order Statistics -->
								<div class="col-md-6 col-lg-6 col-xl-6 order-0 mb-6">
									<div class="card h-100">
										<div
											class="card-header d-flex align-items-center justify-content-between pb-0">
											<div class="card-title mb-0">
												<h5 class="m-0 me-1" style="font-weight: bold; color: teal;">Register Card To Your NFC Ring </h5>
												<div class="tab-content p-0"></div>
											</div>

										</div>
										<div class="d-flex p-4 pt-3">
											<div class="card-body">
												<div class="tab-content p-0">
													<ul class="p-0 m-0">
														<li class="d-flex mb-2 pb-0">
															<div class="mb-2 col-md-5">
															<label for="userName" class="form-label">Customer
																	Name</label>
																<input type="text" class="form-control" id="userName"
																	name="userName" autocomplete="off"
																	placeholder="Enter Customer Name" min="16" autocomplete="off"
																	maxlength="16">
															</div>
															<div class="mb-2 col-md-2"></div>
															<div class="mb-2 col-md-5">
															<label for="cardType" class="form-label">Card
																	Type</label>
																<select id="cardType" name="cardType"
																	class="select2 form-select">
																	<option value="">---Select Card---</option>
																	<option value="HSBC VISA">HSBC VISA</option>
																	<option value="SBI RuPay">SBI RuPay</option>
																	<option value="HDFC VISA">HDFC VISA</option>
																</select>
															</div>
														
															
														</li>
														<li class="d-flex mb-0 pb-0">
														<div class="mb-3 col-md-5">
													<label for="cardType" class="form-label">CVV</label>
														<input type="text" class="form-control" placeholder="CVV number" name="cvvNumner" />
																	</div>
													<div class="mb-2 col-md-2"></div>				
													<div class="mb-3 col-md-5">
													<label for="cardType" class="form-label">Card Expiry   </label>
														<input type=month class="form-control" placeholder="Enter account number" name="cardExpiry" />
																	</div>
														<input type="text" hidden class="form-control" placeholder="Enter thumb Id" name="thumbId"  value="11"/>
																	
														</li>
														
														<li class="d-flex mb-0 pb-0">
															<div class="mb-2 col-md-12">
																<label for="zipCode" class="form-label">Card
																	Number</label> <input type="text" class="form-control"
																	id="cardNumber" name="cardNumber"
																	placeholder="0000-0000-0000-0000" min="16"
																	maxlength="16">
															</div>
														</li>
														<li class="d-flex mb-0 pb-0">
															<div class="mb-0 col-md-5">
																<label for="pinNumber" class="form-label">Enter
																	Your PIN </label> <input type="password" class="form-control"
																	id="userPin" name="userPin" placeholder="****"
																	maxlength="6">
															</div>
															<div class="mb-0 col-md-2"></div>
															<div class="mb-0 col-md-5">
																<label for="submit" class="form-label"> </label>
																<button type="submit" name="addCustomer" value="Add"
																	class="form-control btn btn-primary btn-md"
																	name="submit" style="background-color: #2C4399;">Enroll</button>
															</div>
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
											<h5 class="m-0 me-2" style="color: brown;font-weight: bolder;">Cards List</h5>
											<div class="tab-content p-0"></div>
										</div>

									</div>
									<div class="d-flex p-4 pt-3">
										<div class="card-body scrollStyle" style="height: 350px; overflow-y: auto" >
											<div class="tab-content p-0">
												<ul>
												
												<% 
												
												for(CustomerDetails cust:custList){
												
													%>
												
													<li class="pb-3" style="list-style: none">
									
														<div class="row">
														<div class="col-md-1">
															<div class="avatar flex-shrink-0">
														<img src="${pageContext.request.contextPath}/assets/img/icons/unicons/cc-warning.png" alt="Credit Card" class="rounded">
													</div>
													</div>
													<div class="col-md-5">
															<div class="me-3 ">
																<h6 class="mb-1 mr-2"><%=cust.getUserName()%></h6>
																<small class="text-muted">A/c - <%=cust.getCardType()%></small>
															</div>
															</div>
															<div class="col-md-5" style="text-align: right;">
															<div class="user-progress me-4 w-30">
																<small class="fw-semibold"><%="****-****-****-"+Long.toString(cust.getCardNumber()).substring(Long.toString(cust.getCardNumber()).length() - 4)%></small>
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
			<div class="content-backdrop fade"></div>
	
		<!-- Content wrapper -->

	<!-- / Layout page -->


	<!-- Overlay -->
	<div class="layout-overlay layout-menu-toggle"></div>


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
	<script
		src="${pageContext.request.contextPath}/assets/vendor/libs/jquery/jquery.js">
		
	</script>
	<script
		src="${pageContext.request.contextPath}/assets/vendor/libs/popper/popper.js">
		
	</script>
	<script
		src="${pageContext.request.contextPath}/assets/vendor/js/bootstrap.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

	<script
		src="${pageContext.request.contextPath}/assets/vendor/js/menu.js"></script>
	<!-- endbuild -->

	<!-- Vendors JS -->

	<!-- Main JS -->
	<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>

	<!-- Page JS -->
	<script
		src="${pageContext.request.contextPath}/assets/js/pages-account-settings-account.js"></script>

	<!-- Place this tag in your head or just before your close body tag. -->
	<script async defer src="https://buttons.github.io/buttons.js"></script>


</body>
</html>
