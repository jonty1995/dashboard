<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html>
<head>


<style>
.nav {
	background-color: #734F96;
}

.nav-pills>li>a, .nav-pills>li.active>a:focus {
	color: #ffffff !important;
}

.nav-pills>li>a {
	color: #ffffff !important;
}

.nav-pills>li.active>a {
	background-color: #340761 !important;
}

.nav-pills>li>a:hover {
	background-color: #CB4EDB !important;
	color: black;
}

.dropdown-toggle::after {
	content: none;
}
</style>
</head>
<body>

	<ul class="nav nav-pills px-2 mb-5 align-items-center">
		<li class="nav-item"><a href="/digital-studio/dashboard"
			class="nav-link">Home</a></li>

		<li class="nav-item dropdown"><a
			href="#"
			class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Electricity
				Bill</a>

			<div class="dropdown-menu dropdown-menu-end">
				<a href="/digital-studio/entry/electricity-bill"
					class="dropdown-item">Entry</a> <a
					href="/digital-studio/show-all/electricity-bill"
					class="dropdown-item">Show All</a>
				<div class="dropdown-divider"></div>
			</div></li>

		<li class="nav-item dropdown ms-auto"><a href="#"
			class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
				<div class="inline">
					<div style='width: 40px;' data-toggle="textavatar"
						data-name='ABC DEF'></div>
				</div>
		</a>

			<div class="dropdown-menu dropdown-menu-end">
				<h6 class="dropdown-header">ABC</h6>
				<div class="dropdown-divider"></div>
				<a
					href="/contractBilling/generic/BusinessManagerDetails/BMRequestor/ACCSET/54/55"
					class="dropdown-item">Business Manager-Requestor / Approver
					Details</a>
				<div class="dropdown-divider"></div>
				<a href="/contractBilling/logout" class="dropdown-item">Logout</a>
			</div></li>
	</ul>


	<script src="/contractBilling/avatar/textavatar.js"></script>
</body>
</html>