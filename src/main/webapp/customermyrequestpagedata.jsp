<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    
        <link rel="icon" type="image/peg" href="images/logo.jpeg">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/peg" href="images/logo.jpeg">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <style>
        .body {
            margin: 0;
            padding: 0;
            overflow-x: hidden;
            font-family: 'Poppins', sans-serif;
            background-color: aliceblue;
        }

        .navbar {
            font-family: 'Poppins', sans-serif;
            background-color: #2B2E4A;
            /* Change this to your desired color */
            border-color: #2B2E4A;
            /* Change this to match the background color or adjust as needed */
        }

        .navbar-nav {
            padding-top: 13.5px;
            padding-bottom: 13.5px;
            font-size: 18px;
        }

        .container {
            font-family: 'Poppins', sans-serif;
            margin-top: 0px;
            background-color: aliceblue;
            width: 100%;

        }

        nav .navbar-nav li a {
            color: rgb(239, 118, 6) !important;
        }

        .text-primary {
            color: #FF5733;
            /* Change this to your desired primary color */
        }

        .header {
            height: 70vh;
            /* Set the height to half of the viewport height */
            width: 100%;
            /* Set the width to 100% */
            position: relative;
        }

        .header-image {
            width: 100%;
            height: 100%;
            object-fit: cover;
            filter: blur(2px);
            /* Apply a slight blur effect */
        }

        .header-overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.7));
            /* Overlay gradient effect */
        }

        .header-content {
            position: absolute;
            top: 60%;
            left: 50%;
            transform: translate(-50%, -50%);
            text-align: center;
            color: white;
            z-index: 1;
            /* Ensure content is above overlay */
        }

			 .login-container {
      height: 430px;
      width: 1060px;
      margin: 100px auto;
      margin-top: -10px;
      padding: 20px;
      background-color: rgba(255, 255, 255, 0.3);
      border-radius: 10px;
      backdrop-filter: blur(10px);
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
    }
		
		
        .header-content h1 {
            font-size: 3rem;
            margin-bottom: 10px;
        }

        .header-content p {
            font-size: 1.5rem;
        }

        @media (max-width: 768px) {

            /* Adjust font sizes or other styles for smaller screens */
            body {
                font-size: 14px;
            }
        }

        /* Navbar Styles for Mobile View */
        @media (max-width: 768px) {
            .navbar {
                background-color: #2B2E4A;
                border-color: #2B2E4A;
                padding: 5px 0;
            }

            .navbar-nav {
                font-size: 14px;
            }

            /* Hide XperienceAuto in mobile view */
            .navbar-brand .logo-mobile {
                display: none;
            }

            /* Adjust the mobile navigation width */
            .navbar-collapse {
                max-height: calc(100vh - 55px);
                /* Subtract the height of the navbar */
                overflow-y: auto;
            }

            /* Center align mobile logo and icons */
            .navbar-brand {
                display: flex;
                align-items: center;
                text-align: center;
                padding: 10px;
            }

            /* Move the toggle button to the left */
            .navbar-toggle {
                float: left;
                margin-left: 15px;
                margin-right: 0;
            }

            /* Adjust padding for navbar links */
            .navbar-nav {
                padding-top: 0;
                padding-bottom: 0;
            }

            /* Style the mobile navigation links */
            .navbar-nav li a {
                padding: 10px 20px;
                /* Adjust the padding as needed */
                color: #fff;
                /* Change link color */
            }

            /* Hide the image in mobile view */
            .hide-in-mobile {
                display: none;
            }
        }

        /* Logo and App Name Styles */
        .navbar-brand i {
            margin-right: 5px;
            font-size: 20px;
            color: white;
        }

        /* Display the logo in desktop mode */
        .navbar-brand img.desktop-show {
            height: 40px;
            width: auto;
            margin-right: 5px;
        }

        .navbar-brand .app-name {
            font-size: 20px;
            color: white;
        }

        /* Add this CSS to your existing styles */
        .partner-logos {
            background-color: aliceblue;
            padding: 20px 0;
        }

        .partner-logo {
            background-color: #ffffff;
            padding: 20px;
            text-align: center;
            border: 2px solid #000000;
            /* Add a border for separation */
        }

        .partner-logo {
            text-align: center;
            /* Center-align the images */
            margin-bottom: 0px;
            /* Add some spacing between logos */
        }

        .partner-logo img {
            width: 100%;
            /* Set a fixed width for all images (adjust as needed) */
            max-height: 100px;
            /* Set a maximum height if necessary */
        }


        /* Style for the About section */
        .container-fluid.py-5 {
            background-color: aliceblue;
            /* Background color */
            padding: 5% 0;
            /* Adjust padding as needed */
        }

        .container.pt-5.pb-3 {
            text-align: center;
        }

        .display-1.text-primary {
            font-size: 3rem;
            /* Adjust the font size */
        }

        .display-4.text-uppercase.text-center.mb-5 {
            color: #333;
            /* Text color */
        }

        .row.justify-content-center {
            margin-top: 30px;
            /* Adjust the margin as needed */
        }

        .col-lg-10.text-center {
            margin-bottom: 10px;
            /* Adjust the margin as needed */
        }

        .w-75.mb-4 {
            max-width: 100%;
            /* Adjust the maximum width as needed */
        }

        /* Styling for the service items */
        .col-lg-4.mb-2 {
            padding: 0 5px;
            /* Adjust the padding as needed */
        }

        .bg-light.p-4.mb-4 {
            background-color: #fff;
            /* Background color */
            border: 1px solid #ddd;
            /* Border color */
            border-radius: 5px;
            /* Border radius */
            height: 100%;
            /* Height of each service item */
            transition: transform 0.3s ease;
            /* Transition effect */
        }

        .bg-secondary.p-4.mb-4 {
            background-color: #333;
            /* Background color */
            border: 1px solid #222;
            /* Border color */
            border-radius: 5px;
            /* Border radius */
            height: 100%;
            /* Height of each service item */
            transition: transform 0.3s ease;
            /* Transition effect */
        }

        /* Icon color for service items */
        .d-flex.align-items-center.justify-content-center.flex-shrink-0.bg-primary {
            background-color: #FF5733;
            /* Adjust the icon background color */
            color: #fff;
            /* Icon color */
            border-radius: 50%;
            /* Make the icon container circular */
            width: 60px;
            /* Adjust the width as needed */
            height: 60px;
            /* Adjust the height as needed */
        }

        /* Hover effect for service items */
        .bg-light.p-4.mb-4:hover,
        .bg-secondary.p-4.mb-4:hover {
            transform: scale(1.05);
            /* Scale up on hover */
        }

        /* Contact section */
        .contact-section {
            background-color: aliceblue;
            padding: 1.5% 2%;
            width: 100%;
            font-size: medium;
        }

        .contact-title {
            text-align: center;
            color: #FF5733;
            font-size: 2rem;
            margin-bottom: 30px;
        }

        .contact-form {
            background-color: #fffbfb;
            padding: 30px;
            border: 1px solid #fffcfc;
            border-radius: 5px;
        }

        .contact-info {
            background-color: #333;
            padding: 30px;
            border: 1px solid #ffffff;
            border-radius: 5px;
            color: #fff;
        }

        .contact-info h3 {
            color: #FF5733;
        }

        .btn-custom {
            background-color: #FF5733;
            /* Change this to your desired button color */
            color: white;
            /* Text color for the button */
        }

        /* Hover effect (optional) */
        .btn-custom:hover {
            background-color: #FF5733;
            /* Change this to the hover color you prefer */
        }

        /* Responsive styles for smaller screens */
        @media (max-width: 768px) {

            /* Adjust font sizes or other styles for smaller screens */
            body {
                font-size: 14px;
            }
        }

        /* Footer Styles */
        .footer {
            background-color: #2B2E4A;
            color: white;
            text-align: center;
            padding: 20px;
        }

        .text-primary {
            color: #FF5733;
        }
        @media (max-width: 768px) {
            .user-dropdown {
                position: relative;
                display: inline-block;
                margin-left: 0px;
            }

            .user-dropdown .dropdown-menu {
                position: absolute;
                top: 100%;
                left: 0;
               
            }
           
        }
        
        
        
        
.custom-table th, .custom-table td {
  border: 3px solid #ccc;
  padding: 10px;
  
  text-align: center;
}

.custom-table th {
  background-color: #f2f2f2;
}

.custom-table .delete-button {
  background-color: #ff6666;
  color: white;
  border: none;
  padding: 8px 12px;
  cursor: pointer;
  border-radius: 5px;
}

.custom-table .delete-button:hover {
  background-color: #ff4d4d;
}
        
    </style>

</head>

<body>

       <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container1-fluid">
            <ul class="nav navbar-nav">
                <li><span class="logo-mobile hide-in-mobile"><img src="images/logo.jpeg" height="55px" width="65px"></span>
                </li>
                <li><a href="index.html">XperienceAuto</a></li>
            </ul>
            <button type="button" class="navbar-toggle right" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="customerHome"><i class="fas fa-home"></i> HOME</a></li>
                    <li><a href="customerSpare"><i class="fas fa-shopping-cart"></i>&nbspPRODUCTS</a></li>
                    <li><a href="customerServiceReq"><i class="fas fa-cogs"></i>&nbspSERVICES</a></li>
                    <li><a href="viewmyrequests"><i class="fa fa-info-circle" aria-hidden="true"></i>&nbspMY REQUESTS</a></li>
                    <li class="user-dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fas fa-user-circle"></i>&nbsp&nbsp${cname}
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="customerProfile">Profile</a></li>
                            <li><a href="cuslogout">Logout</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
   <br>
   <br>
   <br>
   <br>
   <br>
   <br>
   <br>
   <br>
<div class="centered">
   
        <div class="login-container">
         <h3><font color="green">${message}</font></h3><br>
              <center>
            <table class="custom-table">
                <thead>
                  <tr>
                    <th>MemberID</th>
                    <th>Requested Service name</th>
                    <th>Requested Service Type</th>
                    <th>date</th>
                    <th>Time</th>
                    <th>description</th>
                    <th>Status </th>
                    <th>View Status</th>
                  
                  </tr>
                </thead>
                <tbody>
                <c:forEach items="${reqdata}" var="req">
                 
                  <tr>
                    <td><b>${req.id}</b></td>
                    <td>${req.serviceName}</td>
                    <td>${req.serviceType}</td>
                    <td>${req.date}</td>
                    <td>${req.time}</td>
                    <td>${req.description}</td>
                    <td>${req.status}</td>
                   
                    <c:if test="${req.status==true}">
					<td bgcolor="#58F487" style="font-size: 17px"><b>Accepted</b></td>
					</c:if>
					<c:if test="${req.status==false}">
					<td bgcolor="#FE5F61" style="font-size: 17px"><b>Declined</b></td>
					</c:if>
                    
                  </td>
                  </tr>
                  </c:forEach>
                </tbody>
              </table>
      </center>
    </div></div>
   
</body>

</html>