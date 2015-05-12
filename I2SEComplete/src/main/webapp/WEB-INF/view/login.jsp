<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <!-- Hammer reload -->

    <!-- /Hammer reload -->


    <link rel='stylesheet' href='<c:url value="/resource/assets/css/fullcalendar.css"/>'>
    <link rel='stylesheet' href='/resource/assets/css/datatables/datatables.css'>
    <link rel='stylesheet' href='/resource/assets/css/datatables/bootstrap.datatables.css'>
    <link rel='stylesheet' href='/resource/assets/scss/chosen.css'>
    <link rel='stylesheet' href='/resource/assets/scss/font-awesome/font-awesome.css'>
    <link rel='stylesheet' href='/resource/assets/css/app.css'>

    <link href='http://fonts.googleapis.com/css?family=Oswald:300,400,700|Open+Sans:400,700,300' rel='stylesheet'
          type='text/css'>

    <link href="/resource/assets/favicon.ico" rel="shortcut icon">
    <link href="/resource/assets/apple-touch-icon.png" rel="apple-touch-icon">

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
    <script src='/resource/assets/js/jquery.sparkline.min.js'></script>
    <script src='/resource/assets/js/bootstrap/tab.js'></script>
    <script src='/resource/assets/js/bootstrap/dropdown.js'></script>
    <script src='/resource/assets/js/bootstrap/collapse.js'></script>
    <script src='/resource/assets/js/bootstrap/transition.js'></script>
    <script src='/resource/assets/js/bootstrap/tooltip.js'></script>
    <script src='/resource/assets/js/jquery.knob.js'></script>
    <script src='/resource/assets/js/fullcalendar.min.js'></script>
    <script src='/resource/assets/js/datatables/datatables.min.js'></script>
    <script src='/resource/assets/js/chosen.jquery.min.js'></script>
    <script src='/resource/assets/js/datatables/bootstrap.datatables.js'></script>
    <script src='/resource/assets/js/raphael-min.js'></script>
    <script src='/resource/assets/js/morris-0.4.3.min.js'></script>
    <script src='/resource/assets/js/for_pages/color_settings.js'></script>
    <script src='/resource/assets/js/application.js'></script>

    <script src='/resource/assets/js/for_pages/dashboard.js'></script>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    @javascript html5shiv respond.min
    <![endif]-->

    <title>Office Task Management</title>

</head>

<body>


<div class="all-wrapper no-menu-wrapper">
    <div class="login-logo-w">
        <a href="index.html" class="logo">
            <i class="icon-cloud-download"></i>
            <span>Task Management</span>
        </a>
    </div>
    <div class="row">
        <div class="col-md-4 col-md-offset-4">

            <div class="content-wrapper bold-shadow">
                <div class="content-inner">
                    <div class="main-content main-content-grey-gradient no-page-header">
                        <div class="main-content-inner">
                            <form action="/login" role="form" method="post">
                                <h3 class="form-title form-title-first"><i class="icon-lock"></i> Login Example</h3>
                                <div class="form-group">
                                    <label>Username</label>
                                    <input type="text" class="form-control" name="username" placeholder="Enter email">
                                </div>
                                <div class="form-group">
                                    <label>Password</label>
                                    <input type="password" class="form-control" name="password" placeholder="Password">
                                </div>
                                <div class="form-group">
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox"> Remember me
                                        </label>
                                    </div>
                                </div>
                                <input type="submit" class="btn btn-primary btn-lg" name="action" value="Sign in">
                                <a href="index.html" class="btn btn-link">Cancel</a>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="color_settings_box hidden-xs">
        <h3>Color Settings</h3>
        <label for="wood-wrapper-checkbox" class="checkbox-w">
            <input type="checkbox" id="wood-wrapper-checkbox">
            <span class="wood-checkbox"></span> Wrap in Wood
        </label>
        <h3>Background</h3>
        <div class="color-settings-w" data-replace-element="body" data-leave-class="">
            <div class="color-box color-box-dark-blue color-tooltip" data-toggle="tooltip" data-placement="top" title="Solid Dark Blue" data-replace-with="body-dark-blue"></div>
            <div class="color-box color-box-light-blue color-tooltip" data-toggle="tooltip" data-placement="top" title="Solid Light Blue" data-replace-with="body-blue"></div>
            <div class="color-box color-box-grey color-tooltip" data-toggle="tooltip" data-placement="top" title="Solid Grey" data-replace-with="body-grey"></div>
            <div class="color-box color-box-linen-dark color-tooltip active" data-toggle="tooltip" data-placement="top" title="Dark Linen" data-replace-with="body-dark-linen"></div>
            <div class="color-box color-box-linen-light color-tooltip" data-toggle="tooltip" data-placement="top" title="Light Linen" data-replace-with="body-light-linen"></div>
        </div>
        <h3>Header</h3>
        <div class="color-settings-w" data-replace-element=".page-header" data-leave-class="page-header">
            <div class="color-box color-box-dark-blue color-tooltip" data-toggle="tooltip" data-placement="top" title="Dark Blue" data-replace-with="page-header-dark-blue"></div>
            <div class="color-box color-box-red active color-tooltip" data-toggle="tooltip" data-placement="top" title="Red" data-replace-with="page-header-red"></div>
            <div class="color-box color-box-green color-tooltip" data-toggle="tooltip" data-placement="top" title="Green" data-replace-with="page-header-green"></div>
            <div class="color-box color-box-green-sea color-tooltip" data-toggle="tooltip" data-placement="top" title="Green Sea" data-replace-with="page-header-green-sea"></div>
            <div class="color-box color-box-orange color-tooltip" data-toggle="tooltip" data-placement="top" title="Emerald" data-replace-with="page-header-orange"></div>
            <div class="color-box color-box-blue color-tooltip" data-toggle="tooltip" data-placement="top" title="Blue" data-replace-with="page-header-blue"></div>
        </div>
        <h3>Active Menu</h3>
        <div class="color-settings-w" data-replace-element=".side-menu" data-leave-class="side-menu">
            <div class="color-box color-box-dark-blue color-tooltip" data-toggle="tooltip" data-placement="top" title="Dark Blue" data-replace-with="side-menu-dark-blue"></div>
            <div class="color-box color-box-red active color-tooltip" data-toggle="tooltip" data-placement="top" title="Red (Default)" data-replace-with="side-menu-red"></div>
            <div class="color-box color-box-green color-tooltip" data-toggle="tooltip" data-placement="top" title="Green" data-replace-with="side-menu-green"></div>
            <div class="color-box color-box-green-sea color-tooltip" data-toggle="tooltip" data-placement="top" title="Green Sea" data-replace-with="side-menu-green-sea"></div>
            <div class="color-box color-box-orange color-tooltip" data-toggle="tooltip" data-placement="top" title="Orange" data-replace-with="side-menu-orange"></div>
            <div class="color-box color-box-blue color-tooltip" data-toggle="tooltip" data-placement="top" title="Blue" data-replace-with="side-menu-blue"></div>
        </div>
        <h3>Content</h3>
        <div class="color-settings-w" data-replace-element=".content-inner" data-leave-class="content-inner">
            <div class="color-box color-box-white color-tooltip" data-toggle="tooltip" data-placement="top" title="White" data-replace-with="content-inner-white"></div>
            <div class="color-box color-box-grey color-tooltip" data-toggle="tooltip" data-placement="top" title="Grey" data-replace-with="content-inner-grey"></div>
            <div class="color-box color-box-beige active color-tooltip" data-toggle="tooltip" data-placement="top" title="Beige" data-replace-with="content-inner-beige"></div>
        </div>
        <div class="toggle-color-settings">
            <i class="icon-cog"></i>
            <span>hide</span>
        </div>
    </div>
</div>
<%@include file="include/footer.jsp" %>
</body>

</html>