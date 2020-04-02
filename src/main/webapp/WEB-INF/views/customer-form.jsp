<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Thông tin khách hàng</title>
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
 rel="stylesheet">
<script src="<c:url value="/resources/js/jquery-1.11.1.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
</head>
<body>
<div class="container">
  <div class="col-md-offset-2 col-md-7">
   <h3 class="text-center">Spring MVC 5 + Spring Data JPA 2 + JSP + MySQL
    Example - Quản lý khách hàng</h3>
   <div class="panel panel-info">
    <div class="panel-heading">
     <div class="panel-title">Thêm mới</div>
    </div>
    <div class="panel-body">
     <form:form action="saveCustomer" cssClass="form-horizontal"
      method="post" modelAttribute="customer">

      <!-- need to associate this data with customer id -->
      <form:hidden path="id" />

      <div class="form-group">
       <label for="firstname" class="col-md-3 control-label">Họ</label>
       <div class="col-md-9">
        <form:input path="firstName" cssClass="form-control" />
       </div>
      </div>
      <div class="form-group">
       <label for="lastname" class="col-md-3 control-label">Tên</label>
       <div class="col-md-9">
        <form:input path="lastName" cssClass="form-control" />
       </div>
      </div>

      <div class="form-group">
       <label for="email" class="col-md-3 control-label">Email</label>
       <div class="col-md-9">
        <form:input path="email" cssClass="form-control" />
       </div>
      </div>

      <div class="form-group">
       <!-- Button -->
       <div class="col-md-offset-3 col-md-9">        
        <button type="submit" class="btn btn-primary">Lưu</button>
       </div>
      </div>

     </form:form>
    </div>
   </div>
  </div>
 </div>
</body>
</html>