	<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html>

<head>
  <meta charset='utf-8'>
      <link rel="icon" type="image/peg" href="images/logo.jpeg">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
  <meta http-equiv='X-UA-Compatible' content='IE=edge'>
  <script src='main.js'></script>
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

    #product-list {
      display: flex;
      flex-wrap: wrap;
      /* Allow items to wrap to the next row */
      justify-content: space-between;
      /* Add space between items */
      padding: 20px;
    }

    .product {
      background-color: #fff;
      border: 1px solid #ddd;
      border-radius: 5px;
      padding: 20px;
      width: calc(25% - 20px);
      /* Set a maximum of 4 items in a row */
      margin: 10px;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }


    button {
      background-color: lightgreen;
      color: #fff;
      border: none;
      padding: 5px 10px;
      cursor: pointer;
    }

    button:hover {
      background-color: #69FC95;
    }

    #shopping-cart {
      background-color: #fff;
      border: 1px solid #ddd;
      border-radius: 5px;
      padding: 20px;
      width: 300px;
      margin: 10px;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }

    @media (max-width: 768px) {
      .product {
        width: calc(50% - 20px);
        /* Set a maximum of 2 items in a row for smaller screens */
      }
    }

    h1 {
      text-align: center;
      margin-top: 90px;
      /* Add some top margin to separate from the navbar */
      font-size: 40px;
      color: #2B2E4A;
      /* Change the color to your preferred style */
    }

    .ag-format-container {
      width: 1142px;
      margin: 0 auto;
    }



    .ag-courses_box {
      display: -webkit-box;
      display: -ms-flexbox;
      display: flex;
      -webkit-box-align: start;
      -ms-flex-align: start;
      align-items: flex-start;
      -ms-flex-wrap: wrap;
      flex-wrap: wrap;

      padding: 50px 0;
    }

    .ag-courses_item {
      -ms-flex-preferred-size: calc(33.33333% - 30px);
      flex-basis: calc(33.33333% - 30px);

      margin: 0 15px 30px;

      overflow: hidden;

      border-radius: 28px;
    }

    .ag-courses-item_link {
      display: block;
      padding: 30px 20px;
      background-color: #2971a1;

      overflow: hidden;

      position: relative;
    }

    .ag-courses-item_link2 {
      display: block;
      padding: 30px 20px;
      background-color: #FF5733;
      overflow: hidden;
      position: relative;
    }

    .ag-courses-item_link:hover,
    .ag-courses-item_link2:hover,
    .ag-courses-item_link:hover .ag-courses-item_date {
      text-decoration: none;
      color: #FFF;
    }

    .ag-courses-item_link:hover .ag-courses-item_bg {
      -webkit-transform: scale(10);
      -ms-transform: scale(10);
      transform: scale(10);
    }

    .ag-courses-item_link2:hover .ag-courses-item_bg {
      -webkit-transform: scale(10);
      -ms-transform: scale(10);
      transform: scale(10);
    }

    .ag-courses-item_title {
      min-height: 87px;
      margin: 0 0 25px;

      overflow: hidden;

      font-weight: bold;
      font-size: 50px;
      color: #FFF;

      z-index: 2;
      position: relative;
    }

    .ag-courses-item_date-box {
      font-size: 30px;
      color: #FFF;

      z-index: 2;
      position: relative;
    }

    .ag-courses-item_date {
      font-weight: bold;
      color: #f9b234;

      -webkit-transition: color .5s ease;
      -o-transition: color .5s ease;
      transition: color .5s ease
    }

    .ag-courses-item_bg {
      height: 128px;
      width: 128px;
      background-color: #FF5733;

      z-index: 1;
      position: absolute;
      top: -75px;
      right: -75px;

      border-radius: 50%;

      -webkit-transition: all .5s ease;
      -o-transition: all .5s ease;
      transition: all .5s ease;
    }

    .ag-courses_item:nth-child(2n) .ag-courses-item_bg {
      background-color: #2971a1;
    }

    .ag-courses_item:nth-child(3n) .ag-courses-item_bg {
      background-color: #FF5733;
    }

    .ag-courses_item:nth-child(4n) .ag-courses-item_bg {
      background-color: #952aff;
    }

    .ag-courses_item:nth-child(5n) .ag-courses-item_bg {
      background-color: #cd3e94;
    }

    .ag-courses_item:nth-child(6n) .ag-courses-item_bg {
      background-color: #4c49ea;
    }




    @media only screen and (max-width: 979px) {
      .ag-courses_item {
        -ms-flex-preferred-size: calc(50% - 30px);
        flex-basis: calc(50% - 30px);
      }

      .ag-courses-item_title {
        font-size: 24px;
      }
    }

    @media only screen and (max-width: 767px) {
      .ag-format-container {
        width: 96%;
      }

    }

    @media only screen and (max-width: 639px) {
      .ag-courses_item {
        -ms-flex-preferred-size: 100%;
        flex-basis: 100%;
      }

      .ag-courses-item_title {
        min-height: 72px;
        line-height: 1;

        font-size: 24px;
      }

      .ag-courses-item_link {
        padding: 22px 40px;
      }

      .ag-courses-item_date-box {
        font-size: 16px;
      }
    }
    /* Footer Styles */
    .footer {
      bottom:100%;
            background-color: #2B2E4A;
            color: white;
            text-align: center;
            padding: 20px;
        }

        .text-primary {
            color: #FF5733;
        }
        
        .product {
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 5px;
            padding: 20px;
            margin: 10px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            text-align: center;
            overflow: hidden;
            font-size: medium;
            box-shadow: 0 4px 20px 0 rgba(0, 0, 0, 0.2);
            margin: 8px;
            height: 350px;
            border-radius: 15px;
            width:300px;
            background-color: transparent;
              backdrop-filter: blur(10px);
            
        }

       
    .checked {
    color: gold;
}
    

      
     

        /* Adjust the product listing layout */
        #product-list {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            padding: 20px;
            margin-top: 100px;
            /* Adjust the margin to separate from the navbar */
        }
  .button {
  display: inline-block;
  padding: 10px 20px;
  font-size: 16px;
  text-align: center;
  text-decoration: none;
  cursor: pointer;
  border: none;
  border-radius: 5px;
  background-color: lightgreen;
}
  @keyframes fallIn {
            0% {
                transform: translateY(-200px);
            }
            100% {
                transform: translateY(0);
            }
        }
        .product:hover {
            transform: scale(1.1); /* Zoom out the card */
            background-color: transparent; /* Change the background color */
        }

        .login-container {
      height: 730px;
      width: 1390px;
      margin: 100px auto;
      margin-top: -10px;
      padding: 20px;
      background-color: rgba(255, 255, 255, 0.3);
      border-radius: 10px;
      backdrop-filter: blur(10px);
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
    }

    /* Login form */
    .login-form input[type="email"],
    .login-form input[type="password"] {
      width: 100%;
      padding: 10px;
      margin-bottom: 15px;
      border: none;
      border-radius: 5px;
      background-color: rgba(255, 255, 255, 0.8);
      outline: none;
    }
    
    .login-form button[type="submit"] {
      border: none;
    outline: 0;
    display: inline-block;
    padding: 12px;
    color: white;
    background-color:rgb(87, 87, 113);
    text-align: center;
    cursor: pointer;
    width:50%;
   align-items: center;
    border-radius: 40px;
    transition: background-color 0.3s ease, transform 0.3s ease;
    }
    
    .login-form button[type="submit"]:hover {
      background-color:rgb(29, 101, 125);/* Change the background color on hover */
    transform: scale(1.05); /* Slightly scale up the button on hover */    }
    .custom-table {
  width: 100%;
  border-collapse: collapse;
  margin-top: 20px;
}

.custom-table th, .custom-table td {
  border: 3px solid #ccc;
  padding: 10px;
  text-align: center;
}

.custom-table th {
  font-weight: bold; /* Specify font weight as bold */
  background-color: #ACF7E7;
  font-size: 17px;
  font-family: 'Arial', sans-serif;
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
        
      .custom-table .accept-button {
  color: white;
  border: none;
  padding: 8px 12px;
  cursor: pointer;
  border-radius: 5px;
}

.custom-table .accept-button:hover {
  background-color: #F5AD46;
}  
        
        h1 {
  text-align: center; /* Center align the text */
  font-size: 36px; /* Adjust the font size as needed */
  color: #2B2E4A; /* Set the text color */
  font-weight: bold; /* Make the text bold */
  margin-top: 20px; /* Add some top margin for spacing */
  text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.2); /* Add a subtle text shadow */
  letter-spacing: 2px; /* Adjust letter spacing for style */
}

/* If you want to change the text color on hover */
h1:hover {
  color: #FF5733; /* Change the text color on hover */
}
        
  </style>
  </head>
  <body>
   <nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container1-fluid">
      <ul class="nav navbar-nav">
        <li><span class="logo-mobile hide-in-mobile"><img src="/images/logo.jpeg" height="55px"
              width="65px"></span>
        </li>
        <li><a href="adminhome">XperienceAuto</a></li>
      </ul>
      <button type="button" class="navbar-toggle right" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <div class="collapse navbar-collapse" id="myNavbar">
        <ul class="nav navbar-nav navbar-right">
          <li><a href="adminhome"><i class="fas fa-home"></i> HOME</a></li>
          <li><a href="viewallrequests"><i class="fa fa-cloud"></i>request data</a></li>
         <li class="user-dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-database"></i>&nbspVIEW
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="adminViewAllCus">Customer Data</a></li>
                            <li><a href="#">Seller Data</a></li>
                            <li><a href="adminViewAllPro">Product Data</a></li>
                        </ul>
                       
                    </li>
          <li class="user-dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fas fa-user-circle"></i>&nbsp&nbsp${aname}
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="customerlogin.html">Logout</a></li>
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
   
   
   
   <div class="centered">
               <h1><b>Requests Raised by Customers</b></h1>
               <br>
        <div class="login-container">
         <h3><font color="green">${message}</font></h3><br>

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
                    <th>action</th>
                  </tr>
                </thead>
                <tbody>
                <c:forEach items="${reqdata}" var="req">
                 
                  <tr>
                    <td>${req.id}</td>
                    <td>${req.serviceName}</td>
                    <td>${req.serviceType}</td>
                    <td>${req.date}</td>
                    <td>${req.time}</td>
                    <td>${req.description}</td>
                   <td>${req.status}</td>
                    <td><a href='<c:url value="setstatus?id=${req.id}&service_status=true&service_date=${req.date}&service_name=${req.serviceName}"></c:url>'><button class="accept-button" style="font-weight: bold; color: black; border-radius: 5px;" >Accept</button></a>
                    <a href='<c:url value="setstatus?id=${req.id}&service_status=false&service_date=${req.date}&service_name=${req.serviceName}"></c:url>'><button class="delete-button" >Decline</button></a>
                  </td>
                  </tr>
                  </c:forEach>
                </tbody>
              </table>
      
    </div></div>
   
   
  <!-- <div class="footer">
    <p>&copy; 2023 XperienceAuto. All Rights Reserved.</p>
</div> -->

</body>

</html>