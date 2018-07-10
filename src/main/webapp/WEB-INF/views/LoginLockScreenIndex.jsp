<%-- 
    Document   : LoginLockScreen
    Created on : Jul 11, 2016, 12:04:02 PM
    Author     : ungdb
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" data-ng-app="appLI">
    <head>
        <!-- Google fonts -->
        <link href="http://fonts.googleapis.com/css?family=Lato:300,400,400italic,600,700|Raleway:300,400,500,600,700|Crete+Round:400italic" rel="stylesheet" type="text/css" />
        <!-- Bootstrap -->
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
        <!--<link rel="stylesheet" href="bower_components/v-button/dist/v-button.min.css">-->
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
        <!-- jQuery -->
        <script src="bower_components/jquery/dist/jquery.min.js"></script>
        <script src="bower_components/angular/angular.min.js"></script>
        <script src="static/js/controller/LoginLockScreenController_2.js" type="text/javascript"></script>
        <script src="static/js/service/LoginLockScreenService.js" type="text/javascript"></script>
        <script src="static/js/service/MyProfile_Service.js"></script>
    </head>
    <body ng-controller="LoginLockCtrl2">
        <!-- start: LOGIN -->
        <div class="lock-screen">
            <!-- start: LOGIN BOX -->
            <div class="box-ls">
                <img alt="" src="${image}" style="width: 150px; height: 150px" class="img-rounded" />
                <div class="user-info">
                    <h4>${fullName}</h4>
                    <span>${email}</span>
                    <form class="form-login" name="frmLogin" novalidate ng-submit="form.submit(frmLogin)">
                        <div class="input-group" ng-class="{
                        'has-error':frmLogin.txtPassword.$dirty && frmLogin.txtPassword.$invalid,
                                'has-success'
                        :frmLogin.txtPassword.$valid}">
                            <input type="password" placeholder="Password to unlock" class="form-control" name="txtPassword" ng-model="txtPassword" class="form-control" required>                            
                            <span class="input-group-btn">
                                <button class="btn btn-red" type="submit"  ng-click="LoginLock()">
                                    <i class="fa fa-chevron-right"></i>
                                </button>
                            </span>                            
                        </div>
                        <span class="error text-small text-danger" ng-if="frmLogin.txtPassword.$dirty &&
                                                frmLogin.txtPassword.$invalid">Vui lòng nhập mật khẩu.</span>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>