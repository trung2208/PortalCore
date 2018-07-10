<%-- 
    Document   : error404
    Created on : Jul 26, 2016, 9:07:28 AM
    Author     : ungdb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">
<!-- Themify Icons -->
<link rel="stylesheet" href="bower_components/themify-icons/themify-icons.css">
<!-- Flag Icons -->
<link rel="stylesheet" href="bower_components/flag-icon-css/css/flag-icon.min.css">
<!-- Loading Bar -->
<link rel="stylesheet" href="bower_components/angular-loading-bar/build/loading-bar.min.css">
<!-- Animate Css -->
<link rel="stylesheet" href="bower_components/animate.css/animate.min.css">
<!-- Perfect Scrollbar Css -->
<link rel="stylesheet" href="bower_components/perfect-scrollbar/css/perfect-scrollbar.min.css">
<!-- Date Range Picker Css -->
<link rel="stylesheet" href="bower_components/bootstrap-daterangepicker/daterangepicker-bs3.css">
<!-- Angular ui-switch Css -->
<link rel="stylesheet" href="bower_components/angular-ui-switch/angular-ui-switch.min.css">
<!-- Angular Toaster Css -->
<link rel="stylesheet" href="bower_components/AngularJS-Toaster/toaster.css">
<!-- Angular Ng-Aside Css -->
<link rel="stylesheet" href="bower_components/angular-aside/dist/css/angular-aside.min.css">
<!-- Angular Notification Icons Css -->
<link rel="stylesheet" href="bower_components/angular-notification-icons/dist/angular-notification-icons.min.css">
<!-- V-Accordion Css -->
<link rel="stylesheet" href="bower_components/v-accordion/dist/v-accordion.min.css">
<!-- V-Button Css -->
<link rel="stylesheet" href="bower_components/v-button/dist/v-button.min.css">
<!-- Sweet Alert Css -->
<link rel="stylesheet" href="bower_components/sweetalert/lib/sweet-alert.css">
<!-- Ladda Buttons Css -->
<link rel="stylesheet" href="bower_components/ladda/dist/ladda-themeless.min.css">
<!-- Angular Awesome Slider Css -->
<link rel="stylesheet" href="bower_components/angular-awesome-slider/dist/css/angular-awesome-slider.min.css">
<!-- Slick Carousel Css -->
<link rel="stylesheet" href="bower_components/slick-carousel/slick/slick.css">
<link rel="stylesheet" href="bower_components/slick-carousel/slick/slick-theme.css">
<!-- Packet CSS -->
<link rel="stylesheet" href="static/css/styles.css">
<link rel="stylesheet" href="static/css/plugins.css">
<link rel="stylesheet" href="static/css/phone.css">

<link href="static/css/bootstrap-datetimepicker-standalone.css" rel="stylesheet" type="text/css"/>
<link href="static/css/bootstrap-datetimepicker.css" rel="stylesheet" type="text/css"/>
<link href="static/css/bootstrap-datetimepicker.min.css" rel="stylesheet" type="text/css"/>

<!DOCTYPE html>
<!-- start: 404 -->
<div class="error-full-page">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 page-error animated shake">
                <div class="error-number text-azure">
                    404
                </div>
                <br/>
                ${errorMessage}
                <div class="error-details col-sm-6 col-sm-offset-3">
                    <h3>Oops! You are stuck at 404</h3>
                    <p>
                        Unfortunately the page you were looking for could not be found.
                        <br>
                        It may be temporarily unavailable, moved or no longer exist.
                        <br>
                        Check the URL you entered for any mistakes and try again.
                        <br>
                        <!--                        <a href="index" class="btn btn-red btn-return">
                                                    Return home
                                                </a>-->
                        <br>
                        Still no luck?
                        <br>
                        Search for whatever is missing, or take a look around the rest of our site.
                    </p>
                    <form action="#">
                        <div class="input-group">
                            <input type="text" placeholder="keyword..." size="16" class="form-control">
                            <span class="input-group-btn">
                                <button class="btn btn-azure">
                                    Search
                                </button>
                            </span>
                        </div>
                    </form>
                    <br><br>
                    <!--server-->
                    <!--<a href="${server}:8080/MPCC_FB">Home Page</a>-->
                    <!--localhost-->
                    <!--<a href="http://localhost:8080/MPCC_FB">Home Page</a>--> 
                </div>
            </div>
        </div>
    </div>
</div>
<!-- end: 404 -->
