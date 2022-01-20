<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
	integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
	integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/sweetalert2@11.2.1/dist/sweetalert2.all.min.js"></script>

<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
</head>
<body>
	<jsp:include page="/WEB-INF/jsp/nav.jsp" />
	<div class="container-fluid">

		<h1 class="text-center pb-4">Electricity Bill</h1>

		<div class="col-sm-12 text-center">
			<img class="border"
				src="https://www.cesc.co.in/wp-content/uploads/2014/01/CESC-LOGO-FINAL.png">
		</div>
		<form class="mt-5" id="form-begin" autocomplete="off">

			<div class="row" id="div-mobile-number">
				<div class="col-sm-2 offset-sm-3 font-weight-bold p-3">
					<label for="inputPassword6" class=" fw-bold fs-5 text">Mobile
						Number<span class="text-danger mandatory"><sup>*</sup></span>
					</label>
				</div>
				<div class="col-sm-3 p-3 bg-light">
					<input type="text" class="form-control mb-3"
						id="text-mobile-number">
				</div>
			</div>


			<div class="row" id="div-customer-name">
				<div class="col-sm-2 offset-sm-3 font-weight-bold p-3">
					<label for="inputPassword6" class=" fw-bold fs-5 text">Customer
						Name<span class="text-danger mandatory"><sup>*</sup></span>
					</label>
				</div>
				<div class="col-sm-3 p-3 bg-light">
					<input type="text" class="form-control mb-3"
						id="text-customer-name"> <select
						class="form-select form-select-md mb-3" id="text-customer-name"
						style="width: 100%; display: none;">

					</select>
				</div>
			</div>

			<div class="row" id="div-customer-id">
				<div class="col-sm-2 offset-sm-3 font-weight-bold p-3">
					<label for="inputPassword6" class=" fw-bold fs-5 text">Customer
						ID<span class="text-danger mandatory"><sup>*</sup></span>
					</label>
				</div>
				<div class="col-sm-3 p-3 bg-light">
					<select class="form-select form-select-md mb-3"
						id="select-customer-id" style="width: 100%;">

					</select> <input type="text" class="form-control mb-3" id="text-customer-id"
						style="display: none;">
				</div>
			</div>

			<div class="row form-group" id="div-amount">
				<div class="col-sm-2 offset-sm-3 font-weight-bold p-3">
					<label for="inputPassword6" class="fw-bold fs-5 text">Amount<span
						class="text-danger mandatory"><sup>*</sup></span></label>
				</div>
				<div class="col-sm-3 p-3 bg-light">
					<input type="text" class="form-control mb-3" id="text-amount">

				</div>
			</div>

			<div class="col-sm-3 offset-sm-5 text-center mt-5">
				<button class="btn btn-outline-info w-100" type="button"
					id="btn-save">Save</button>
			</div>
		</form>
	</div>
	<script src="/digital-studio/js/electricity-bill-entry.js"></script>
</body>
</html>