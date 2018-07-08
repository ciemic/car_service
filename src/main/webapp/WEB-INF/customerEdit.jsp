<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <c:import url="fragments/front.jsp"/>
    <title>Title</title>
</head>
<body>
<c:import url="fragments/header.jsp"/>

<div class="card" style="margin-left: 5%; margin-right: 5%">
    <div class="card-header">
        Employee #Id ${customer.id}
    </div>
    <div class="card-body">
        <h5 class="card-title">Customer details</h5>
        <p class="card-text">
        <table class="table" style="width: 90%; margin-right: 5%; margin-left: 5%">
            <tbody>
            <form method="post" action="/customeredit">
                <input type="hidden" name="id" value="${customer.id}" />
            <tr><td style="width: 30%">Name:</td><td style="width: 70%"> <input type="text" value="${customer.name}" name="name"/></td></tr>
            <tr><td style="width: 30%">Surname:</td><td style="width: 70%"><input type="text" value="${customer.surname}" name="surname"/></td></tr>
            <tr><td style="width: 30%">Address:</td><td style="width: 70%"><input type="text" value="${customer.address}" name="address"/></td></tr>
            <tr><td style="width: 30%">Phone:</td><td style="width: 70%"><input type="text" value="${customer.phone}" name="phone"/></td></tr>
            <tr><td style="width: 30%">Email:</td><td style="width: 70%"><input type="text" value="${customer.email}" name="email"/></td></tr>
            <tr><td style="width: 30%">Birth date:</td><td style="width: 70%"><input type="date" value="${customer.birthDate}" name="birthDate"/></tr>
            <tr><td style="width: 30%"> <input type="submit" value="save"></td></tr>
            </form>

            </tbody>
        </table>


        </p>
        <button onclick="goBack()" class="btn btn-primary">Previous page</button>
    </div>
</div>

<c:import url="fragments/footer.jsp"/>
</body>
</html>
