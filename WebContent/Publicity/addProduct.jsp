<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Product</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

    
    <meta name="viewport" content="width=device-width, initial-scale=1">
  
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="../public/style.css">
    <!-- w3 links -->
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style type="text/css">
          #map{ width:700px; height: 500px; }
        </style>
         <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAeWwZ3gDRU13z6jiQRTuhFkA3ugQG_Q7Q&callback=initMap"
    async defer></script>
    <!-- fontawesome CDN -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">

    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <script src="http://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
 
     <script src="../public/js/jquery.dataTables.min.js"></script>
    <script src="../public/js/data-tables-script.js"></script>
     
        
</head>


  <body>
    <div class="w3-sidebar w3-light-grey w3-bar-block" style="width:20%">
        <h3 class="w3-bar-item">Menu</h3>
        <a href="receptionistDashboard.jsp" class="w3-bar-item w3-button">Dashboard</a>
        <a href="search.jsp" class="w3-bar-item w3-button">View Product </a>
        <a href="serviceadvisorlist.jsp" class="w3-bar-item w3-button">Add Product</a>
        <a href="serviceadvisorlist.jsp" class="w3-bar-item w3-button">Remove Product</a>
        <a href="serviceadvisorlist.jsp" class="w3-bar-item w3-button">Feedback & Rating</a>
        <a href="receptionistPR.jsp" class="w3-bar-item w3-button">Reports</a>  
    </div>

    <!-- Page Content -->
    <div style="margin-left:20%">
         <div class="my-new-header">
             <button id="openNav" class="w3-button w3-xlarge my-hamburger-btn" onclick="w3_open()">&nbsp;</button>
             <span>Adzone</span>
             <div class="navbar-userpart">
                <span class="navbar-userpart-username">Welcome, Publicity| </span> <span><a href="../logout.jsp">logout</a></span>
             </div>
         </div>
        
        
        <!-- breadcrumbs at top of the page -->
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item" aria-current="page"><a href="receptionistDashboard.jsp">Dashboard</a> / </li>
            </ol>
        </nav>    

        <!-- dashboard -->
        
            
   

    <main>
    	
        
        <form action="../AddProduct" method="post" class="my-form container-95"  enctype="multipart/form-data">
            <div class="my-form-heading">
                <h5>Add Product</h5>
            </div>
            <div class="container-95">                
                <div class="row my-form-row">
                    <h6>Product Details</h6>
                    <div class="col-md-12">
                        <div class="row">
                            <div class="col-md-3">
                                <label for="product_type">Product Type</label>
                            </div>
                            <div class="col-md-6">
                                <select name="product_type" id="product_type" required>
                                    
                                    <option value="Hoarding">Hoarding </option>
                                    <option value="Kiosks">Kiosks</option>
                                    <option value="Gantry">Gantry</option>
                                </select>
                            </div>
                        </div>                                                
                    </div>
                   
                    
                                                       
                    <div class="col-md-12">
                        <div class="row">
                            <div class="col-md-3">
                                <label for="customer_email">Size(in foots)</label>
                            </div>
                                    <div class="col-md-1">
                                <input type="text" name="sizex" id="sizex" required >
                                </div> X 
                                <div class="col-md-1">
                                <input type="text" name="sizey" id="sizey"  required>
                            
                            </div>
                        </div>                        
                    </div>                    
                    <div class="col-md-12">
                        <div class="row">
                            <div class="col-md-3">
                                <label for="product_price">Product Price in Per Month</label>
                            </div>
                            <div class="col-md-6">
                                <input type="text" name="product_price" id="product_price"  required>
                            </div>
                        </div>                                            
                    </div>
                    
                    
                    <div class="col-md-12">
                        <div class="row">
                            <div class="col-md-3">
                                <label for="Address">Product Image</label>
                            </div>
                            <div class="col-md-5">
                                <input type="file" name="product_image" >
                            </div>
                        </div>                                                
                    </div> 
                    <div class="col-md-12">
                            <div class="row">
                                <div class="col-md-3">
                                    <label for="customer_aadhaar">Product tier</label>
                                </div>
                                <div class="col-md-6">
                                    <input type="text" name="tier" id="tier">
                                </div>
                            </div>                                                
                        </div>     
                        <div class="col-md-12">
                            <div class="row">
                                <div class="col-md-3">
                                   <p> Select a location!</p>
        <p>Click on a location on the map to select it. Drag the marker to change location.</p>
        
                                </div>
                                <div class="col-md-6" id="map">
                                     
                                </div>
                            </div>                                                
                        </div>                    
                      <input type="hidden" name="lat" id="lat" readonly="yes"><br>
            <input type="hidden" name="lng" id="lng" readonly="yes">
                     
              
                                                                        
                    <div class="col-md-12">
                            <div class="row">
                                <div class="col-md-3">
                                    <label for="product_location">Location</label>                                    
                                </div>
                                <div class="col-md-6">
                                    <input type="text" name="product_location" id="product_location" required>
                                </div>
                            </div>
                        </div>  
                        <div class="col-md-12">
                            <div class="row">
                                <div class="col-md-3">
                                    <label for="city">City</label>
                                </div>
                                <div class="col-md-6">
                                    <input type="text" name="city" id="city" required>
                                </div>
                            </div>                                                
                        </div>
                        <div class="col-md-12">
                            <div class="row">
                                <div class="col-md-3">
                                    <label for="customer_state">State</label>
                                </div>
                                <div class="col-md-6">
                                    <input type="text" name="state" id="state" required>
                                </div>
                            </div>                                                
                        </div>
                </div>
                
                <div class="my-submit-div">
                    <center>
                    	<input type="submit" name="submit" id="submit" class="btn btn-secondary btn-sm">
                    </center>
                </div>
            </div>                                   
        </form>
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
    <script type="text/javascript" src="../public/js/map.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>    
</body>
</html>