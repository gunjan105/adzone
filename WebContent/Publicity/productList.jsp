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
        <a href="receptionistDashboard.jsp" class="w3-bar-item w3-button">Dashboard</a>
        <a href="search.jsp" class="w3-bar-item w3-button">Select & Search Product </a>
        <a href="serviceadvisorlist.jsp" class="w3-bar-item w3-button">View Product</a>
        <a href="serviceadvisorlist.jsp" class="w3-bar-item w3-button">Give Feedback & Rating</a>
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
                    <h4>Product list</h4>
                </center>
            </div>
            <div class="container mt-5">
                <form action="#" method="post">
	   		<table id="data-table-simple-1" class="table">
			   	<thead style="text-align: center;">
			   		<tr>
                        <th>Sr.</th>
                        <th>City</th>
			   			<th>Landmark</th>
			   			<th>Rate</th>
			   			<th>Media Type</th> 
			   			<th>Size</th>
			   			
                       </tr>     
			   	</thead>
			   	<tbody style="font-size: 12px; text-align: center;">
			   		 <tr>
                            <td>1</td>
                            <td>Ahemdabad</td>
                            <td>Science City Road - Opp, Jbr Arcade</td>
                            <td>&#x20b9 55000</td>
                            <td>Hoadring</td>
                            <td>20x6</td>
                    </tr>
                    <tr>
                            <td>2</td>
                            <td>Rajkot</td>
                            <td>601, Star Chambers, Chowk, Nr. Panchnath Temple</td>
                            <td>&#x20b9 48000</td>
                            <td>Kiosk</td>
                            <td>5x3</td>
                    </tr>
                    <tr>
                            <td>3</td>
                            <td>Surat</td>
                            <td>Sardar Bridge Road, Athwa Gate</td>
                            <td>&#x20b9 55000</td>
                            <td>Hoadring</td>
                            <td>15x8</td>
                    </tr>
                    <tr>
                            <td>4</td>
                            <td>Morbi</td>
                            <td>Guj Housing Borad Kadiya Boarding Shop Number 44</td>
                            <td>&#x20b9 2400</td>
                            <td>Hoadring</td>
                            <td>20x10</td>
                    </tr>
                    <tr>
                            <td>5</td>
                            <td>Ahemdabad</td>
                            <td>Vastrapur Lake to Vastrapur Gam</td>
                            <td>&#x20b9 40000</td>
                            <td>Hoadring</td>
                            <td>21x6</td>
                    </tr>
                    <tr>
                            <td>6</td>
                            <td>Gandhinagar</td>
                            <td>B 205, Swagat Rain Forest 2, Kudasan Road</td>
                            <td>&#x20b9 44000</td>
                            <td>Hoadring</td>
                            <td>20x8</td>
                    </tr>
                    <tr>
                            <td>7</td>
                            <td>Ahemdabad</td>
                            <td>CG Road Panchwati Junction No.4 Rhs Upper, abhik</td>
                            <td>&#x20b9 60000</td>
                            <td>Hoadring</td>
                            <td>22x10</td>
                    </tr>
                    <tr>
                            <td>8</td>
                            <td>Vadodara</td>
                            <td>Sainath Hights, Makrand Desai Road, Gotri Road</td>
                            <td>&#x20b9 35000</td>
                            <td>Hoadring</td>
                            <td>20x6</td>
                    </tr>
                    <tr>
                            <td>9</td>
                            <td>Rajkot</td>
                            <td>103, Surbhi Complex, near Over Bridge, Nr. Makkam Chowk, Gondal Rd</td>
                            <td>&#x20b9 55000</td>
                            <td>Hoadring</td>
                            <td>20x6</td>
                    </tr>
                    <tr>
                            <td>10</td>
                            <td>Ahemdabad</td>
                            <td>Ambali - Bopal Road - Fr Circle, Opp, Big Bazar O/S, Iscon Temple</td>
                            <td>&#x20b9 58000</td>
                            <td>Gantry</td>
                            <td>20x10</td>
                    </tr>


			   	</tbody>
               </table>
               </form>
		</div>
            
            <div class="my-dashboard-content mt-3">
                <div class="row">
                    <form>
                        <input type="checkbox" name="all_cbox" value="1"/>
                    </form>
                </div>
            </div>
        </div>
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