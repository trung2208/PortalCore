<%-- 
    Document   : dashboard
    Created on : Jul 19, 2016, 8:32:49 AM
    Author     : ungdb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="static/css/loading-dasboard.css">
<!--<link rel="stylesheet" href="DOCUMENTATION/assets/css/loading-dasboard.css">-->
<!DOCTYPE html>
<!--<div id="loading">-->
<!--<img id="loading-image" src="static/images/loading.gif" style="width: 25px; height: 25px" alt="Loading..." />-->
<!--<img id="loading-image" src="static/images/spinner_1.gif" style="width: 25px; height: 25px" alt="Loading..." />-->
<!--</div>--> 
<!-- start: BREADCRUMB -->
<%--<div class="breadcrumb-wrapper">
    <h4 class="mainTitle no-margin">Chào mừng bạn đến MPCC</h4>
    <!--    <h4 class="mainTitle no-margin" translate="dashboard.WELCOME" translate-values="{ appName: app.name }">Welcome to MPCC</h4>-->
    <span class="mainDescription">Tổng quan và số liệu thống kê</span>
    <div ncy-breadcrumb class="pull-right"></div>
    <!--<div align="left"><button type="button" onclick="refresh()">Refresh</button></div>-->
</div>--%>
<!-- end: BREADCRUMB -->
<!-- start: FIRST SECTION -->
<style>
    .chart-style{
        max-height: 300px;
        min-height: 200px;
        /*margin-left: 15px;*/
    }
</style>
<div ng-controller="DashBoardCtrl" class="container-fluid container-fullw padding-bottom-10" ng-cloak>
    <input type="hidden" id="hidTotalCall" value="0">
    <div class="row">        
        <button ng-click="openCRM()">Open</button>
    </div>

    <div class="row">        
        <div class="col-sm-6 col-lg-3">
            <div class="panel panel-white no-border no-radius">
                <!--<ct-paneltool class="panel-tools" tool-refresh="load1"></ct-paneltool>-->
                <div class="panel-body no-padding">
                    <div class="space10 padding-15">
                        <h5 class="text-bold text-extra-small text-dark-transparent text-uppercase no-margin">ĐTV sãn sàng </h5>
                        <div class="block margin-top-15 margin-bottom-10 text-azure">
                            <i class="fa fa-user fa-5x"></i>
                            <span class="counter" count-to="{{countToAgentReady}}" value="{{countFromAgentReady}}" duration="1" filter="number"></span>
                        </div>						
                    </div>
                    <div class="padding-bottom-20">
                        <uib-progressbar value="countAgentReadyPercent" class="progress-xs no-radius background-dark no-margin" type="azure"></uib-progressbar>
                        <p class="margin-10">
                            <span class="text-extra-small text-light pull-right">{{countAgentReadyPercent}}%</span>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-lg-3">
            <div class="panel panel-white no-border no-radius">
                <!--<ct-paneltool class="panel-tools" tool-refresh="load1"></ct-paneltool>-->
                <div class="panel-body no-padding">
                    <div class="space10 padding-15">
                        <h5 class="text-bold text-extra-small text-dark-transparent text-uppercase no-margin">ĐTV đang trả lời </h5>
                        <div class="block margin-top-15 margin-bottom-10 text-green">
                            <i class="fa fa-phone fa-5x"></i>
                            <span class="counter" count-to="{{countToAgentAnser}}" value="{{countFromAgentAnser}}" duration="1" filter="number"></span>						
                        </div>

                    </div>
                    <div class="padding-bottom-20">
                        <uib-progressbar value="countAgentAnserPercent" class="progress-xs no-radius background-dark no-margin" type="green"></uib-progressbar>
                        <p class="margin-10">
                            <span class="text-extra-small text-light pull-right">{{countAgentAnserPercent}}%</span>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-lg-3">
            <div class="panel panel-white no-border no-radius">
                <!--<ct-paneltool class="panel-tools" tool-refresh="load1"></ct-paneltool>-->
                <div class="panel-body no-padding">
                    <div class="space10 padding-15">
                        <h5 class="text-bold text-extra-small text-dark-transparent text-uppercase no-margin">Máy đổ chuông </h5>
                        <div class="block margin-top-15 margin-bottom-10" style="color: #eea236">
                            <i class="fa fa-bell fa-5x"></i>
                            <span class="counter" count-to="{{countToAgentRing}}" value="{{countFromAgentRing}}" duration="1" filter="number"></span>
                        </div>						
                    </div>
                    <div class="padding-bottom-20">
                        <uib-progressbar value="countAgentRingPercent" class="progress-xs no-radius background-dark no-margin" type="warning"></uib-progressbar>
                        <p class="margin-10">
                            <span class="text-extra-small text-light pull-right">{{countAgentRingPercent}}%</span>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-lg-3">
            <div class="panel panel-white no-border no-radius">
                <!--<ct-paneltool class="panel-tools" tool-refresh="load1"></ct-paneltool>-->
                <div class="panel-body no-padding">
                    <div class="space10 padding-15">
                        <h5 class="text-bold text-extra-small text-dark-transparent text-uppercase no-margin">Cuộc gọi chờ </h5>
                        <div class="block margin-top-15 margin-bottom-10 text-purple">
                            <i class="fa fa-phone-square fa-5x"></i>
                            <span class="counter" count-to="{{countToCallWait}}" value="{{countFromCallWait}}" duration="1" filter="number"></span>
                        </div>

                    </div>
                    <div class="padding-bottom-20">
                        <uib-progressbar value="countCallWaitPercent" class="progress-xs no-radius background-dark no-margin" type="purple"></uib-progressbar>
                        <p class="margin-10">
                            <span class="text-extra-small text-light pull-right">{{countCallWaitPercent}}%</span>
                        </p>
                    </div>
                </div>
            </div>
        </div> 
    </div>
    <div class="row">

        <div class="container-fluid container-fullw padding-bottom-10">
            <div class="row">
                <div class="col-sm-12">
                    <div class="panel panel-white no-radius">
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-3 col-md-12">
                                    <div class="panel panel-white no-radius">
                                        <div class="panel-heading border-bottom">
                                            <h3 class="panel-title margin-bottom-10 text-bold">Thống kê cuộc gọi vào</h3>  
                                        </div>
                                        <div class="panel-body">
                                            <div class="panel-scroll" perfect-scrollbar wheel-propagation="false" suppress-scroll-x="true" style="max-height: 330px;">
                                                <table id="example"  class="table margin-top-5 margin-bottom-0">
                                                    <tbody>
                                                        <tr>
                                                            <th></th>
                                                            <th>Nhóm</th>
                                                            <th class="center">Số lượng</th>
                                                        </tr>
                                                        <tr ng-repeat="item in listTotalCallInQueue">                                
                                                            <!--<td><div class="margin-right-5 letter-icon-wrapper ng-isolate-scope size-sm" ng-style="queue{{$index}}" style="width: 20px; height: 20px;"/>{{item.queueName}}</td>-->
                                                            <td><letter-icon data="{{item.queueName}}" ng-style="queue{{$index}}" size="sm" box="square" char-count="1"></letter-icon></td>
                                                    <td> {{item.queueName}}</td>
                                                    <td  class="center" style="color: #C0392B!important">{{item.totalCall}}</td>  

                                                    </tr>                                                                                  
                                                    </tbody>
                                                </table>
                                            </div>                
                                        </div>                                         
                                    </div>
                                </div>
                                <div class="col-lg-5 col-md-12">
                                    <div class="panel panel-white no-radius" id="visits">
                                        <div class="panel-body margin-bottom-10">
                                            <div class="row padding-bottom-30">
                                                <div class="col-xs-4 text-center">
                                                    <div class="margin-bottom-10">
                                                        <letter-icon data="O" color="#5B9BD1" size="sm" class="margin-right-10"></letter-icon><span class="text-extra-large text-bold" ng-bind="sumTotalCallInbound | number"></span>
                                                    </div>
                                                    Tổng cuộc gọi đổ vào
                                                </div>
                                                <div class="col-xs-4 text-center">
                                                    <div class="margin-bottom-10">
                                                        <letter-icon data="A" color="#a82315" size="sm" class="margin-right-10"></letter-icon><span class="text-extra-large text-bold" ng-bind="sumCallsAbandoned | number"></span>
                                                    </div>
                                                    Các cuộc gọi rớt
                                                </div>
                                                <div class="col-xs-4 text-center">
                                                    <div class="margin-bottom-10">
                                                        <letter-icon data="H" color="#009F6B" size="sm" class="margin-right-10"></letter-icon><span class="text-extra-large text-bold" ng-bind="sumCallHandled | number"></span>
                                                    </div>
                                                    Các cuộc gọi được xử lý
                                                    <!--Call Handled-->
                                                </div>
                                            </div>
                                            <!-- /// controller:  'ProductsCtrl' -  localtion: assets/js/controllers/dashboardCtrl.js /// -->
                                            <div>
                                                <canvas class="chart chart-line chart-style" chart-data="data" chart-options="options" chart-labels="labels" chart-series="series" chart-colours="colors"></canvas>                                                
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-12">                                    
                                    <div class="panel panel-white no-radius">
                                        <div class="panel-heading border-bottom">
                                            <h4 class="panel-title margin-bottom-10 text-bold">Thống kê cuộc gọi ra</h4>
                                        </div>                                           
                                        <div class="panel-body">
                                            <div class="panel-scroll" perfect-scrollbar wheel-propagation="false" suppress-scroll-x="true" style="max-height: 330px;">
                                                <table class="table margin-top-5 margin-bottom-0">
                                                    <tbody>
                                                        <tr>
                                                            <th></th>
                                                            <th>Nhóm</th>
                                                            <th class="center">Cuộc gọi</th>
                                                            <th class="center">Thành công</th>
                                                        </tr>
                                                        <tr ng-repeat="item in listTotalCallOutQueue">
                                                            <td><letter-icon data="{{item.queueName}}" color="auto" size="sm" char-count="1" box="circle"></letter-icon></td>
                                                    <td>{{item.queueName}}</td>
                                                    <td class="center">{{item.totalCallOut}}</td>                                                    
                                                    <td class="center">{{item.totalCallOutSuccess}}</td>                                                    
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>  
    <table class="table hidden" id="tblAgentDashBoard"> 
        <thead> 
            <tr>                     
                <th>Nhân viên</th>
                <th>Nhóm</th> 
                <th>Số nội bộ</th> 
                <th>Trạng thái</th>         
            </tr> 
        </thead> 
        <tbody id="tbdAgentDashboard"> 

        </tbody>                                             
    </table>
</div>

<script src="static/js/service/MyProfile_Service.js" type="text/javascript" defer></script>
<script src="static/js/service/DashboardService.js" type="text/javascript" ></script>
<script src="static/js/controller/DashboardController.js" type="text/javascript"  ></script>