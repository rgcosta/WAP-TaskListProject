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
    <link href="<c:url value="css/style.css"/>" rel='stylesheet' type='text/css' />
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
</head>
<body>
<div class="page-container">
    <!--/content-inner-->
    <div class="left-content">
        <div class="mother-grid-inner">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.jsp">Home</a><i class="fa fa-angle-right"></i>Task</li>
            </ol>
            <!--grid-->
            <div class="grid-form">
                <div class="grid-form1" id="newTask">
                    <h2 id="forms-example" class="">New Task</h2>
                    <div class="error"></div>
                    <form action="/project/task" method="post">
                        <div class="form-group">
                            <label>Title:</label>
                            <input type="text" name="title" value="${task.title}" class="form-control"/>
                        </div>
                        <div class="form-group">
                            <label>Due Date:</label>
                            <input type="date" name="dueDate" value="${task.dueDate}" class="form-control"/>
                        </div>
                        <div class="form-group">
                            <label>Priority:</label>
                            <label class="radio-inline">
                                <label><input type="radio" name="priority" value="LOW" <c:if test="${task.priority=='LOW'}">checked</c:if>>Low</label>
                            </label>
                            <label class="radio-inline">
                                <label><input type="radio" name="priority" value="NORMAL" <c:if test="${task.priority=='NORMAL'}">checked</c:if>>Normal</label>
                            </label>
                            <label class="radio-inline">
                                <label><input type="radio" name="priority" value="HIGH" <c:if test="${task.priority=='HIGH'}">checked</c:if>>High</label>
                            </label>
                        </div>
                        <div class="form-group">
                            <label>Category:</label>
                            <label class="radio-inline">
                                <label><input type="radio" name="category" value="PERSONAL" <c:if test="${task.category=='PERSONAL'}">checked</c:if>>Personal</label>
                            </label>
                            <label class="radio-inline">
                                <label><input type="radio" name="category" value="TEAM" <c:if test="${task.category=='TEAM'}">checked</c:if>>Team</label>
                            </label>
                        </div>
                        <div class="form-group">
                            <label>Developer:</label>
                            <select name="userId">
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Team:</label>
                            <select name="teamId">
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Finish Date:</label>
                            <input type="date" name="finishDate" value="${task.finishDate}" class="form-control"/>
                        </div>
                        <div class="form-group">
                            <label>Rate:</label>
                            <label class="radio-inline">
                                <label><input type="radio" name="rate" value="EXCELLENT" <c:if test="${task.rate=='EXCELLENT'}">checked</c:if>>Excellent</label>
                            </label>
                            <label class="radio-inline">
                                <label><input type="radio" name="rate" value="GOOD" <c:if test="${task.rate=='GOOD'}">checked</c:if>>Good</label>
                            </label>
                            <label class="radio-inline">
                                <label><input type="radio" name="rate" value="BAD" <c:if test="${task.rate=='BAD'}">checked</c:if>>Bad</label>
                            </label>
                        </div>

                        <div class="form-group">
                            <input type="hidden" value="${action}" name="action">
                            <input type="hidden" value="${task.id}" name="id">
                            <button type="submit" class="btn btn-primary">Save</button>
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
    <div class="sidebar-menu">
        <header class="logo1">
            <a href="#" class="sidebar-icon"> <span class="fa fa-bars"></span> </a>
        </header>
        <div style="border-top:1px ridge rgba(255, 255, 255, 0.15)"></div>
        <div class="menu">
            <ul id="menu" >
                <li><a href="index.jsp"><i class="fa fa-tachometer"></i> <span>Dashboard</span><div class="clearfix"></div></a></li>


                <li id="menu-academico" ><a href="inbox.html"><i class="fa fa-envelope nav_icon"></i><span>Inbox</span><div class="clearfix"></div></a></li>
                <li><a href="gallery.html"><i class="fa fa-picture-o" aria-hidden="true"></i><span>Gallery</span><div class="clearfix"></div></a></li>
                <li id="menu-academico" ><a href="charts.html"><i class="fa fa-bar-chart"></i><span>Charts</span><div class="clearfix"></div></a></li>
                <li id="menu-academico" ><a href="#"><i class="fa fa-list-ul" aria-hidden="true"></i><span> Short Codes</span> <span class="fa fa-angle-right" style="float: right"></span><div class="clearfix"></div></a>
                    <ul id="menu-academico-sub" >
                        <li id="menu-academico-avaliacoes" ><a href="icons.html">Icons</a></li>
                        <li id="menu-academico-avaliacoes" ><a href="typography.html">Typography</a></li>
                        <li id="menu-academico-avaliacoes" ><a href="faq.html">Faq</a></li>
                    </ul>
                </li>
                <li id="menu-academico" ><a href="errorpage.html"><i class="fa fa-exclamation-triangle" aria-hidden="true"></i><span>Error Page</span><div class="clearfix"></div></a></li>
                <li id="menu-academico" ><a href="#"><i class="fa fa-cogs" aria-hidden="true"></i><span> UI Components</span> <span class="fa fa-angle-right" style="float: right"></span><div class="clearfix"></div></a>
                    <ul id="menu-academico-sub" >
                        <li id="menu-academico-avaliacoes" ><a href="button.html">Buttons</a></li>
                        <li id="menu-academico-avaliacoes" ><a href="grid.html">Grids</a></li>
                    </ul>
                </li>
                <li><a href="tabels.html"><i class="fa fa-table"></i>  <span>Tables</span><div class="clearfix"></div></a></li>
                <li><a href="maps.html"><i class="fa fa-map-marker" aria-hidden="true"></i>  <span>Maps</span><div class="clearfix"></div></a></li>
                <li id="menu-academico" ><a href="#"><i class="fa fa-file-text-o"></i>  <span>Pages</span> <span class="fa fa-angle-right" style="float: right"></span><div class="clearfix"></div></a>
                    <ul id="menu-academico-sub" >
                        <li id="menu-academico-boletim" ><a href="calendar.html">Calendar</a></li>
                        <li id="menu-academico-avaliacoes" ><a href="signin.html">Sign In</a></li>
                        <li id="menu-academico-avaliacoes" ><a href="signup.html">Sign Up</a></li>


                    </ul>
                </li>
                <li><a href="#"><i class="fa fa-check-square-o nav_icon"></i><span>Forms</span> <span class="fa fa-angle-right" style="float: right"></span><div class="clearfix"></div></a>
                    <ul>
                        <li><a href="input.html"> Input</a></li>
                        <li><a href="validation.html">Validation</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <div class="clearfix"></div>
</div>
<script>
    var toggle = true;

    $(".sidebar-icon").click(function() {
        if (toggle)
        {
            $(".page-container").addClass("sidebar-collapsed").removeClass("sidebar-collapsed-back");
            $("#menu span").css({"position":"absolute"});
        }
        else
        {
            $(".page-container").removeClass("sidebar-collapsed").addClass("sidebar-collapsed-back");
            setTimeout(function() {
                $("#menu span").css({"position":"relative"});
            }, 400);
        }

        toggle = !toggle;
    });
</script>
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