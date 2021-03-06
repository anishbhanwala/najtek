<%@ include file="/WEB-INF/jsp/includes/include.jsp" %>
<!doctype html>
<!--[if lt IE 7]>      <html ng-app="NAJTek" class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html ng-app="NAJTek" class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html ng-app="NAJTek" class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html ng-app="NAJTek" class="no-js" lang=""> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>NAJTek</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="apple-touch-icon" href="/n/resources/img/apple-touch-icon.png">

    <link rel="stylesheet" href="/n/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="/n/resources/css/angular-ui-notification.min.css">
    <link rel="stylesheet" href="/n/resources/css/angular-busy.min.css">

    <link rel="stylesheet" href="/n/resources/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="/n/resources/css/main.css">

    <script src="/n/resources/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
</head>
<body>
<!--[if lt IE 8]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
<![endif]-->
<div cg-busy="currentPromise"></div>

<nt-navbar-component></nt-navbar-component>

<div class="container">
    <div class="row row-offcanvas row-offcanvas-left">

        <nt-left-navigation-component></nt-left-navigation-component>

        <div class="col-xs-12 col-sm-9">
            <p class="visible-xs">
                <button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas">Toggle nav</button>
            </p>

            <div ncy-breadcrumb></div>

            <div ui-view></div>
        </div><!--/.col-xs-12.col-sm-9-->

    </div>
</div>

<script src="/n/resources/js/vendor/jquery-1.11.2.min.js"></script>
<script src="/n/resources/js/vendor/bootstrap.min.js"></script>

<script src="/n/resources/js/vendor/angular.min.js"></script>
<script src="/n/resources/js/vendor/angular-resource.min.js"></script>
<script src="/n/resources/js/vendor/angular-ui-router.min.js"></script>

<script src="/n/resources/js/vendor/angular-ui-notification.min.js"></script>
<script src="/n/resources/js/vendor/angular-busy.min.js"></script>
<script src="/n/resources/js/vendor/ui-bootstrap-tpls-2.1.1.min.js"></script>
<script src="/n/resources/js/vendor/angular-breadcrumb.min.js"></script>

<script src="/n/app/public/App.js"></script>
<script src="/n/app/public/login/LoginController.js"></script>
<script src="/n/app/public/auth/AuthenticationService.js"></script>
<script src="/n/app/public/constant/AppConstant.js"></script>

<script src="/n/app/public/config/HttpInterceptorConfig.js"></script>
<script src="/n/app/secured/config/RouteConfig.js"></script>
<script src="/n/app/secured/config/Run.js"></script>

<script src="/n/app/public/tags/field-label/FieldLabelDirective.js"></script>
<script src="/n/app/public/tags/panel/PanelDirective.js"></script>

<script src="/n/app/public/util/ShowValidationErrorService.js"></script>

<script src="/n/app/secured/school/SchoolResource.js"></script>

<script src="/n/app/secured/admin/organization/OrganizationsComponent.js"></script>
<script src="/n/app/secured/admin/organization/OrganizationResource.js"></script>
<script src="/n/app/secured/admin/organization/AddOrganizationComponent.js"></script>

<script src="/n/app/secured/admin/school/SchoolsComponent.js"></script>
<script src="/n/app/secured/admin/school/SchoolResource.js"></script>
<script src="/n/app/secured/admin/school/AddSchoolComponent.js"></script>

<script src="/n/app/secured/admin/school/setting/SchoolSettingComponent.js"></script>

<script src="/n/app/secured/admin/school/staff/AddStaffMemberComponent.js"></script>
<script src="/n/app/secured/admin/school/staff/StaffMembersComponent.js"></script>
<script src="/n/app/secured/admin/school/staff/StaffMemberResource.js"></script>

<script src="/n/app/secured/admin/user/UserSearchResource.js"></script>
<script src="/n/app/secured/admin/user/UsersComponent.js"></script>
<script src="/n/app/secured/admin/user/UserResource.js"></script>
<script src="/n/app/secured/admin/user/AddEditUserComponent.js"></script>
<script src="/n/app/secured/admin/user/UserRoleService.js"></script>

<script src="/n/app/secured/navigation/NavBarComponent.js"></script>
<script src="/n/app/secured/navigation/LeftNavigationService.js"></script>
<script src="/n/app/secured/navigation/LeftNavigationComponent.js"></script>

<script>
    $(document).ready(function () {
        $('[data-toggle="offcanvas"]').click(function () {
            $('.row-offcanvas').toggleClass('active')
        });
    });
</script>

</body>
</html>
