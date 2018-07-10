<!--
<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" data-ng-app="appLI">
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
         Google fonts 
        <link href="http://fonts.googleapis.com/css?family=Lato:300,400,400italic,600,700|Raleway:300,400,500,600,700|Crete+Round:400italic" rel="stylesheet" type="text/css" />
         Bootstrap 
        <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
         Font Awesome 
        <link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">
         Themify Icons 
        <link rel="stylesheet" href="bower_components/themify-icons/themify-icons.css">
         Flag Icons 
        <link rel="stylesheet" href="bower_components/flag-icon-css/css/flag-icon.min.css">
         Loading Bar 
        <link rel="stylesheet" href="bower_components/angular-loading-bar/build/loading-bar.min.css">
         Animate Css 
        <link rel="stylesheet" href="bower_components/animate.css/animate.min.css">
         Perfect Scrollbar Css 
        <link rel="stylesheet" href="bower_components/perfect-scrollbar/css/perfect-scrollbar.min.css">
         Date Range Picker Css 
        <link rel="stylesheet" href="bower_components/bootstrap-daterangepicker/daterangepicker-bs3.css">
         Angular ui-switch Css 
        <link rel="stylesheet" href="bower_components/angular-ui-switch/angular-ui-switch.min.css">
         Angular Toaster Css 
        <link rel="stylesheet" href="bower_components/AngularJS-Toaster/toaster.css">
         Angular Ng-Aside Css 
        <link rel="stylesheet" href="bower_components/angular-aside/dist/css/angular-aside.min.css">
         Angular Notification Icons Css 
        <link rel="stylesheet" href="bower_components/angular-notification-icons/dist/angular-notification-icons.min.css">
         V-Accordion Css 
        <link rel="stylesheet" href="bower_components/v-accordion/dist/v-accordion.min.css">
         V-Button Css 
        <link rel="stylesheet" href="bower_components/v-button/dist/v-button.min.css">
         Sweet Alert Css 
        <link rel="stylesheet" href="bower_components/sweetalert/lib/sweet-alert.css">
         Ladda Buttons Css 
        <link rel="stylesheet" href="bower_components/ladda/dist/ladda-themeless.min.css">
         Angular Awesome Slider Css 
        <link rel="stylesheet" href="bower_components/angular-awesome-slider/dist/css/angular-awesome-slider.min.css">
         Slick Carousel Css 
        <link rel="stylesheet" href="bower_components/slick-carousel/slick/slick.css">
        <link rel="stylesheet" href="bower_components/slick-carousel/slick/slick-theme.css">
         Packet CSS 
        <link rel="stylesheet" href="static/css/styles.css">
        <link rel="stylesheet" href="static/css/plugins.css">
        <link rel="stylesheet" href="static/css/phone.css">
        <link rel="shortcut icon" href="static/mptelecom.ico" />
         jQuery 
        <script src="bower_components/jquery/dist/jquery.min.js"></script>
        <script src="bower_components/angular/angular.min.js"></script>
        <script src="static/js/controller/Login_Controller.js" type="text/javascript"></script>
        <script src="static/js/directives/invalidNumber.js" type="text/javascript"></script>
        <link rel="stylesheet" href="static/css/loading-dasboard.css">
        <style>
            @media screen and (min-width: 1200px) {
                .col-lg-offset-5 {
                    margin-left: 41.66666667%;
                    position: fixed;
                    top: 0%;
                }
                .loading-image{
                    position: absolute;
                    top: 40%;
                    left: 49%;
                    z-index: 100;
                }
            }
            @media screen and (min-width: 992px) {
                .loading-image{
                    position: absolute;
                    top: 40%;
                    left: 49%;
                    z-index: 100;
                }
            }
            @media screen and (min-width: 768px) {
                .loading-image{
                    position: absolute;
                    top: 40%;
                    left: 48%;
                    z-index: 100;
                }
            }

            @media screen and (min-width: 480px) {
                .loading-image{
                    position: absolute;
                    top: 40%;
                    left: 48%;
                    z-index: 100;
                }
            }
            .loading-image{
                position: absolute;
                top: 40%;
                left: 48%;
                z-index: 100;
            }


        </style>
    </head>
    <input type="text" id="serverCk" value="${serverCk}"/>
<input type="hidden" id="usernameCk" value="${usernameCk}"/>
<input type="hidden" id="passCK" value="${passCK}"/>
<input type="hidden" id="soNoiBoCk" value="${soNoiBoCk}"/>
<body ng-controller="LoginCtrl">
<script src="static/js/controller/Login_Controller.js" type="text/javascript"></script>
<div ng-controller="LoginCtrl">

    <div id="loadingLogin" style="display: none">
        <img class="loading-image" src="static/images/loading2.gif" style="width: 40px; height: 40px;" alt="Loading..." />
    </div>
     start: LOGIN 
    <div class="main-login col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4 col-lg-2 col-lg-offset-5">
                    <div class="logo text-center">
                        <img src="static/images/logo2.png" alt="{{app.name}}" class="img-responsive" />
                    </div>
        <p class="text-center text-dark text-bold text-extra-large margin-top-15">
            Welcome to MPCC
            <img src="static/images/logo_mpcc5.png" />
        </p>
         start: LOGIN BOX 
        <div class="box-login">
            <form class="form-login" name="frmLogin" novalidate ng-submit="form.submit(frmLogin)">                    
                                    <div class="form-group" ng-class="{
                                        'has-error':frmLogin.txtServer.$dirty && frmLogin.txtServer.$invalid,
                                                'has-success'
                                        :frmLogin.txtServer.$valid}">
                                        Server : <input type="text" class="form-control" name="txtServer" ng-model="txtServer" required/>
                                        <span class="error text-small" ng-if="frmLogin.txtServer.$dirty &&
                                                            frmLogin.txtServer.$invalid">Vui lòng nhập server.</span>
                                    </div>
                <div class="form-group" ng-class="{
                        'has-error':frmLogin.txtUserName.$dirty && frmLogin.txtUserName.$invalid}">
                    <input type="text" class="form-control" name="txtUserName" ng-model="txtUserName" 
                           placeholder="Tên đăng nhập" required/>
                    <span class="error text-small" ng-if="frmLogin.txtUserName.$dirty &&
                                frmLogin.txtUserName.$invalid">Vui lòng nhập tên đăng nhập.</span>
                </div>
                <div class="form-group" ng-class="{
                        'has-error':frmLogin.txtPassword.$dirty && frmLogin.txtPassword.$invalid}">
                    <input type="password" class="form-control" name="txtPassword" ng-model="txtPassword" 
                           placeholder="Mật khẩu" required/>
                    <span class="error text-small" ng-if="frmLogin.txtPassword.$dirty &&
                                frmLogin.txtPassword.$invalid">Vui lòng nhập mật khẩu.</span>                       
                </div>
                <div class="form-group" ng-class="{
                        'has-error':frmLogin.txtSoNoiBo.$dirty && frmLogin.txtSoNoiBo.$invalid}">
                    <input type="text" class="form-control" name="txtSoNoiBo" ng-minlength="3" ng-model="txtSoNoiBo" placeholder="Số nội bộ" valid-number />
                    <span class="error text-small" ng-if="frmLogin.txtSoNoiBo.$error.minlength">Số nội bộ ít nhất 3 số trở lên!</span>
                </div>
                                    <div class="text-center">
                                        <a ui-sref="login.forgot"> I forgot my password </a>
                                    </div>
                <div class="form-actions">
                    <button type="submit" class="btn btn-dark-orange btn-block" ng-click="DangNhap()">Đăng nhập</button>
                    <div class="checkbox clip-check check-primary">
                        <input type="checkbox" id="remember"  ng-model="remember" value="1">
                        <label for="remember">Lưu thông tin </label>
                    </div>
                </div>                   
            </form>
             start: COPYRIGHT 
            <div class="copyright">
                {{app.year}} &copy; {{ app.name}} by {{ app.author}}.
            </div>
             end: COPYRIGHT 
        </div>
         end: LOGIN BOX 
    </div>
     end: LOGIN 
</div>
</body>
</html>-->