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
                <div class="row">
                    <div class="col-lg-offset-1">
                        <div class="row">
                            <div class="col-lg-1">
                                <div class="input-group">
                                    <label class="control-label" for="nic">NIC</label>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="input-group">
                                    <input name="nic" value="${nic}"
                                           type="text" class="form-control" id="nic">
                                </div>
                            </div>
                            <div class="col-lg-1">
                                <div class="input-group">
                                    <label class="control-label" for="passportNo">Passport No</label>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="input-group">
                                    <input name="passportNo"
                                           value="${passportNo}"
                                           type="text" class="form-control" id="passportNo">
                                </div>
                            </div>
                            <div class="col-lg-1">
                                <div class="input-group">
                                    <label class="control-label" for="lastName">Last Name</label>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="input-group">
                                    <input name="lastName" value="${lastName}"
                                           type="text" class="form-control" id="lastName">
                                </div>
                            </div>
                        </div>
                    </div>
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    <span class="input-group-btn pull-right">
                        <button class="btn btn-success" type="submit"><i class="fa fa-search"></i></button>
                    </span>
                </div>
            </form>
            <div class="btn-group pull-right">
                <button class="btn btn-danger dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bars"></i>
                    Export Data
                </button>
                <ul class="dropdown-menu">
                    <li class="divider"></li>
                    <li><a href="#" onClick="$('#customerData').tableExport({type:'excel',escape:'false'});"><img
                            src='${pageContext.request.contextPath}/layout/assets/corporate/img/icons/xls.png' width="24"/> XLS</a></li>
                    <li><a href="#" onClick="$('#customerData').tableExport({type:'doc',escape:'false'});"><img
                            src='${pageContext.request.contextPath}/layout/assets/corporate/img/icons/word.png' width="24"/> Word</a></li>
                    <li><a href="#" onClick="$('#customerData').tableExport({type:'pdf',escape:'false'});"><img
                            src='${pageContext.request.contextPath}/layout/assets/corporate/img/icons/pdf.png' width="24"/> PDF</a></li>
                </ul>
            </div>
            <div class="col-md-12">
                <table id="customerData" class="table datatable table-striped table-hover table-responsive">
                    <thead>
                    <tr>
                        <th>NIC</th>
                        <th>Passport No</th>
                        <th>Full Name</th>
                        <th>Gender</th>
                        <th>Address</th>
                        <th>Created User</th>
                        <th>Created Date</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${customerList}" var="customer">
                        <tr onclick="load_customer(${customer.customerId})">
                            <td>${customer.nic}</td>
                            <td>${customer.passportNo}</td>
                            <td>${customer.fullName}</td>
                            <td>${customer.genderDescription}</td>
                            <td>${customer.addressBook.addressLine1}</td>
                            <td>${customer.createdBy}</td>
                            <td><fmt:formatDate value="${customer.createdDate}" pattern="dd-MM-yyyy HH:ss"/></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>