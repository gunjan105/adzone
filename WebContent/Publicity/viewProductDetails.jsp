<%@page import="pojo.Products"%>
<%@page import="modal.ProductsDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">


<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet" href="../public/style.css">
<!-- w3 links -->
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<!-- fontawesome CDN -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
	integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr"
	crossorigin="anonymous">

<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<script src="http://code.jquery.com/jquery-3.2.1.min.js"
	integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
	crossorigin="anonymous"></script>

<script src="../public/js/jquery.dataTables.min.js"></script>
<script src="../public/js/data-tables-script.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />

<!-- numscroller -->
<script src="../public/js/numscroller.js"></script>

<!-- <script src="./main.js"></script> -->
<!-- <link rel="stylesheet" href="./customize.css"> -->
<link rel="stylesheet" href="../public/css/jquery.dataTables.min.css">
<link rel="stylesheet" href="../public/style.css">

<!-- google charts -->
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<!-- /links.html -->
<script type="text/javascript">
	

	$(function() {

		$('input[name="datefilter"]').daterangepicker({
			
			minDate : new Date(),
			//maxDate : "01/25/2020",
			autoUpdateInput : false,
			locale : {
				cancelLabel : 'Clear'
			}
		});
	
		
		
		
		
		$('input[name="datefilter"]').on(
				'apply.daterangepicker',
				function(ev, picker) {
					$(this).val(
							picker.startDate.format('MM/DD/YYYY') + ' - '
									+ picker.endDate.format('MM/DD/YYYY'));
				});

		$('input[name="datefilter"]').on('cancel.daterangepicker',
				function(ev, picker) {
					$(this).val('');
				});

	});
	function checkDate() {
		var durationObj = document.getElementById("datefilter");
		var selectedDate = durationObj.value.split(" - ");
		console.log(selectedDate);
		var duration = new Date(selectedDate[0]).getTime();
		var currentDate = new Date().getTime();
		if (duration < currentDate) {
			alert("Please Enter a valid Date");
			durationObj.reset();
		}
	}
</script>

</head>


<title>Customer Dashboard</title>
<!-- <script type = "text/javascript" >
        function preventBack() { window.history.forward(1); }
        setTimeout("preventBack()", 0);
        window.onunload = function () { null };
        function check(){
        
        }
</script>  -->


<body onload="check()">
	<!-- Sidebar -->
	<div class="w3-sidebar w3-light-grey w3-bar-block" style="width: 20%">
		<h3 class="w3-bar-item">Menu</h3>
		<a href="receptionistDashboard.jsp" class="w3-bar-item w3-button">Dashboard</a>
		<a href="search.jsp" class="w3-bar-item w3-button">Select & Search
			Product </a> <a href="serviceadvisorlist.jsp"
			class="w3-bar-item w3-button">View Product</a> <a
			href="serviceadvisorlist.jsp" class="w3-bar-item w3-button">Give
			Feedback & Rating</a>
		<!-- <a href="receptionistPR.jsp" class="w3-bar-item w3-button">Reports</a>   -->
	</div>

	<!-- Page Content -->
	<div style="margin-left: 20%">
		<div class="my-new-header">
			<button id="openNav" class="w3-button w3-xlarge my-hamburger-btn"
				onclick="w3_open()">&nbsp;</button>
			<span>Adzone</span>
			<div class="navbar-userpart">
				<span class="navbar-userpart-username">Welcome, Customer | </span> <span><a
					href="../logout.jsp">logout</a></span>
			</div>
		</div>


		<!-- breadcrumbs at top of the page -->
		<nav aria-label="breadcrumb">
			<ol class="breadcrumb">
				<li class="breadcrumb-item" aria-current="page"><a
					href="receptionistDashboard.jsp">Dashboard</a> /</li>
			</ol>
		</nav>

		<!-- dashboard -->
		<div class="my-dashboard">
			<div class="my-dashboard-header">
				<center>
					<h4>Product Details</h4>
				</center>
			</div>

		<% int productId = Integer.parseInt(request.getParameter("product_id"));
			ProductsDao productsDao = new ProductsDao();
			Products product = productsDao.getById(productId);
			
		%>
			<div class="card mb-3" style="max-width: 700px;">
				<div class="row no-gutters">
					<div class="col-md-5 card border-primary mb-3">
						<img src="<%=product.getProductImage()%>" height="350" width="290" >
					</div>
					<div class="col-md-7">
						<div class="card-body">
							<div class="col-sm-12">
								<div class="col-md-8">
									<label for="customer_state">Location : Ahmedabad</label>
								</div>
								<div class="col-md-8">
									<label for="customer_state">Price : &#x20b9 <%=product.getProductPrice() %> </label>
								</div>
								<div class="col-md-8">
									<label for="customer_state">Size : <%=product.getSizex() %> X <%=product.getSizey() %> in foots </label>
								</div>
								<div class="col-md-8">
									<label for="customer_state">Publicity : <%=product.getPublicityDetails().getPublicityName() %></label>
								</div>

								<div class="col-md-6">
									<label for="customer_city">Duration</label> 
									<input type="text"	name="datefilter" value="" />
								</div>





								<div class="col-md-6">
									<a href="#" class="btn btn-primary">Add To Plan</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- <div class="row">
                    <div class="col-sm-6">
                            <img src="./public/image/product3.jpg" style="height: 370px; width: 450px; ">	
                    </div>
                    <div class="col-sm-6">
                            <div class="col-md-6">
                                    <label for="customer_state">Location : Ahmedabad</label>
                                </div>
                            <div class="col-md-6">
                                    <label for="customer_state">Price :  &#x20b9 54,000.00 </label>
                                </div>
                                <div class="col-md-6">
                                        <label for="customer_state">Size : 25 X 10 in foots </label>
                                    </div>
                                    <div class="col-md-6">
                                            <label for="customer_state">Publicity : Chitra </label>
                                        </div>
                                        <div class="col-md-6">
                                                <div class="col-md-3">
                                                        <label for="customer_city">Duration</label>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <input type="date" name="duration" id="duration" required>
                                                    </div>    
                                                </div>


                                    <div class="col-md-4">
                                    <a href="#" class="btn btn-primary">Add To Plan</a></div>
                    </div>
                  </div>
             -->






		<main> <!-- <form class="form-inline">
            <label class="" for="inlineFormInputName2">Name</label>
            <input type="text" class="form-control mb-2 mr-sm-2" id="inlineFormInputName2" placeholder="Jane Doe">                                                            
            
            <button type="submit" class="btn btn-primary mb-2">Submit</button>
        </form> --> </main>


		<script>
        function w3_open() {
            // document.getElementById("main").style.marginLeft = "25%";
            document.getElementById("mySidebar").style.width = "25%";
            document.getElementById("mySidebar").style.display = "block";
            // document.getElementById("openNav").style.display = 'none';
        }
        function w3_close() {
            // document.getElementById("main").style.marginLeft = "0%";
            document.getElementById("mySidebar").style.display = "none";
            // document.getElementById("openNav").style.display = "inline-block";
        }
    </script>

		<script>
        var vsd = document.getElementById("verify-static-details");
        var ef = document.getElementById("edit-form");

        ef.style.display = "none";
        function editButtonClicked() {           

            vsd.style.display = "none";
            ef.style.display = "block";
        }
        function cancelButtonClicked() {
            vsd.style.display = "block";
            ef.style.display = "none";
        }
    </script>

		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
			integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
			crossorigin="anonymous"></script>
		<script
			src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
			integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
			crossorigin="anonymous"></script>
</body>
</html>