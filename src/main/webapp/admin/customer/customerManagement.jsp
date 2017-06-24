<%--
  Created by IntelliJ IDEA.
  User: Lakshitha
  Date: 24-Jun-17
  Time: 2:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="/layout/include.jsp"%>
<script type="text/javascript" src="../script/customerManagement.js"></script>
<div class="main">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="#">Admin</a></li>
            <li class="active">New Cutsomer</li>
        </ul>

        <div class="col-lg-8 col-lg-offset-1">
            <div>
                <legend>Customer Details</legend>
            </div>
        </div>

        <div class="content-page col-md-9">
            <form role="form" action="customerManagement/saveCustomer" method="post">
                <div class="row form-group">
                    <div class="col-lg-2 col-md-offset-2">
                        <label for="nic">NIC Number</label>
                    </div>
                    <div class="col-lg-3">
                        <input type="text" name="nic" value="${customer.nic}" class="form-control" id="nic">
                    </div>
                    <div class="col-lg-2">
                        <label for="nicIssueDate">Issue Date</label>
                    </div>
                    <div class="col-lg-3">
                        <input type="text" name="nicIssueDate"
                        <fmt:formatDate value="${customer.nicIssueDate}" pattern="yyyy-MM-dd" />
                               class="form-control datepicker" id="nicIssueDate">
                    </div>
                </div>

                <div class="row form-group">
                    <div class="col-lg-2 col-md-offset-2">
                        <label for="passportNumber">Passport Number</label>
                    </div>
                    <div class="col-lg-3">
                        <input type="text" name="passportNo" value="${customer.passportNo}" class="form-control" id="passportNumber">
                    </div>
                </div>
                <hr style="width:75%"/>

                <div class="row form-group">
                    <div class="col-lg-2 col-md-offset-2">
                        <label for="fullName">Full Name</label>
                    </div>
                    <div class="col-lg-8">
                        <input type="text" name="fullName" value="${customer.fullName}" class="form-control" id="fullName">
                    </div>
                </div>

                <div class="row form-group">
                    <div class="col-lg-2 col-md-offset-2">
                        <label for="firstName">First Name</label>
                    </div>
                    <div class="col-lg-3">
                        <input type="text" name="firstName" value="${customer.firstName}" class="form-control" id="firstName">
                    </div>
                    <div class="col-lg-2">
                        <label for="middleName">Middle Name</label>
                    </div>
                    <div class="col-lg-3">
                        <input type="text" name="middleName" value="${customer.middleName}" class="form-control" id="middleName">
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-lg-2 col-md-offset-2">
                        <label for="lastName">Last Name</label>
                    </div>
                    <div class="col-lg-3">
                        <input type="text" name="lastName" value="${customer.lastName}" class="form-control" id="lastName">
                    </div>
                </div>
                <hr style="width:75%"/>
                <div class="row form-group">
                    <div class="col-lg-2 col-md-offset-2">
                        <label for="birthday">Birth Day</label>
                    </div>
                    <div class="col-lg-3">
                        <input type="text" name="dateOfBirth" <fmt:formatDate value="${customer.dateOfBirth}" pattern="yyyy-MM-dd"/> class="form-control" id="birthday">
                    </div>
                    <div class="col-lg-2">
                        <label>Gender</label>
                    </div>
                    <div class="col-lg-3">
                        <div class="radio radio-info radio-inline">
                            <input type="radio" id="female" value="1" name="gender" checked="">
                            <label for="female">Female</label>
                        </div>
                        <div class="radio radio-info radio-inline">
                            <input type="radio" id="male" value="0" name="gender">
                            <label for="male">Male </label>
                        </div>
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-lg-2 col-md-offset-2">
                        <label for="email">E-mail Address</label>
                    </div>
                    <div class="col-lg-3">
                        <input type="text" name="addressBook.email" value="${customer.addressBook.email}" class="form-control" id="email">
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-lg-2 col-md-offset-2">
                        <label for="addressLine1">Address Line1</label>
                    </div>
                    <div class="col-lg-3">
                        <input type="text" name="addressBook.addressLine1" value="${customer.addressBook.addressLine1}" class="form-control" id="addressLine1">
                    </div>
                    <div class="col-lg-2">
                        <label for="city">City</label>
                    </div>
                    <div class="col-lg-3">
                        <input type="text" name="addressBook.city" value="${customer.addressBook.city}" class="form-control" id="city">
                    </div>

                </div>

                <div class="row form-group">
                    <div class="col-lg-2 col-md-offset-2">
                        <label for="addressLine2">Address Line2</label>
                    </div>
                    <div class="col-lg-3">
                        <input type="text" name="addressBook.addressLine2" value="${customer.addressBook.addressLine2}" class="form-control" id="addressLine2">
                    </div>
                    <div class="col-lg-2">
                        <label for="country">Country</label>
                    </div>
                    <div class="col-lg-3">
                        <input type="text" name="addressBook.country" value="${customer.addressBook.country}" class="form-control" id="country">
                    </div>
                </div>

                <div class="row form-group">
                    <div class="col-lg-2 col-md-offset-2">
                        <label for="homeContact">Home Contact</label>
                    </div>
                    <div class="col-lg-3">
                        <input type="text" name="addressBook.telephone" value="${customer.addressBook.telephone}" class="form-control" id="homeContact">
                    </div>
                    <div class="col-lg-2">
                        <label for="mobile">Mobile</label>
                    </div>
                    <div class="col-lg-3">
                        <input type="text" name="addressBook.mobile" value="${customer.addressBook.mobile}" class="form-control" id="mobile">
                    </div>
                </div>
                <hr style="width:75%"/>
                <div class="row form-group">
                    <div class="col-lg-2 col-md-offset-2">
                        <label for="occupation">Occupation</label>
                    </div>
                    <div class="col-lg-3">
                        <input type="text" name="occupation" value="${customer.occupation}" class="form-control" id="occupation">
                    </div>
                    <div class="col-md-2">
                        <label for="income">Monthly Income (Rs)</label>
                    </div>
                    <div class="col-lg-3">
                        <input type="text" name="monthlyIncome" value="${customer.monthlyIncome}" class="form-control" id="income">
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-md-2 col-md-offset-9">
                        <label for="tax">Pay Tax</label>
                    </div>
                    <div class="col-lg-offset-0">
                        <input type="checkbox" name="tax" id="tax">
                    </div>
                </div>
                <br/>
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                <button type="submit" class="btn btn-success col-md-offset-10">Submit</button>
            </form>
        </div>
    </div>
</div>