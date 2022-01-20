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

</head>
<body>
	<jsp:include page="/WEB-INF/jsp/nav.jsp" />
	<div class="container-fluid">
		<div class="row">
			<div class="col-12 col-sm-6 col-xl-4 mb-4">
				<div class="card border-0 shadow">
					<div class="card-body">
						<div class="row d-block d-xl-flex align-items-center">
							<div
								class="col-12 col-xl-5 text-xl-center mb-3 mb-xl-0 d-flex align-items-center justify-content-xl-center">
								<div class="icon-shape icon-shape-primary rounded me-4 me-sm-0">
									<svg class="icon icon-md" fill="currentColor"
										viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                  							<path
											d="M13 6a3 3 0 11-6 0 3 3 0 016 0zM18 8a2 2 0 11-4 0 2 2 0 014 0zM14 15a4 4 0 00-8 0v3h8v-3zM6 8a2 2 0 11-4 0 2 2 0 014 0zM16 18v-3a5.972 5.972 0 00-.75-2.906A3.005 3.005 0 0119 15v3h-3zM4.75 12.094A5.973 5.973 0 004 15v3H1v-3a3 3 0 013.75-2.906z"></path>
              								 </svg>
								</div>
							</div>
							<div class="col-12 col-xl-7 px-xl-0">
								<div class="d-none d-sm-block">
									<h2 class="h5">Customers</h2>
									<h3 class="fw-extrabold mb-1">345k</h3>
								</div>
								<div class="small d-flex mt-1">
									<div>
										<span class="text-success fw-bolder me-1">22%</span> Since
										last month
									</div>
								</div>
							</div>
						</div>
					</div>


				</div>
			</div>
			<div class="col-12 col-sm-6 col-xl-4 mb-4">
				<div class="card border-0 shadow">
					<div class="card-body">
						<div class="row d-block d-xl-flex align-items-center">
							<div
								class="col-12 col-xl-5 text-xl-center mb-3 mb-xl-0 d-flex align-items-center justify-content-xl-center">
								<div class="icon-shape icon-shape-primary rounded me-4 me-sm-0">
									<svg class="icon icon-md" fill="currentColor"
										viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                  							<path
											d="M13 6a3 3 0 11-6 0 3 3 0 016 0zM18 8a2 2 0 11-4 0 2 2 0 014 0zM14 15a4 4 0 00-8 0v3h8v-3zM6 8a2 2 0 11-4 0 2 2 0 014 0zM16 18v-3a5.972 5.972 0 00-.75-2.906A3.005 3.005 0 0119 15v3h-3zM4.75 12.094A5.973 5.973 0 004 15v3H1v-3a3 3 0 013.75-2.906z"></path>
              								 </svg>
								</div>
							</div>
							<div class="col-12 col-xl-7 px-xl-0">
								<div class="d-none d-sm-block">
									<h2 class="h5">Customers</h2>
									<h3 class="fw-extrabold mb-1">345k</h3>
								</div>
								<div class="small d-flex mt-1">
									<div>
										<span class="text-success fw-bolder me-1">22%</span> Since
										last month
									</div>
								</div>
							</div>
						</div>
					</div>


				</div>
			</div>

			<div class="col-12 col-sm-6 col-xl-4 mb-4">
				<div class="card border-0 shadow">
					<div class="card-body">
						<div class="row d-block d-xl-flex align-items-center">
							<div
								class="col-12 col-xl-5 text-xl-center mb-3 mb-xl-0 d-flex align-items-center justify-content-xl-center">
								<div class="icon-shape icon-shape-primary rounded me-4 me-sm-0">
									<svg class="icon icon-md" fill="currentColor"
										viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                  							<path
											d="M13 6a3 3 0 11-6 0 3 3 0 016 0zM18 8a2 2 0 11-4 0 2 2 0 014 0zM14 15a4 4 0 00-8 0v3h8v-3zM6 8a2 2 0 11-4 0 2 2 0 014 0zM16 18v-3a5.972 5.972 0 00-.75-2.906A3.005 3.005 0 0119 15v3h-3zM4.75 12.094A5.973 5.973 0 004 15v3H1v-3a3 3 0 013.75-2.906z"></path>
              								 </svg>
								</div>
							</div>
							<div class="col-12 col-xl-7 px-xl-0">
								<div class="d-none d-sm-block">
									<h2 class="h5">Customers</h2>
									<h3 class="fw-extrabold mb-1">345k</h3>
								</div>
								<div class="small d-flex mt-1">
									<div>
										<span class="text-success fw-bolder me-1">22%</span> Since
										last month
									</div>
								</div>
							</div>
						</div>
					</div>


				</div>
			</div>
		</div>
	</div>
</body>
</html>