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


    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    @javascript html5shiv respond.min
    <![endif]-->

    <title>Office Task Management</title>

</head>

<body>



<div class="all-wrapper">
    <div class="row">
        <div class="col-md-3">
            <div class="text-center">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <div class="side-bar-wrapper collapse navbar-collapse navbar-ex1-collapse">
                <a href="#" class="logo hidden-sm hidden-xs">
                    <i class="icon-cloud-download"></i>
                    <span>Office Manager</span>
                </a>

                <div class="search-box">
                    <input type="text" placeholder="SEARCH" class="form-control">
                </div>
                <ul class="side-menu">
                    <li>
                        <a href="notifications.html">
                            <span class="badge badge-notifications pull-right alert-animated">5</span>
                            <i class="icon-flag"></i> Notifications
                        </a>
                    </li>
                </ul>
                <div class="relative-w">
                    <ul class="side-menu" >
                        <li id="dashboard">
                            <a class='current' href="/">
                                <span class="badge pull-right">17</span>
                                <i class="icon-dashboard"></i> Dashboard
                            </a>
                        </li>
                        <c:if test="${sessionScope.user.tblroleusersById[0].tblroleByRole.role=='Manager'}">
                        <li id="user">
                            <a href="/user/all">
                                <span class="badge pull-right"></span>
                                <i class="icon-male"></i> Manage User
                            </a>
                        </li>
                        <li id="task">
                            <a href="/task/all">
                                <span class="badge pull-right">12</span>
                                <i class="icon-bar-chart"></i> Manage Task
                            </a>
                        </li>
                        <li id="document">
                            <a href="/document">
                                <span class="badge pull-right"></span>
                                <i class="icon-book"></i> Manage Document
                            </a>
                        </li>
                        </c:if>
                        <c:if test="${sessionScope.user.tblroleusersById[0].tblroleByRole.role!='Manager'}">
                            <li id="task">
                                <a href="/task/all">
                                    <span class="badge pull-right">12</span>
                                    <i class="icon-bar-chart"></i> View Task
                                </a>
                            </li>
                            <li id="document">
                                <a href="/document">
                                    <span class="badge pull-right"></span>
                                    <i class="icon-book"></i> View Document
                                </a>
                            </li>
                        </c:if>
                        <li id="calendar">
                            <a href="/calendar">
                                <span class="badge pull-right">11</span>
                                <i class="icon-calendar"></i> Calendar
                            </a>
                        </li>
                        <li>
                            <a href="/logout">
                                <span class="badge pull-right"></span>
                                <i class="icon-signin"></i> Logout
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="col-md-9">

            <div class="content-wrapper wood-wrapper">
                <div class="content-inner">
                    <div class="page-header">
                        <div class="header-links hidden-xs">
                            <a href="notifications.html"><i class="icon-comments"></i> User Alerts</a>
                            <a href="#"><i class="icon-cog"></i> Settings</a>
                            <a href="#"><i class="icon-signout"></i> Logout</a>
                        </div>
                        <h1><i class="icon-bar-chart"></i> Dashboard</h1>
                    </div>
                    <ol class="breadcrumb">
                        <li><a href="#">Home</a></li>
                        <li><a href="#">Bread</a></li>
                        <li><a href="#">Crumbs</a></li>
                        <li class="active">Example</li>
                    </ol>