<%-- 
    Document   : index
    Created on : May 5, 2016, 6:44:29 PM
    Author     : halv
--%>

<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page session="true"%>--%>
<!DOCTYPE html>
<!--<html lang="en" data-ng-app="app">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta name="description" content="{{app.description}}">
        <meta name="keywords" content="app, responsive, angular, bootstrap, dashboard, admin">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
        <meta name="HandheldFriendly" content="true" />
        <meta name="apple-touch-fullscreen" content="yes" />
        <META id="stopMe" HTTP-EQUIV="refresh" CONTENT="5; URL=/MPCC_FB/logout" />
        <title data-ng-bind="pageTitle()">MPCC - WEB</title>
         Google fonts 
        <link href="https://fonts.googleapis.com/css?family=Lato:300,400,400italic,600,700|Raleway:300,400,500,600,700|Crete+Round:400italic" rel="stylesheet" type="text/css" />
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


         Packet Theme 
        <link rel="stylesheet" data-ng-href="static/css/themes/{{ app.layout.theme}}.css" />
         Favicon 
        <link rel="shortcut icon" href="static/mptelecom.ico" />
         jQuery 
        <script src="bower_components/jquery/dist/jquery.min.js"></script>
         Agent 
        <script src="bower_components/sipml5/SIPml-api.js"></script>


        <link href="static/css/bootstrap-datetimepicker-standalone.css" rel="stylesheet" type="text/css"/>
        <link href="static/css/bootstrap-datetimepicker.css" rel="stylesheet" type="text/css"/>
        <link href="static/css/bootstrap-datetimepicker.min.css" rel="stylesheet" type="text/css"/>

        css datetimepicker add new
        <link rel="stylesheet" type="text/css" href="static/css/datetimepicker-master/jquery.datetimepicker.css"/>
        <link rel="stylesheet" href="static/css/swal-custom.css">

        <script>
                    $('html').click(function (e) {
            console.log(e.target);
//                $('#valueHtml > ul > li > a').each(function (indx) {
//                    if (this == e.target) {
//                        $(this).parent().addClass('open');
//                    }
//                });
//                $('#valueHtml > ul > li > a > span').each(function (indx) {
//                    if (this == e.target) {
//                        $(this).parent().parent().addClass('open');
//                    }
//                });

                    // neu nhu nguoi dung click thi se clear setTimeout di 
                    // va chay timeOut lai tu dau
                    onClickRemoveTimeOut();
            });
                    // set timeout khi nguoi dung k su? dung
                    // phan mem se tu logout ra
                    startTimeOut();
                    var timeOut;
                    function startTimeOut() {
                    timeOut = setTimeout(function () {
                    window.location.href = "/MPCC_FB/logout";
//                            var runLoginMPCRM = $.get("/MPCRM_Web/logOutMPCRM_Web/", function () {
//                            });
//                            (runLoginMPCRM).then(function () {
//                    });
                    }, 3600000);
                    }
            //1,200,000 = 20 phut ; 3,600,000 = 60 phút
            function onClickRemoveTimeOut() {
            clearInterval(timeOut);
                    startTimeOut();
            }
        </script>
    </head>
    <body ng-controller="AppCtrl">
        <div ui-view id="app" class="lyt-3" ng-class="{
                    'app-mobile' : app.isMobile, 'app-navbar-fixed' : app.layout.isNavbarFixed, 'app - sidebar - fixed' : app.layout.isSidebarFixed, 'app-sidebar-closed':app.layout.isSidebarClosed, 'app-footer-fixed':app.layout.isFooterFixed}"></div>

         jQuery 
        <script src="<c:url value='bower_components/jquery/dist/jquery.min.js' />"></script>
         Fastclick 
        <script src="<c:url value='bower_components/fastclick/lib/fastclick.js' />"></script>
         Modernizr 
        <script src="<c:url value='bower_components/components-modernizr/modernizr.js' />"></script>
         Moment 
        <script src="<c:url value='bower_components/moment/min/moment.min.js' />"></script>
         Perfect Scrollbar 
        <script src="<c:url value='bower_components/perfect-scrollbar/js/min/perfect-scrollbar.jquery.min.js' />"></script>
         Date Range Picker 
        <script src="<c:url value='bower_components/bootstrap-daterangepicker/daterangepicker.js' />"></script>
         Sweet Alert 
        <script src="<c:url value='bower_components/sweetalert/lib/sweet-alert.min.js' />"></script>
         Spin 
        <script src="<c:url value='bower_components/spin.js/spin.js' />"></script>
         Ladda Buttons 
        <script src="<c:url value='bower_components/ladda/dist/ladda.min.js' />"></script>
         Slick Carousel 
        <script src="<c:url value='bower_components/slick-carousel/slick/slick.min.js' />"></script>
         Angular 
        <script src="<c:url value='bower_components/angular/angular.min.js' />"></script>
        <script src="<c:url value='bower_components/angular-cookies/angular-cookies.min.js' />"></script>
        <script src="<c:url value='bower_components/angular-animate/angular-animate.min.js' />"></script>
        <script src="<c:url value='bower_components/angular-touch/angular-touch.min.js' />"></script>
        <script src="<c:url value='bower_components/angular-sanitize/angular-sanitize.min.js' />"></script>
        <script src="<c:url value='bower_components/angular-ui-router/release/angular-ui-router.min.js' />"></script>
         Angular storage 
        <script src="<c:url value='bower_components/ngstorage/ngStorage.min.js' />"></script>
         Angular Translate 
        <script src="<c:url value='bower_components/angular-translate/angular-translate.min.js' />"></script>
        <script src="<c:url value='bower_components/angular-translate-loader-url/angular-translate-loader-url.min.js' />"></script>
        <script src="<c:url value='bower_components/angular-translate-loader-static-files/angular-translate-loader-static-files.min.js' />"></script>
        <script src="<c:url value='bower_components/angular-translate-storage-local/angular-translate-storage-local.min.js' />"></script>
        <script src="<c:url value='bower_components/angular-translate-storage-cookie/angular-translate-storage-cookie.min.js' />"></script>
         oclazyload 
        <script src="<c:url value='bower_components/oclazyload/dist/ocLazyLoad.min.js' />"></script>
         breadcrumb 
        <script src="<c:url value='bower_components/angular-breadcrumb/dist/angular-breadcrumb.min.js' />"></script>
         angular-swipe 
        <script src="<c:url value='bower_components/angular-swipe/dist/angular-swipe.min.js' />"></script>
         UI Bootstrap 
        <script src="<c:url value='bower_components/angular-bootstrap/ui-bootstrap-tpls.min.js' />"></script>
         Loading Bar 
        <script src="<c:url value='bower_components/angular-loading-bar/build/loading-bar.min.js' />"></script>
         Angular Scroll 
        <script src="<c:url value='bower_components/angular-scroll/angular-scroll.min.js' />"></script>
         Angular Fullscreen 
        <script src="<c:url value='bower_components/angular-fullscreen/src/angular-fullscreen.js' />"></script>
         Angular DateRangePicker 
        <script src="<c:url value='bower_components/ng-bs-daterangepicker/dist/ng-bs-daterangepicker.min.js' />"></script>
         Angular Truncate 
        <script src="<c:url value='bower_components/angular-truncate/src/truncate.js' />"></script>
         Angular Moment 
        <script src="<c:url value='bower_components/angular-moment/angular-moment.min.js' />"></script>
         Angular ui-switch 
        <script src="<c:url value='bower_components/angular-ui-switch/angular-ui-switch.min.js' />"></script>
         Angular Toaster 
        <script src="<c:url value='bower_components/AngularJS-Toaster/toaster.js' />"></script>
         Angular Ng-Aside 
        <script src="<c:url value='bower_components/angular-aside/dist/js/angular-aside.min.js' />"></script>
         V-Accordion 
        <script src="<c:url value='bower_components/v-accordion/dist/v-accordion.min.js' />"></script>
         V-Button 
        <script src="<c:url value='bower_components/v-button/dist/v-button.min.js' />"></script>
         Angular Sweet Alert 
        <script src="<c:url value='bower_components/angular-sweetalert-promised/SweetAlert.min.js' />"></script>
         Angular Notification Icons 
        <script src="<c:url value='bower_components/angular-notification-icons/dist/angular-notification-icons.min.js' />"></script>
         Angular Awesome Slider 
        <script src="<c:url value='bower_components/angular-awesome-slider/dist/angular-awesome-slider.min.js' />"></script>
         Angular Ladda 
        <script src="<c:url value='bower_components/angular-ladda/dist/angular-ladda.min.js' />"></script>
         Angular Slick Carousel 
        <script src="<c:url value='bower_components/angular-slick-carousel/dist/angular-slick.min.js' />"></script>
         Packet Scripts 
        <script src="<c:url value='static/js/app.js' />"></script>
        <script src="<c:url value='static/js/main.js' />"></script>
        <script src="<c:url value='static/js/config.constant.js' />"></script>
        <script src="<c:url value='static/js/config.router.js' />"></script>
         Packet Directives 
        <script src="<c:url value='static/js/directives/toggle.js' />"></script>
        <script src="<c:url value='static/js/directives/perfect-scrollbar.js' />"></script>
        <script src="<c:url value='static/js/directives/empty-links.js' />"></script>
        <script src="<c:url value='static/js/directives/sidebars.js' />"></script>
        <script src="<c:url value='static/js/directives/off-click.js' />"></script>
        <script src="<c:url value='static/js/directives/full-height.js' />"></script>
        <script src="<c:url value='static/js/directives/panel-tools.js' />"></script>
        <script src="<c:url value='static/js/directives/char-limit.js' />"></script>
        <script src="<c:url value='static/js/directives/dismiss.js' />"></script>
        <script src="<c:url value='static/js/directives/compare-to.js' />"></script>
        <script src="<c:url value='static/js/directives/select.js' />"></script>
        <script src="<c:url value='static/js/directives/messages.js' />"></script>
        <script src="<c:url value='static/js/directives/chat.js' />"></script>
        <script src="<c:url value='static/js/directives/touchspin.js' />"></script>
        <script src="<c:url value='static/js/directives/file-upload.js' />"></script>
        <script src="<c:url value='static/js/directives/letter-icon.js' />"></script>
        <script src="<c:url value='static/js/directives/landing-header.js' />"></script>

         Packet Controllers 
        <script src="<c:url value='static/js/controllers/mainCtrl.js' />"></script>
        <script src="<c:url value='static/js/controllers/inboxCtrl.js' />"></script>
        <script src="<c:url value='static/js/controllers/bootstrapCtrl.js' />"></script>
        <script src="static/js/eventCloseWindow.js" type="text/javascript"></script>        

        session ipConnect dc tao ra khi login
        <input id="ipConnectSket" type="hidden" value="${sessionScope.ipConnect}"/>

        session su? dung crm hoac k su dung crm
        <input id="sessionChooseUseCRM" type="hidden" value="${sessionScope.sessionChooseUseCRM}"/>
         session url crm khac(truong hop k su dung mp_crm)
        <input id="sessionUrlCRM" type="hidden" value="${sessionScope.sessionUrlCRM}"/>

        <input id="sessionUserName" type="hidden" value="${sessionScope.username}"/>

        sessHideMpCRM = "1" la k su dung mp_crm
        <input id="sessHideMpCRM" type="hidden" value="${sessionScope.sessHideMpCRM}"/>

         thong tin template cho crm 
        <%
            String template = (String) session.getAttribute("template");
        %>
        <input id="template" type="hidden" value="<%=template%>"/>
        <script src="static/css/datetimepicker-master/jquery.js"></script>
        <script src="static/css/datetimepicker-master/build/jquery.datetimepicker.full.min.js"></script>
    </body>
</html>-->
