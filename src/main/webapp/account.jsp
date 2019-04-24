<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>Task List</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Pooled Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
    <!-- Custom CSS -->
    <link href="css/style.css" rel='stylesheet' type='text/css' />
    <link href="css/account.css" rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="css/morris.css" type="text/css"/>
    <!-- Graph CSS -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <!-- jQuery -->
    <script src="js/jquery-2.1.4.min.js"></script>
    <!-- //jQuery -->
    <link href='http://fonts.googleapis.com/css?family=Roboto:700,500,300,100italic,100,400' rel='stylesheet' type='text/css'/>
    <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!-- lined-icons -->
    <link rel="stylesheet" href="css/icon-font.min.css" type='text/css' />
    <!-- //lined-icons -->
    <link rel="stylesheet" type="text/css" href="css/table-style.css" />
    <link rel="stylesheet" type="text/css" href="css/basictable.css" />
    <script type="text/javascript" src="js/jquery.basictable.min.js"></script>
    <script type="text/javascript" src="js/account.js"></script>
</head>
<body>
<div class="page-container">
    <!--/content-inner-->
    <div class="left-content">
        <div class="mother-grid-inner">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="task">Home</a><i class="fa fa-angle-right"></i>Account</li>
            </ol>
            <!--grid-->
            <div class="grid-form">
                <div class="grid-form1">
                    <h2 id="forms-example" class="">Account</h2>
                    <div class="error"></div>
                    <form id="userForm" method="post" action="/account">
                        <div class="form-group">
                            <label for="name">Name</label>
                            <input type="text" id="name" required="required" name="name" class="form-control"
                                   value="${user.name}" />
                        </div>
                        <div class="form-group">
                            <label for="phone">Phone</label>
                            <input type="text" id="phone" required="required" name="phone" class="form-control"
                                   value="${user.phone}" />
                        </div>
                        <div class="form-group">
                            <label for="address">Address</label>
                            <input type="text" id="address" required="required" name="address" class="form-control"
                                   value="${user.address}" />
                        </div>
                        <div class="row">
                            <div class="col-sm-8 ">
                                <button class="btn-primary btn" id="saveAccount">Save</button>
                            </div>
                        </div>
                    </form>

                </div>
                <!----->
                <div class="grid-form1">
                    <h3 id="forms-horizontal">Credentials</h3>
                    <div class="errorCredentials"></div>
                    <form id="credentialForm" method="post" action="/credential">
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="email" id="email" required="required" name="email" class="form-control"
                                   value="${user.email}" />
                        </div>
                        <div class="form-group">
                            <label for="psw">Password</label>
                            <input type="password" id="psw" required="required" name="psw" class="form-control"
                                   placeholder="new password"/>
                        </div>
                        <div class="form-group">
                            <label for="psw2">Repeat Password</label>
                            <input type="password" id="psw2" required="required" name="psw2" class="form-control"
                             placeholder="repeat new password"/>
                        </div>
                        <div class="row">
                            <div class="col-sm-8 ">
                                <button class="btn-primary btn" id="saveCredential">Save</button>
                            </div>
                        </div>
                    </form>
                </div>
                <!---->
            </div>
            <!--//grid-->

            <!-- script-for sticky-nav -->
            <script>
                $(document).ready(function() {
                    var navoffeset=$(".header-main").offset().top;
                    $(window).scroll(function(){
                        var scrollpos=$(window).scrollTop();
                        if(scrollpos >=navoffeset){
                            $(".header-main").addClass("fixed");
                        }else{
                            $(".header-main").removeClass("fixed");
                        }
                    });

                });
            </script>
            <!-- /script-for sticky-nav -->
            <!--inner block start here-->
            <div class="inner-block">

            </div>
            <!--inner block end here-->
            <!--copy rights start here-->
            <div class="copyrights">

            </div>
            <!--COPY rights end here-->
        </div>
    </div>
    <!--//content-inner-->
    <!--/sidebar-menu-->
    <c:import url="sidemenu.jsp" />
<!--js -->
<script src="js/jquery.nicescroll.js"></script>
<script src="js/scripts.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>
<!-- /Bootstrap Core JavaScript -->
<script>
    $(document).ready(function() {
        tasksController.init($('#taskPage'));
    });
</script>

</body>
</html>