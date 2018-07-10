<%-- 
    Document   : MyProfile
    Created on : May 16, 2016, 11:58:07 AM
    Author     : ungdb
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<script src="static/js/directives/fileModel.js" type="text/javascript"></script>
<script src="static/js/service/fileUpload_Service.js" type="text/javascript"></script>

<script src="static/js/controller/MyProfile_Controller.js" type="text/javascript"></script>
<script src="static/js/service/MyProfile_Service.js" type="text/javascript"></script>

<div class="breadcrumb-wrapper">
    <h4 class="mainTitle no-margin">Thông tin người dùng</h4>

    <div ncy-breadcrumb class="pull-right"></div>
</div>
<!-- end: BREADCRUMB -->
<!-- start: USER PROFILE -->
<div class="container-fluid container-fullw bg-white">
    <div class="row">
        <div class="col-md-12">
            <!-- /// controller:  'UserCtrl' -  localtion: assets/js/controllers/userCtrl.js /// -->
            <!-- start: USER TABSET -->
            <uib-tabset class="tabbable">
                <!-- start: TAB OVERVIEW -->
                <uib-tab heading="Tổng quan">
                    <div ng-controller="UserCtrl">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="user-left">
                                    <div class="center">
                                        <h4>{{txtHoVaTen}}</h4>
                                        <div flow-init="{singleFile:true}" flow-name="obj.flow" flow-file-added="!!{png:1,gif:1,jpg:1,jpeg:1}[$file.getExtension()]">
                                            <div class="user-image">
                                                <div class="thumbnail">
                                                    <img ng-src="static/images/default-user.png" alt="" ng-if="!obj.flow.files.length && noImage">
                                                    <img ng-src="{{avatar}}" alt="" ng-if="!obj.flow.files.length && !noImage">
                                                    <img flow-img="obj.flow.files[0]" ng-if="obj.flow.files.length">
                                                </div>
                                                <div class="user-image-buttons" ng-if="obj.flow.files.length">
                                                    <span class="btn btn-primary btn-file">
                                                        <i class="fa fa-pencil"></i>
                                                        <input type="file" flow-btn />
                                                    </span>
                                                    <span class="btn btn-danger" ng-click="obj.flow.cancel()"> <i class="fa fa-times"></i> </span>
                                                </div>
                                                <div class="user-image-buttons" ng-if="!obj.flow.files.length">
                                                    <span class="btn btn-primary btn-file">
                                                        <i class="fa fa-pencil"></i>
                                                        <input type="file" flow-btn />
                                                    </span>
                                                    <span class="btn btn-danger" ng-if="!noImage" ng-click="removeImage()"><i class="fa fa-times"></i></span>
                                                </div>
                                            </div>
                                        </div>
                                        <hr>
                                        <div class="social-icons block">
                                            <ul>
                                                <li data-placement="top" data-original-title="Twitter" class="social-twitter tooltips">
                                                    <a href="#" target="_blank">
                                                        Twitter
                                                    </a>
                                                </li>
                                                <li data-placement="top" data-original-title="Facebook" class="social-facebook tooltips">
                                                    <a href="#" target="_blank">
                                                        Facebook
                                                    </a>
                                                </li>
                                                <li data-placement="top" data-original-title="Google" class="social-google tooltips">
                                                    <a href="#" target="_blank">
                                                        Google+
                                                    </a>
                                                </li>
                                                <li data-placement="top" data-original-title="LinkedIn" class="social-linkedin tooltips">
                                                    <a href="#" target="_blank">
                                                        LinkedIn
                                                    </a>
                                                </li>
                                                <li data-placement="top" data-original-title="Github" class="social-github tooltips">
                                                    <a href="#" target="_blank">
                                                        Github
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                        <hr>
                                    </div>
                                    <table class="table table-condensed">
                                        <thead>
                                            <tr>
                                                <th colspan="3">Thông tin liên lạc</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>url</td>
                                                <td>
                                                    <a href="#">
                                                        {{txtUrl}}
                                                    </a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>email:</td>
                                                <td>
                                                    <a href>
                                                        {{txtEmail}}
                                                    </a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Điện thoại</td>
                                                <td>{{txtPhone}}</td>
                                            </tr>
                                            <tr>
                                                <td>skye</td>
                                                <td>
                                                    <a href>
                                                        {{txtSkype}}
                                                    </a>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <table class="table table-condensed">
                                        <thead>
                                            <tr>
                                                <th colspan="3">Thông tin chung</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>Chức vụ</td>
                                                <td>
                                                    <!--UI Designer-->
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Đăng nhập lần cuối</td>
                                                <td>
                                                    <!--56 min-->
                                                </td>
                                            </tr>
<!--                                            <tr>
                                                <td>Chức vụ</td>
                                                <td>
                                                    Senior Marketing Manager
                                                </td>
                                            </tr>-->
                                            <tr>
                                                <td>Giám sát viên</td>
                                                <td>
                                                    <!--                                                    <a href="#">
                                                                                                            Kenneth Ross
                                                                                                        </a>-->
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Trạng thái</td>
                                                <td>
                                                    <!--<span class="label label-sm label-info">Administrator</span>-->
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <table class="table table-condensed">
                                        <thead>
                                            <tr>
                                                <th colspan="3">Thông tin bổ sung</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>Nhóm</td>
                                                <td>
                                                    <!--New company web site development, HR Management-->
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <!--                                    <div class="text-right">
                                                                            <a class="btn btn-primary btn-o btn-wide" href="#" ng-click="editActive = true">
                                                                                Edit Account
                                                                            </a>
                                                                        </div>-->
                                </div>
                            </div>
                            <div class="col-md-8">
                                <div class="row space20">
                                    <div class="col-sm-3">
                                        <button class="btn btn-icon margin-bottom-5 margin-bottom-5 btn-block">
                                            <i class="ti-layers-alt block text-primary text-extra-large margin-bottom-10"></i>
                                            Các dự án
                                        </button>
                                    </div>
                                    <div class="col-sm-3">
                                        <button class="btn btn-icon margin-bottom-5 btn-block">
                                            <i class="ti-comments block text-primary text-extra-large margin-bottom-10"></i>
                                            Tin nhắn <span class="badge badge-danger"> 23 </span>
                                        </button>
                                    </div>
                                    <div class="col-sm-3">
                                        <button class="btn btn-icon margin-bottom-5 btn-block">
                                            <i class="ti-calendar block text-primary text-extra-large margin-bottom-10"></i>
                                            Lịch
                                        </button>
                                    </div>
                                    <div class="col-sm-3">
                                        <button class="btn btn-icon margin-bottom-5 btn-block">
                                            <i class="ti-flag block text-primary text-extra-large margin-bottom-10"></i>
                                            Thông báo
                                        </button>
                                    </div>
                                </div>
                                <div class="panel panel-white" id="activities">
                                    <div class="panel-heading border-light">
                                        <h4 class="panel-title text-primary">Hoạt động gần đây</h4>
                                        <paneltool class="panel-tools" tool-collapse="tool-collapse" tool-refresh="load1" tool-dismiss="tool-dismiss"></paneltool>
                                    </div>
                                    <div uib-collapse="activities" ng-init="activities = false" class="panel-wrapper">
                                        <div class="panel-body">
                                            <ul class="timeline-xs">
                                                <li class="timeline-item success">
                                                    <div class="margin-left-15">
                                                        <div class="text-muted text-small">
                                                            2 phút trước
                                                        </div>
                                                        <p>
                                                            <a class="text-info" href>
                                                                Steven
                                                            </a>
                                                            has completed his account.
                                                        </p>
                                                    </div>
                                                </li>
                                                <li class="timeline-item">
                                                    <div class="margin-left-15">
                                                        <div class="text-muted text-small">
                                                            12:30
                                                        </div>
                                                        <p>
                                                            Staff Meeting
                                                        </p>
                                                    </div>
                                                </li>
                                                <li class="timeline-item danger">
                                                    <div class="margin-left-15">
                                                        <div class="text-muted text-small">
                                                            11:11
                                                        </div>
                                                        <p>
                                                            Completed new layout.
                                                        </p>
                                                    </div>
                                                </li>
                                                <li class="timeline-item info">
                                                    <div class="margin-left-15">
                                                        <div class="text-muted text-small">
                                                            Thu, 12 Jun
                                                        </div>
                                                        <p>
                                                            Contacted
                                                            <a class="text-info" href>
                                                                Microsoft
                                                            </a>
                                                            for license upgrades.
                                                        </p>
                                                    </div>
                                                </li>
                                                <li class="timeline-item">
                                                    <div class="margin-left-15">
                                                        <div class="text-muted text-small">
                                                            Tue, 10 Jun
                                                        </div>
                                                        <p>
                                                            Started development new site
                                                        </p>
                                                    </div>
                                                </li>
                                                <li class="timeline-item">
                                                    <div class="margin-left-15">
                                                        <div class="text-muted text-small">
                                                            Sun, 11 Apr
                                                        </div>
                                                        <p>
                                                            Lunch with
                                                            <a class="text-info" href>
                                                                Nicole
                                                            </a>
                                                            .
                                                        </p>
                                                    </div>
                                                </li>
                                                <li class="timeline-item warning">
                                                    <div class="margin-left-15">
                                                        <div class="text-muted text-small">
                                                            Wed, 25 Mar
                                                        </div>
                                                        <p>
                                                            server Maintenance.
                                                        </p>
                                                    </div>
                                                </li>
                                                <li class="timeline-item">
                                                    <div class="margin-left-15">
                                                        <div class="text-muted text-small">
                                                            Fri, 20 Mar
                                                        </div>
                                                        <p>
                                                            New User Registration
                                                            <a class="text-info" href>
                                                                more details
                                                            </a>
                                                            .
                                                        </p>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-white space20">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">Tweets gần đây</h4>
                                    </div>
                                    <div class="panel-body">
                                        <ul class="ltwt">
                                            <li class="ltwt_tweet">
                                                <p class="ltwt_tweet_text">
                                                    <a href class="text-info">
                                                        @Shakespeare
                                                    </a>
                                                    Some are born great, some achieve greatness, and some have greatness thrust upon them.
                                                </p>
                                                <span class="block text-light"><i class="fa fa-fw fa-clock-o"></i> 2 minuts ago</span>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>            
                </uib-tab>
                <!-- end: TAB OVERVIEW -->
                <!-- start: TAB EDIT ACCOUNT -->
                <uib-tab heading="Chỉnh sửa tài khoản" active="editActive">
                    <div ng-controller="UserCtrl">
                        <form name="frmTaiKhoan" novalidate ng-submit="form.submit(frmTaiKhoan)" modelAttribute="fileBucket" enctype="multipart/form-data">
                            <fieldset>
                                <legend>
                                   Thông tin tài khoản
                                </legend>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="control-label">
                                                Họ và tên
                                            </label>
                                            <input ng-disabled="dis1" type="text" class="form-control" name="txtHoVaTen" ng-model="txtHoVaTen" ng-maxlength="100" placeholder="Enter your name"/>
                                            <input type="hidden" name="txtId" ng-model="txtId"/>
                                            <input type="hidden" name="txtUserName" ng-model="txtUserName"/>
                                            <div class="has-error" ng-show="frmTaiKhoan.$dirty">
                                                <span class="error text-small block" ng-if="frmTaiKhoan.txtHoVaTen.$error.maxlength">Chỉ được phép nhập tối đa 100 ký tự. </span>
                                                <span ng-show="frmTaiKhoan.txtHoVaTen.$error.required">Bạn phải nhập họ và tên!</span>
                                                <span ng-show="frmTaiKhoan.txtHoVaTen.$error.minlength">Tên phải ít nhất 3 ký tự trở lên!</span>
                                            </div>
                                            <!--<input type="text" placeholder="Enter your first name" class="form-control" name="firstname" ng-model="firstName">-->
                                        </div>
                                        <!--                                        <div class="form-group">
                                                                                    <label class="control-label">
                                                                                        Last Name
                                                                                    </label>
                                                                                    <input type="text" placeholder="Enter your last name" class="form-control" name="lastname" ng-model="lastName">
                                                                                </div>-->
                                        <div class="form-group">
                                            <label class="control-label">
                                                Địa chỉ Email
                                            </label>
                                            <input type="email" placeholder="email address" class="form-control" name="txtEmail" ng-model="txtEmail">
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label">
                                                Điện thoại
                                            </label>
                                            <input type="text" placeholder="phone number" class="form-control" name="txtPhone" ng-model="txtPhone">
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label">
                                                Url
                                            </label>
                                            <input type="text" placeholder="Enter Url" class="form-control" name="txtUrl" ng-model="txtUrl">
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label">
                                                Skype
                                            </label>
                                            <input type="text" placeholder="Enter Skype" class="form-control" name="txtSkype" ng-model="txtSkype">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>Giới tính</label>
                                                <div class="panel panel-transparent">
                                                    <div class="panel-body">
                                                        <div class="radio clip-radio radio-primary radio-inline">
                                                            <input type="radio" id="radio3" name="inline" value="radio1" checked="checked">
                                                            <label for="radio3">
                                                                Nam
                                                            </label>
                                                        </div>
                                                        <div class="radio clip-radio radio-primary radio-inline">
                                                            <input type="radio" id="radio4" name="inline" value="radio2">
                                                            <label for="radio4">
                                                                Nữ
                                                            </label>
                                                        </div>
                                                        <div class="radio clip-radio radio-primary radio-inline">
                                                            <input type="radio" id="radio5" name="inline" value="radio3">
                                                            <label for="radio5">
                                                                Khác
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <%--<div class="form-group">
                                            <label class="block">
                                                Gender
                                            </label>
                                            <div class="clip-radio radio-primary">
                                                <input type="radio" id="us-female" name="gender" value="female" ng-model="gender">
                                                <label for="us-female">
                                                    Female
                                                </label>
                                                <input type="radio" id="us-male" name="gender" value="male" ng-model="gender">
                                                <label for="us-male">
                                                    Male
                                                </label>
                                            </div>
                                        </div>--%>
                                        <%--<div class="row">
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label class="control-label">
                                                        Zip Code
                                                    </label>
                                                    <input class="form-control" placeholder="enter a zip code" type="text" name="zipcode" ng-model="zipCode">
                                                </div>
                                            </div>
                                            <div class="col-md-8">
                                                <div class="form-group">
                                                    <label class="control-label">
                                                        City
                                                    </label>
                                                    <input class="form-control" placeholder="enter your city" type="text" name="city" ng-model="city">
                                                </div>
                                            </div>
                                        </div>--%>
                                        <!--                                        <div class="form-group">
                                                                                    <label>
                                                                                        Image Upload
                                                                                    </label>
                                                                                    <div flow-init flow-object="obj.flow">
                                                                                        <div class="user-image">
                                                                                            <div class="thumbnail margin-bottom-5">
                                                                                                <img src="static/images/default-user.png" alt="" ng-if="!obj.flow.files.length && noImage">
                                                                                                <img ng-src="{{avatar}}" alt="" ng-if="!obj.flow.files.length && !noImage">
                                                                                                <img flow-img="obj.flow.files[0]" ng-if="obj.flow.files.length">
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="user-image-buttons-edit" ng-if="obj.flow.files.length">
                                                                                            <span class="btn btn-primary btn-file">
                                                                                                <i class="fa fa-pencil"></i>
                                                                                                <input type="file" flow-btn />
                                                                                            </span>
                                                                                            <span class="btn btn-danger" ng-click="obj.flow.cancel()"> <i class="fa fa-times"></i></span>
                                                                                        </div>
                                                                                        <div class="user-image-buttons-edit" ng-if="!obj.flow.files.length">
                                                                                            <span class="btn btn-primary btn-file">
                                                                                                <i class="fa fa-pencil"></i>
                                                                                                <input type="file" flow-btn />
                                                                                            </span>
                                                                                            <span class="btn btn-danger" ng-if="!noImage" ng-click="removeImage()"><i class="fa fa-times"></i> </span>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>-->
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <div flow-init flow-object="obj.flow">
                                                    <div ng-controller="UserCtrl">

                                                        <div class="col-md-6">
                                                            <div class="pull-right">
                                                                <div class="user-image">
                                                                    <div class="thumbnail margin-bottom-5">
                                                                        <img id="imgFile" ng-src="static/images/avatar-1.jpg" alt="">
                                                                    </div>
                                                                </div>
                                                                <div class="user-image-buttons-edit" ng-if="obj.flow.files.length">
                                                                    <span class="btn btn-primary btn-file">
                                                                        <i class="fa fa-pencil"></i>
                                                                        <input type="file" file-model="myFile" />
                                                                    </span>
                                                                    <span class="btn btn-danger" ng-click="obj.flow.cancel()"> <i class="fa fa-times"></i></span>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="col-md-4">
                                                            <div class="pull-left">
                                                                <input type="file" file-model="myFile" />
                                                                <button ng-click="upload()">Tải ảnh</button>
                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer" style="text-align: left">
                                    <button type="submit" class="btn btn-wide btn-info radius-5" ng-click="updateUser()">Cập nhật</button>
                                </div>
                            </fieldset>
                            <fieldset>
                                <legend>
                                    Thông tin bổ sung
                                </legend>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="control-label">
                                                Twitter
                                            </label>
                                            <span class="input-icon">
                                                <input class="form-control" type="text" placeholder="Twitter" name="twitter" ng-model="twitter">
                                                <i class="fa fa-twitter"></i>
                                            </span>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label">
                                                Facebook
                                            </label>
                                            <span class="input-icon">
                                                <input class="form-control" type="text" placeholder="Facebook" name="facebook" ng-model="facebook">
                                                <i class="fa fa-facebook"></i>
                                            </span>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label">
                                                Google Plus
                                            </label>
                                            <span class="input-icon">
                                                <input class="form-control" type="text" placeholder="Google Plus" name="google" ng-model="google">
                                                <i class="fa fa-google-plus"></i>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="control-label">
                                                Github
                                            </label>
                                            <span class="input-icon">
                                                <input class="form-control" type="text" placeholder="Github" name="github" ng-model="github">
                                                <i class="fa fa-github"></i>
                                            </span>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label">
                                                Linkedin
                                            </label>
                                            <span class="input-icon">
                                                <input class="form-control" type="text" placeholder="Linkedin" name="linkedin" ng-model="linkedin">
                                                <i class="fa fa-linkedin"></i>
                                            </span>
                                        </div>
                                        <!--                                        <div class="form-group">
                                                                                    <label class="control-label">
                                                                                        Skype
                                                                                    </label>
                                                                                    <span class="input-icon">
                                                                                        <input class="form-control" type="text" placeholder="Skype" name="skype" ng-model="txtSkype">
                                                                                        <i class="fa fa-skype"></i>
                                                                                    </span>
                                                                                </div>-->
                                    </div>
                                </div>
                            </fieldset>
                        </form>
                    </div>          
                </uib-tab>
                <!-- end: TAB EDIT ACCOUNT -->
                <!-- start: TAB PROJECTS -->
                <uib-tab heading="Dự án">
                    <table class="table" id="projects">
                        <thead>
                            <tr>
                                <th>Tên dự án</th>
                                <th class="hidden-xs">Khách hàng</th>
                                <th>Proj Comp</th>
                                <th class="hidden-xs">%Comp</th>
                                <th class="hidden-xs center">Trạng thái ưu tiên</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>IT Help Desk</td>
                                <td class="hidden-xs">Master Company</td>
                                <td>11 november 2014</td>
                                <td class="hidden-xs">
                                    <div class="progress active progress-xs">
                                        <div style="width: 70%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="70" role="progressbar" class="progress-bar progress-bar-warning">
                                            <span class="sr-only"> 70% Complete (danger)</span>
                                        </div>
                                    </div>
                                </td>
                                <td class="center hidden-xs"><span class="label label-danger">Critical</span></td>
                            </tr>
                            <tr>
                                <td>PM New Product Dev</td>
                                <td class="hidden-xs">Brand Company</td>
                                <td>12 june 2014</td>
                                <td class="hidden-xs">
                                    <div class="progress active progress-xs">
                                        <div style="width: 40%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="40" role="progressbar" class="progress-bar progress-bar-info">
                                            <span class="sr-only"> 40% Complete</span>
                                        </div>
                                    </div>
                                </td>
                                <td class="center hidden-xs"><span class="label label-warning">High</span></td>
                            </tr>
                            <tr>
                                <td>MPCC Web Site</td>
                                <td class="hidden-xs">Internal</td>
                                <td>11 november 2014</td>
                                <td class="hidden-xs">
                                    <div class="progress active progress-xs">
                                        <div style="width: 90%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="90" role="progressbar" class="progress-bar progress-bar-success">
                                            <span class="sr-only"> 90% Complete</span>
                                        </div>
                                    </div>
                                </td>
                                <td class="center hidden-xs"><span class="label label-success">Normal</span></td>
                            </tr>
                            <tr>
                                <td>Local Ad</td>
                                <td class="hidden-xs">UI Fab</td>
                                <td>15 april 2014</td>
                                <td class="hidden-xs">
                                    <div class="progress active progress-xs">
                                        <div style="width: 50%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="50" role="progressbar" class="progress-bar progress-bar-warning">
                                            <span class="sr-only"> 50% Complete</span>
                                        </div>
                                    </div>
                                </td>
                                <td class="center hidden-xs"><span class="label label-success">Normal</span></td>
                            </tr>
                            <tr>
                                <td>Design new theme</td>
                                <td class="hidden-xs">Internal</td>
                                <td>2 october 2014</td>
                                <td class="hidden-xs">
                                    <div class="progress active progress-xs">
                                        <div style="width: 20%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="20" role="progressbar" class="progress-bar progress-bar-success">
                                            <span class="sr-only"> 20% Complete (warning)</span>
                                        </div>
                                    </div>
                                </td>
                                <td class="center hidden-xs"><span class="label label-danger">Critical</span></td>
                            </tr>
                            <tr>
                                <td>IT Help Desk</td>
                                <td class="hidden-xs">Designer TM</td>
                                <td>6 december 2014</td>
                                <td class="hidden-xs">
                                    <div class="progress active progress-xs">
                                        <div style="width: 40%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="40" role="progressbar" class="progress-bar progress-bar-warning">
                                            <span class="sr-only"> 40% Complete (warning)</span>
                                        </div>
                                    </div>
                                </td>
                                <td class="center hidden-xs"><span class="label label-warning">High</span></td>
                            </tr>
                        </tbody>
                    </table>
                </uib-tab>
                <!-- end: TAB PROJECTS -->
            </uib-tabset>
            <!-- end: USER TABSET -->
        </div>
    </div>
</div>
<!-- end: USER PROFILE -->
