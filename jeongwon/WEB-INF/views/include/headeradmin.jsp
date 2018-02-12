<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>관리자 페이지</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- Bootstrap 3.3.4 -->
    <link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- Font Awesome Icons -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Ionicons -->
    <link href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet" type="text/css" />
    <!-- Theme style -->
    <link href="/resources/bootstrap/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
    <!-- AdminLTE Skins. Choose a skin from the css/skins 
         folder instead of downloading all of them to reduce the load. -->
    <link href="/resources/bootstrap/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css" />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <!-- jQuery 2.1.4 -->
    <script src="/resources/bootstrap/plugins/jQuery/jQuery-2.1.4.min.js"></script>
    
     
     <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
  <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.js"></script> 
  <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
  <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.2/summernote.css" rel="stylesheet">
  <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.2/summernote.js"></script>
    
  </head>
      
  <body class="skin-blue-light sidebar-mini">
    <div class="wrapper">
      
      <header class="main-header">
        <!-- Logo -->
        <a href="/sboard/main" class="logo">
          <!-- mini logo for sidebar mini 50x50 pixels -->
          <span class="logo-mini"><b></b></span>
          <!-- logo for regular state and mobile devices -->
          <span class="logo-lg"><b>The Arc</b> </span>
        </a>
        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top" role="navigation">
          <!-- Sidebar toggle button-->
          <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          
        </nav>
      </header>
      <!-- Left side column. contains the logo and sidebar -->
      <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
          <!-- Sidebar user panel -->
          
          <!-- 현재작업  -->
          
         
             <div class="user-panel">  <!-- user패널좀 수정해야할듯  -->
            <div class="pull-left image">
              <img src="/resources/bootstrap/img/king.jpg" class="img-circle" alt="User Image" />
            </div>
            <div class="pull-left info">
              <p>&nbsp;&nbsp;관리자</p>

              <a href="/user/login"><i class="fa fa-circle text-admin" style="color:gold"></i> 관리자모드</a>
            </div>
          </div>
          
    
          
          
          
          <!-- search form -->
          <form action="http://www.google.com/search" method="get" class="sidebar-form">
            <div class="input-group">
              <input type="text" name="q" class="form-control" placeholder="Search..."/>
              <span class="input-group-btn">
                <button type='submit' name='search' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i></button>
              </span>
            </div>
          </form>
          <!-- /.search form -->
          <!-- sidebar menu: : style can be found in sidebar.less -->
          <ul class="sidebar-menu">
            <li class="header">Admin Link</li>
            
            <li class="treeview active">
                     <li class="treeview">
              <a href="/admin/userlist">
                <i class="fa fa-files-o"></i>
                <span>사용자 목록</span>
                <span class="label label-primary pull-right"></span>
              </a>
                 </li>
            
            
            <li class="treeview active">
              <li class="treeview">
              <a href="/admin/chartpage">
                <i class="fa fa-pie-chart"></i>
                <span>통계</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
             
            </li>
            
              <li class="treeview">
              <a href="/admin/superadmin/free">
                <i class="fa fa-edit"></i> <span>게시판관리</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              
            </li>
            
                          <li class="header" style="background-color:#ddf5f8;"></li>
                                        <li class="header" style="background-color:#ddf5f8;"></li>
                                        
            <li class="header">Dev Soon</li>
            
            
            
            
            
        
            
            
          <!--   <li class="treeview">
              <a href="#">
                <i class="fa fa-laptop"></i>
                <span>사용자권한</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
             
            </li>
           -->
            <li class="treeview">
              <a href="">
                <i class="fa fa-table"></i> <span>캘린더</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              
            </li>
            <li>
              <a href="#">
                <i class="fa fa-calendar"></i> <span>기타</span>
                <!-- <small class="label pull-right bg-red">3</small> -->
              </a>
            </li>
            <li>
              
            <li class="header" style="background-color:#ddf5f8;"></li>
            <li class="header" style="background-color:#ddf5f8;"></li>
            <li class="header" style="background-color:#ddf5f8;"></li>
            <li class="header" style="background-color:#ddf5f8;"></li>
            
             
           </ul>
        </section>
        <!-- /.sidebar -->
      </aside>

      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
        
        <c:if test="${sboardNum=='userlist'}">
       
          <h1>
         	   사용자명단
            <small>사용자 명단입니다.  </small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="#">사용자명단</a></li>
           <!--  <li class="active">기본</li> -->
          </ol>
          </c:if>
          
          <c:if test="${sboardNum=='chartpage'}">
       
          <h1>
         	   통계
            <small>방문자 통계입니다.  </small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="#">방문자통계</a></li>
           <!--  <li class="active">기본</li> -->
          </ol>
          </c:if>
          
          
         
        </section>