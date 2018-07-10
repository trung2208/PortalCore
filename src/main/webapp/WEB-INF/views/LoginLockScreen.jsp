<%-- 
    Document   : LoginLockScreen
    Created on : Jul 11, 2016, 12:04:02 PM
    Author     : ungdb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<script src="static/js/controller/LoginLockScreenController.js" type="text/javascript"></script>
<script src="static/js/service/LoginLockScreenService.js" type="text/javascript"></script>
<script src="static/js/service/MyProfile_Service.js"></script>
<script src="bower_components/jquery/dist/jquery.min.js"></script>
<script src="bower_components/angular/angular.min.js"></script>

<script type="text/javascript">
    window.onpopstate = function () {
        window.location.href = '/MPCC_FB/#/login/lock';
    }
</script>
<!DOCTYPE html>
<div ng-controller="LoginLockCtrl">
    <!--<div class="row">-->
    <div class="lock-screen">
        <div class="box-ls">
            <img alt="" src="{{avatar}}" style="width: 150px; height: 150px" class="img-rounded" />
            <div class="user-info">
                <h4>{{fullName}}</h4>
                <span>{{email}}</span>
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
    <!--</div>-->
</div>
