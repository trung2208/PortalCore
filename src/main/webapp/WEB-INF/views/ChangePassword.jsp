<%-- 
    Document   : ChangePassword
    Created on : Jul 1, 2016, 10:55:20 AM
    Author     : hiennv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<script src="static/js/service/Login_Service.js" type="text/javascript"></script>
<script src="static/js/controller/ChangePassword.js" type="text/javascript"></script>
<!DOCTYPE html>

<div class="row" ng-controller="ChangePasswordCtrl">
    <div class="main-login col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4 col-lg-2 col-lg-offset-5">
        <div class="logo text-center">
            <img src="static/images/logo2.png" alt="{{app.name}}" class="img-responsive" />
        </div>
        <p class="text-center text-dark text-bold text-extra-large margin-top-15">
            Welcome to MPCC
        </p>
        <!-- start: LOGIN BOX -->
        <div class="box-login">
            <form class="form-login" name="frmChangePassword" novalidate ng-submit="form.submit(frmChangePassword)">

                <div class="form-group" ng-class="{'has-error':frmChangePassword.txtUserName.$dirty && frmChangePassword.txtUserName.$invalid,
                            'has-success':frmChangePassword.txtUserName.$valid}">
                    <input type="text" class="form-control" name="txtUserName" ng-model="txtUserName" 
                           placeholder="Nhập tên đăng nhập" required/>
                    <span class="error text-small" ng-if="frmChangePassword.txtUserName.$dirty &&
                                            frmChangePassword.txtUserName.$invalid">Vui lòng nhập tên đăng nhập.</span>
                </div>

                <div class="form-group" ng-class="{'has-error':frmChangePassword.txtPassword.$dirty && frmChangePassword.txtPassword.$invalid || frmChangePassword.txtPassword.$error.minlength || frmChangePassword.txtPassword.$error.maxlength,
                            'has-success':frmChangePassword.txtPassword.$valid}">
                    <input type="password" class="form-control" name="txtPassword" ng-model="txtPassword" 
                           placeholder="Nhập mật khẩu" ng-minlength="6" ng-maxlength="100" required/>
                    <span class="error text-small" ng-if="frmChangePassword.txtPassword.$dirty &&
                                            frmChangePassword.txtPassword.$invalid &&!frmChangePassword.txtPassword.$error.minlength && !frmChangePassword.txtPassword.$error.maxlength">Vui lòng nhập mật khẩu.</span>
                    <span class="error text-small" ng-if="frmChangePassword.txtPassword.$error.minlength">Mật khẩu phải có ít nhất 6 ký tự.</span>
                    <span class="error text-small" ng-if="frmChangePassword.txtPassword.$error.maxlength">Mật khẩu tối đa 100 ký tự.</span>
                </div>


                <div class="form-group" ng-class="{'has-error':frmChangePassword.txtPasswordNew.$dirty && frmChangePassword.txtPasswordNew.$invalid || frmChangePassword.txtPasswordNew.$error.minlength ||frmChangePassword.txtPasswordNew.$error.maxlength,
 'has-success':frmChangePassword.txtPasswordNew.$valid}">                    
                    <input type="password" placeholder="Mật khẩu mới" class="form-control" name="txtPasswordNew" ng-model="txtPasswordNew" ng-minlength="6" ng-maxlength="100" required />
                    <span class="error text-small block" ng-if="frmChangePassword.txtPasswordNew.$dirty &&
                                            frmChangePassword.txtPasswordNew.$error.required && !frmChangePassword.txtPasswordNew.$error.minlength &&!frmChangePassword.txtPasswordNew.$error.maxlength ">Vui lòng nhập mật khẩu.</span>
                    <span class="error text-small" ng-if="frmChangePassword.txtPasswordNew.$error.minlength">Mật khẩu phải có ít nhất 6 ký tự.</span>
                    <span class="error text-small" ng-if="frmChangePassword.txtPasswordNew.$error.maxlength">Mật khẩu tối đa 100 ký tự.</span>
                </div>



                <div class="form-group" ng-class="{'has-error':frmChangePassword.txtPasswordRepeat.$dirty && frmChangePassword.txtPasswordRepeat.$error.compareTo ||
                    frmChangePassword.txtPasswordRepeat.$dirty && frmChangePassword.txtPasswordRepeat.$invalid || frmChangePassword.txtPasswordRepeat.$error.minlength || frmChangePassword.txtPasswordRepeat.$error.maxlength, 'has-success':frmChangePassword.txtPasswordRepeat.$valid}">
                    <input type="password" placeholder="Nhập lại mật khẩu" class="form-control" name="txtPasswordRepeat" 
                           ng-model="txtPasswordRepeat" compare-to="txtPasswordNew" ng-minlength="6" ng-maxlength="100" required />
                    <span class="error text-small block" ng-if="frmChangePassword.txtPasswordRepeat.$dirty && frmChangePassword.txtPasswordRepeat.$error.required && !frmChangePassword.txtPasswordRepeat.$error.minlength && !frmChangePassword.txtPasswordRepeat.$error.maxlength">Vui lòng nhập mật khẩu!</span>
                    <span class="error text-small block" ng-if="frmChangePassword.txtPasswordRepeat.$dirty && frmChangePassword.txtPasswordRepeat.$error.compareTo">Mật không khớp!</span>
                    <span class="error text-small" ng-if="frmChangePassword.txtPasswordRepeat.$error.minlength">Mật khẩu phải có ít nhất 6 ký tự.</span>
                    <span class="error text-small" ng-if="frmChangePassword.txtPasswordRepeat.$error.maxlength">Mật khẩu tối đa 100 ký tự.</span>
                </div>



                <div class="form-actions">
                    <button type="submit" class="btn btn-red btn-block" ng-click="LuuLai()">Lưu lại</button>
                </div>
            </form>
            <!-- start: COPYRIGHT -->
            <div class="copyright">
                {{app.year}} &copy; {{ app.name}} by {{ app.author}}.
            </div>
            <!-- end: COPYRIGHT -->
        </div>
        <!-- end: LOGIN BOX -->
    </div>
</div>

