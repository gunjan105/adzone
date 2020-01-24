<%@page import="modal.ProductsDao"%>
<%@page import="pojo.Products"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">

    
    <meta name="viewport" content="width=device-width, initial-scale=1">
  
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="../public/style.css">
    <!-- w3 links -->
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

    <!-- fontawesome CDN -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">

    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <script src="http://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
 
     <script src="../public/js/jquery.dataTables.min.js"></script>
    <script src="../public/js/data-tables-script.js"></script>
    
    <!-- numscroller -->
    <script src="../public/js/numscroller.js"></script>
    
    <!-- <script src="./main.js"></script> -->
    <!-- <link rel="stylesheet" href="./customize.css"> -->
    <link rel="stylesheet" href="../public/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="../public/style.css">
   
    <!-- google charts -->
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <!-- /links.html -->    
        
</head>


<title>Customer Dashboard</title>
  <!-- <script type = "text/javascript" >
        function preventBack() { window.history.forward(1); }
        setTimeout("preventBack()", 0);
        window.onunload = function () { null };
        function check(){
        
        }
</script>  -->


  <body onload="check()" >
    <!-- Sidebar -->
    <div class="w3-sidebar w3-light-grey w3-bar-block" style="width:20%">
        <h3 class="w3-bar-item">Menu</h3>
        <a href="customerDashboard.jsp" class="w3-bar-item w3-button">Dashboard</a>
        <a href=".jsp" class="w3-bar-item w3-button">Select & Search Product </a>
        <a href="viewProductDetails.jsp" class="w3-bar-item w3-button">View Product</a>
        <a href="customerFeedback.jsp" class="w3-bar-item w3-button">Give Feedback & Rating</a>
        <!-- <a href="receptionistPR.jsp" class="w3-bar-item w3-button">Reports</a>   -->
    </div>

    <!-- Page Content -->
    <div style="margin-left:20%">
         <div class="my-new-header">
             <button id="openNav" class="w3-button w3-xlarge my-hamburger-btn" onclick="w3_open()">&nbsp;</button>
             <span>Adzone</span>
             <div class="navbar-userpart">
                <span class="navbar-userpart-username">Welcome, Customer | </span> <span><a href="../logout.jsp">logout</a></span>
             </div>
         </div>
        
        
        <!-- breadcrumbs at top of the page -->
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item" aria-current="page"><a href="receptionistDashboard.jsp">Dashboard</a> / </li>
            </ol>
        </nav>    

        <!-- dashboard -->
        <div class="my-dashboard">
            <div class="my-dashboard-header">
                <center>
                    <h4>Customer Dashboard</h4>
                </center>
            </div>
            
           <br><br>
            <div class="flex-container" >
           <% ProductsDao productsDao = new ProductsDao();
           List<Products> productList = productsDao.getAll(); 
           int i = 0 ;
          for(Products product : productList){
        	  i++;
         
           if(i%3==1){  %>
       	<div class="row hoarding-card" style="margin-bottom: 50px"  > <% }%>
            <div class="col-md-3 widget widget1">
            <div class="card" >
                <img class="card-img-top" src="<%=product.getProductImage()%>" alt="Card image cap" height="150" width="100">
                <div class="card-body" style="height: 250px;" >
                  <h5 class="card-title"><%=product.getProductLocation() %></h5>
                  <center ><p class="card-text">&#x20b9 <%=product.getProductPrice() %></p>
                  <p class="card-text"><%= product.getPublicityDetails().getPublicityName()%></p>
                  <a href="../Publicity/viewProductDetails.jsp?product_id=<%=product.getProductId()%>" class="btn btn-primary" style="älign:bottom;">Add To Plan</a></center>
                </div>
              </div> 
        </div>
        <div class="col-md-1"></div>
        <%
        if(i%3==0){
        	%>
        	</div>
        	
        	<% 
        }
        } %>
        
     </div>
    
    <main>
        <!-- <form class="form-inline">
            <label class="" for="inlineFormInputName2">Name</label>
            <input type="text" class="form-control mb-2 mr-sm-2" id="inlineFormInputName2" placeholder="Jane Doe">                                                            
            
            <button type="submit" class="btn btn-primary mb-2">Submit</button>
        </form> -->
        
    </main>


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
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>    
</body>
</html>