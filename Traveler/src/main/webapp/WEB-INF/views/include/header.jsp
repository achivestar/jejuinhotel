<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>        
 <div class="container-fluid bg-dark py-1" style="border-bottom:1px solid #fff">
        <div class="container">
            <div class="row">
               
                <div class="col-md-12 text-center text-lg-right">
                    <div class="d-inline-flex align-items-center">
                        <a class="text-cust px-3" href="#none" >
                            <i class="fab fa-facebook-f"></i>
                        </a>
                        <!-- <a class="text-white px-3" href="">
                            <i class="fab fa-twitter"></i>
                        </a> -->
                    <!--     <a class="text-white px-3" href="">
                            <i class="fab fa-linkedin-in"></i>
                        </a> -->
                        <a class="text-cust px-3" href="#none" >
                            <i class="fab fa-instagram"></i>
                        </a>
                        
                        <a class="text-cust pl-3" href="/location">
                            <i class="fa fa-map-marker-alt mr-2"></i>
                        </a> 
                    </div>
                </div>
            </div>
        </div>
    </div> 
 

    <div class="container-fluid position-relative nav-bar p-0" style="border-bottom:1px solid #fff">
        <div class="container position-relative" style="z-index: 9;">
            <nav class="navbar navbar-expand-lg bg-secondary navbar-dark py-3 py-lg-0 pl-3 pl-lg-5">
                <a href="/" class="navbar-brand">
                    <h1 class="m-0 display-5 text-white"><span>JEJU IN </span> <span style="color:#ffe603">HOTEL</span></h1>
                </a>
                <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-between px-3" id="navbarCollapse">
                    <div class="navbar-nav ml-auto py-0">
                        <a href="/" class="nav-item nav-link <c:if test="${url eq 'index'}">active</c:if>">홈</a>
                        <a href="./about" class="nav-item nav-link <c:if test="${url eq 'about'}">active</c:if>">소개</a>
                        <a href="./room" class="nav-item nav-link <c:if test="${url eq 'room'}">active</c:if>">객실</a>
                        <a href="./food" class="nav-item nav-link <c:if test="${url eq 'food'}">active</c:if>">음식</a>
                        <a href="./activity" class="nav-item nav-link <c:if test="${url eq 'activity'}">active</c:if>">액티비티</a>
                         <a href="./etc" class="nav-item nav-link <c:if test="${url eq 'etc'}">active</c:if>">부대시설</a>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle <c:if test="${url eq 'news'}">active</c:if>  <c:if test="${url eq 'faq'}">active</c:if>" data-toggle="dropdown">커뮤니티</a>
                            <div class="dropdown-menu rounded-0 m-0">
                                <a href="./news" class="dropdown-item">소식</a>
                                <a href="./faq" class="dropdown-item">자주묻는질문</a>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </nav>
        </div>
    </div>