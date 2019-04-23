<%--
  Created by IntelliJ IDEA.
  User: solam
  Date: 4/23/2019
  Time: 11:25 AM
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>
<html>
<head>
    <title>User Profile</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery-2.1.4.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>

<!------ Include the above in your HEAD tag ---------->

<div class="container">
    <div class="row">



        <div class="col-md-7 ">

            <div class="panel panel-default">
                <div class="panel-heading">  <h4 >User Profile</h4></div>
                <div class="panel-body">

                    <div class="box box-info">

                        <div class="box-body">
                            <div class="col-sm-6">
                                <div id="map" style="width: 350px; height: 350px;"  align="center">



                                <!-- /input-group -->
                            </div>
                            <div class="col-sm-6">
                                <h4 style="color:#00b1b1;"></h4></span>
                                <span><p aria-></p></span>
                            </div>
                            <div class="clearfix"></div>
                            <hr style="margin:5px 0 5px 0;">


                            <div class="col-sm-5 col-xs-6 tital " >First Name:</div><div class="col-sm-7 col-xs-6 " >${userValue.name}</div>
                            <div class="clearfix"></div>
                            <div class="bot-border"></div>

                            <div class="col-sm-5 col-xs-6 tital " >Email :</div><div class="col-sm-7" > ${userValue.email}</div>
                            <div class="clearfix"></div>
                            <div class="bot-border"></div>

                            <div class="col-sm-5 col-xs-6 tital " >Address:</div><div class="col-sm-7"> ${userValue.address}</div>
                            <div class="clearfix"></div>
                            <div class="bot-border"></div>

                            <div class="col-sm-5 col-xs-6 tital " >Post</div><div class="col-sm-7">${userValue.role}</div>




                            <!-- /.box-body -->
                        </div>
                        <!-- /.box -->

                    </div>


                </div>
            </div>
        </div>
        <script>
            $(function() {
                $('#profile-image1').on('click', function() {
                    $('#profile-image-upload').click();
                });



            })

            function initMyMap() {
                var lat;
                var lng;
                lat = ${userValue.latitude};
                lng = ${userValue.longitude};
                var coordinates = {lat, lng};

                const map = new google.maps.Map(document.getElementById('map'), {
                    center: coordinates,
                    zoom: 10
                });
                var marker = new google.maps.Marker({
                    position: coordinates,
                    map: map
                });
            }
        </script>

            <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBEJ0hjdksUuz-1MubA9Qei5pYLdnBcG0k&callback=initMyMap" async defer></script>

    </div>
</div>

</div>
</body>
</html>
