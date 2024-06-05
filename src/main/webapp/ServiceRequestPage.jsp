<!DOCTYPE html>
<html>

<head>

    <title>Add service</title>
    <meta charset="utf-8">
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


</head>
<style>
    body {
        margin: 0;
        padding: 0;
        overflow-x: hidden;
        font-family: 'Poppins', sans-serif;
        background-color: aliceblue;
    }

    .navbar {
        font-family: 'Poppins', sans-serif;
        background-color: #2B2E4A;
        border-color: #2B2E4A;
    }

    .navbar-nav {
        padding-top: 13.5px;
        padding-bottom: 13.5px;
        font-size: 18px;
    }

    .container-fluid1 {
        background-color: #2B2E4A;
        color: aliceblue;
    }

    nav .navbar-nav li a {
        color: rgb(239, 118, 6) !important;
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

        .navbar-brand .logo-mobile {
            display: none;
        }

        .navbar-collapse {
            max-height: calc(100vh - 55px);
            overflow-y: auto;
        }

        .navbar-brand {
            display: flex;
            align-items: center;
            text-align: center;
            padding: 10px;
        }

        .navbar-toggle {
            float: left;
            margin-left: 15px;
            margin-right: 0;
        }

        .navbar-nav {
            padding-top: 0;
            padding-bottom: 0;
        }

        .navbar-nav li a {
            padding: 10px 20px;
            color: #fff;
        }

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

    .navbar-brand img.desktop-show {
        height: 40px;
        width: auto;
        margin-right: 5px;
    }

    .navbar-brand .app-name {
        font-size: 20px;
        color: white;
    }

    .container {
        margin-top: 80px;
        background-color: aliceblue;
        width: 100%;
        font-family: 'Poppins', sans-serif;
        /* Add this line to remove padding */
    }

    .container-fluid1 {
        background-color: #2B2E4A;
        color: aliceblue;
    }

    nav .navbar-nav li a {
        color: rgb(239, 118, 6) !important;
    }

    /* Reset default margin and padding */
    .card {
        margin: 100px;
        padding: 20px;
        background-color: #fff;
        border-radius: 10px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
        margin-bottom: 36px;
    }

    .card-header {
        background-color: #2B2E4A;
        color: white;
        padding: 10px;
        border-radius: 5px 5px 0 0;
    }

    .form-group {
        margin-bottom: 20px;
    }

    label {
        font-weight: bold;
    }

    .btn-primary {
        background-color: #2B2E4A;
        border-color: #2B2E4A;
    }

    .btn-primary:hover {
        background-color: #FF5733;
        border-color: #FF5733;
    }

    /* Adjust image and form positioning */
    .image-container {
        position: relative;
        /* Change to relative positioning */
        width: 100%;
        /* Take the full width of the form container */
        max-width: 350px;
        /* Limit the width on larger screens */
        margin: auto;
        /* Center the image horizontally */
    }

    .image-container {
        position: relative;
        width: 100%;

        max-width: 450px;
        margin: auto;
        bottom: -100px;
        /* Move the image down by adjusting the bottom value */
        right: 90px;
        /* Move the image to the right by adjusting the right value */
    }

    .image {
        max-width: 100%;
        max-height: 100%;
        border-radius: 5px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
    }

    /* Additional styles for larger screens */
    @media (min-width: 768px) {
        .image-container {
            width: 40%;
            float: right;
            margin-right: 20px;
        }

        .image {
            max-width: 100%;
            max-height: 100%;
        }
    }
    .blink {
    animation: blink 1s linear infinite;
  }

  @keyframes blink {
    0% {
      opacity: 0;
    }
    50% {
      opacity: 1;
    }
    100% {
      opacity: 0;
    }
  }

    @media (max-width: 768px) {
        .image-container {
            display: none;
            /* Hide the entire image container */
        }
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

    <div class="card">
     
        <div class="card-header">
            <h2 style="text-align: center;">Raise a Service Request</h2>
        </div>
        <span class="blink">
		<h5 align="center" style="color:green">${message}</h5>
		</span>
        <div class="card-body">
            <div class="row">
                <!-- Form container for larger screens -->
                <div class="col-md-6 form-container">
                    <form action="servicesRaiseRequest" method="post">
                        <div class="form-group">
                            <!-- Increase input field size in mobile view -->
                            <label for="serviceName"> Name</label>
                            <input type="text" name="servicename" placeholder="enter service name" id="serviceName"  class="form-control" required />
                        </div>
                        
                        
                     
                        <div class="form-group">
                            <!-- Increase select field size in mobile view -->
                            <label for="serviceType">Service Type</label>
                            <select id="serviceType" name="serviceType"class="form-control" required>
                                <option value="" disabled selected>Select Service Type</option>
                                <option value="oil_change">Oil Change</option>
                                <option value="tire_rotation">Tire Rotation</option>
                                <option value="brake_service">Brake Service</option>
                                <!-- Add more service types as needed -->
                            </select>
                        </div>
                        <div class="form-group">
                            <!-- Increase input field size in mobile view -->
                            <label for="date">Date</label>
                            <input type="date" name="date" id="date" class="form-control" required />
                        </div>

                        <div class="form-group">
                            <!-- Increase input field size in mobile view -->
                            <label for="time">Time</label>
                            <input type="time" name="time" id="time" class="form-control" required />
                        </div>
                        <div class="form-group">
                            <!-- Increase textarea size in mobile view -->
                            <label for="description">Description</label>
                            <textarea id="description" name="description"  placeholder="enter Your Discription" class="form-control" rows="4" required></textarea>
                        </div>

                        <button type="submit" class="btn btn-primary">Raise Request</button>
                    </form>
                </div>
                   <!-- Image container for smaller screens (mobile) -->
                <div class="col-md-6 image-container">
                    <img class="image" src="/images/req.jpg">
                </div>
            </div>
        </div>
    </div>

</body>

</html>