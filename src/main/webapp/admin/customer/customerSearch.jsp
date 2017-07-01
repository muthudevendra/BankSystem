<%--
  Created by IntelliJ IDEA.
  User: Lakshitha
  Date: 24-Jun-17
  Time: 5:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="/layout/include.jsp" %>
<script type="text/javascript" src="/admin/script/customerSearch.js"></script>
<div class="main">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="#">Admin</a></li>
            <li class="active">Search Customer</li>
        </ul>

        <div class="content-page col-md-10">
            <div>
                <legend>Registered Customers</legend>
            </div>
            <form action="/admin/customer/customerSearch/searchCustomers" method="post" role="form">
                <div class="panel panel-default col-md-offset-2">
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="input-group">
                                            <label class="control-label" for="nic">NIC</label>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="input-group">
                                            <input name="nic" value="${nic}"
                                                   type="text" class="form-control" id="nic">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="input-group">
                                            <label class="control-label" for="passportNo">Passport No</label>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="input-group">
                                            <input name="passportNo"
                                                   value="${passportNo}"
                                                   type="text" class="form-control" id="passportNo">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="input-group">
                                            <label class="control-label" for="lastName">Last Name</label>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="input-group">
                                            <input name="lastName" value="${lastName}"
                                                   type="text" class="form-control" id="lastName">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                            <div class="col-md-1 col-md-offset-5">
                                <span class="input-group-btn">
                                    <button class="btn btn-success" type="submit"><i class="fa fa-search"></i></button>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            </form>

            <div class="col-md-12">
                <table class="table datatable table-responsive">
                    <thead>
                    <tr>
                        <th>NIC</th>
                        <th>Passport No</th>
                        <th>Full Name</th>
                        <th>Gender</th>
                        <th>Address</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${customerList}" var="customer">
                        <tr onclick="load_customer(${customer.customerId})">
                            <td>${customer.nic}</td>
                            <td>${customer.passportNo}</td>
                            <td>${customer.fullName}</td>
                            <td>${customer.gender}</td>
                            <td>${customer.addressBook.addressLine1}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>