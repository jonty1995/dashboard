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

<link href="/digital-studio/css/table.css" rel="stylesheet">


<script
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"
	integrity="sha512-T/tUfKSV1bihCnd+MxKD0Hm1uBBroVYBOYSk1knyvQ9VyZJpc/ALb4P0r6ubwVPSGB2GvjeoMAJJImBG12TiaQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css"
	integrity="sha512-mSYUmp1HYZDFaVKK//63EcZq4iFWFjxSL+Z3T/aCt4IO9Cejm03q3NKKYN6pFQzY0SBOr8h+eCIAZHPXcpZaNw=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="https://momentjs.com/downloads/moment.js"></script>
</head>
<body>
	<jsp:include page="/WEB-INF/jsp/nav.jsp" />
	<div class="container-fluid">



		<div class="col-sm-12 d-flex mt-3 lavender-border">
			<div class="col-sm-2 pt-3">
				<input class="form-control alpha-border" id="txt-start-date"
					aria-describedby="basic-addon1" placeholder="From Date"
					data-date-format="dd/mm/yyyy">
			</div>
			<div class="col-sm-1 pt-3"></div>
			<div class="col-sm-2 pt-3">
				<input class="form-control alpha-border" id="txt-end-date"
					aria-describedby="basic-addon1" placeholder="To Date"
					data-date-format="dd/mm/yyyy">
			</div>
			<div class="col-sm-1 pt-3"></div>
			<div class="col-sm-2 pt-3">
				<select class="form-select form-select-md mb-3 alpha-border"
					aria-label=".form-select-md" id="select_status">
					<option value="ALL">ALL</option>
					<option value="PENDING">PENDING</option>
					<option value="PAYMENT_SUCCESS">PAYMENT SUCCESS</option>
					<option value="PAYMENT_FAILURE">PAYMENT FAILURE</option>
					<option value="REJECTED">REJECTED</option>
				</select>
			</div>
			<div class="col-sm-1 pt-3"></div>
			<div class="col-sm-3 pt-3">
				<input class="form-control alpha-border"
					aria-describedby="basic-addon1" placeholder="Search"
					id="txt_search">
			</div>
		</div>

		<div class="table-wrapper">
			<table id="table-data" class="table table-hover table-responsive">

				<thead class="thead-dark sticky-header">
					<tr class="bg-secondary text-light">
						<th>Customer ID</th>
						<th>Customer Name</th>
						<th>Mobile Number</th>
						<th>Amount</th>
						<th>Entry Date</th>
						<th>Status</th>
					</tr>
				</thead>
				<tbody></tbody>
			</table>
		</div>
	</div>

	<script>
		$('#txt-start-date').datepicker({
			autoclose : true,
			todayHighlight : true
		});
		$('#txt-end-date').datepicker({
			autoclose : true,
			todayHighlight : true
		});
	</script>
	<script src="/digital-studio/js/electricity-bill-show-all.js"></script>
</body>
</html>