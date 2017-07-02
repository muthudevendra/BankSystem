<%--
  Created by IntelliJ IDEA.
  User: Lakshitha
  Date: 24-Jun-17
  Time: 2:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="/layout/include.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/script/customerManagement.js"></script>
<div class="main">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="#">Admin</a></li>
            <li class="active">New Cutsomer</li>
        </ul>

        <div class="content-page col-md-10">
            <div>
                <legend>Customer Details</legend>
            </div>

            <form role="form" action="/admin/customer/customerManagement/saveCustomer" id="customerForm" method="post">
                <input type="hidden" name="customerId" id="customerId" value="${customer.customerId eq null ? '' : customer.customerId}">
                <input type="hidden" name="addressBook.addressBookId" id="addressBookId" value="${customer.addressBook.addressBookId}">
                <input type="hidden" name="addressBook.status" id="addressBookStatus" value="${customer.addressBook.status}">
                <input type="hidden" value="${message}" id="message"/>
                <input type="hidden" value="${status}" id="status" />
                <div class="row form-group">
                    <div class="col-lg-3 col-md-offset-1">
                        <label for="nic">NIC Number<span class="require">*</span></label>
                    </div>
                    <div class="col-lg-3">
                        <input required type="text" name="nic" value="${customer.nic}" class="form-control" id="nic">
                    </div>
                    <div class="col-lg-2">
                        <label for="nicIssueDate">Issue Date</label>
                    </div>
                    <div class="col-lg-3">
                        <input type="text" name="nicIssueDate"
                        value="<fmt:formatDate value="${customer.nicIssueDate}" pattern="yyyy-MM-dd"/>"
                               class="form-control datepicker" id="nicIssueDate">
                    </div>
                </div>

                <div class="row form-group">
                    <div class="col-lg-3 col-md-offset-1">
                        <label for="passportNumber">Passport Number</label>
                    </div>
                    <div class="col-lg-3">
                        <input type="text" name="passportNo" value="${customer.passportNo}" class="form-control"
                               id="passportNumber">
                    </div>
                </div>
                <hr style="width:75%"/>

                <div class="row form-group">
                    <div class="col-lg-3 col-md-offset-1">
                        <label for="fullName">Full Name<span class="require">*</span></label>
                    </div>
                    <div class="col-lg-8">
                        <input required type="text" name="fullName" value="${customer.fullName}" class="form-control"
                               id="fullName">
                    </div>
                </div>

                <div class="row form-group">
                    <div class="col-lg-3 col-md-offset-1">
                        <label for="firstName">First Name<span class="require">*</span></label>
                    </div>
                    <div class="col-lg-3">
                        <input required type="text" name="firstName" value="${customer.firstName}" class="form-control"
                               id="firstName">
                    </div>
                    <div class="col-lg-2">
                        <label for="middleName">Middle Name</label>
                    </div>
                    <div class="col-lg-3">
                        <input type="text" name="middleName" value="${customer.middleName}" class="form-control"
                               id="middleName">
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-lg-3 col-md-offset-1">
                        <label for="lastName">Last Name<span class="require">*</span></label>
                    </div>
                    <div class="col-lg-3">
                        <input required type="text" name="lastName" value="${customer.lastName}" class="form-control"
                               id="lastName">
                    </div>
                </div>
                <hr style="width:75%"/>
                <div class="row form-group">
                    <div class="col-lg-3 col-md-offset-1">
                        <label for="birthday">Birth Day<span class="require">*</span></label>
                    </div>
                    <div class="col-lg-3">
                        <input required type="text" name="dateOfBirth"
                        value="<fmt:formatDate value="${customer.dateOfBirth}" pattern="yyyy-MM-dd"/>"
                               class="form-control datepicker" id="birthday">
                    </div>
                    <div class="col-lg-2">
                        <label>Gender<span class="require">*</span></label>
                    </div>
                    <div class="col-lg-3">
                        <select required name="gender" class="form-control" id="gender">
                            <c:forEach items="${genderList}" var="gender">
                                <option ${gender.genderSeq eq customer.gender ? 'selected' : ''} value="${gender.genderSeq}">
                                        ${gender.gender}
                                </option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-lg-3 col-md-offset-1">
                        <label for="email">E-mail Address</label>
                    </div>
                    <div class="col-lg-8">
                        <input type="text" name="addressBook.email" value="${customer.addressBook.email}"
                               class="form-control" id="email">
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-lg-3 col-md-offset-1">
                        <label for="addressLine1">Address Line1<span class="require">*</span></label>
                    </div>
                    <div class="col-lg-3">
                        <input required type="text" name="addressBook.addressLine1" value="${customer.addressBook.addressLine1}"
                               class="form-control" id="addressLine1">
                    </div>
                    <div class="col-lg-2">
                        <label for="city">City<span class="require">*</span></label>
                    </div>
                    <div class="col-lg-3">
                        <input required type="text" name="addressBook.city" value="${customer.addressBook.city}"
                               class="form-control" id="city">
                    </div>

                </div>

                <div class="row form-group">
                    <div class="col-lg-3 col-md-offset-1">
                        <label for="addressLine2">Address Line2</label>
                    </div>
                    <div class="col-lg-3">
                        <input type="text" name="addressBook.addressLine2" value="${customer.addressBook.addressLine2}"
                               class="form-control" id="addressLine2">
                    </div>
                    <div class="col-lg-2">
                        <label for="country">Country<span class="require">*</span></label>
                    </div>
                    <div class="col-lg-3">
                        <input required type="text" name="addressBook.country" value="${customer.addressBook.country}"
                               class="form-control" id="country">
                    </div>
                </div>

                <div class="row form-group">
                    <div class="col-lg-3 col-md-offset-1">
                        <label for="homeContact">Home Contact<span class="require">*</span></label>
                    </div>
                    <div class="col-lg-3">
                        <input required type="text" name="addressBook.telephone" value="${customer.addressBook.telephone}"
                               class="form-control" id="homeContact">
                    </div>
                    <div class="col-lg-2">
                        <label for="mobile">Mobile</label>
                    </div>
                    <div class="col-lg-3">
                        <input type="text" name="addressBook.mobile" value="${customer.addressBook.mobile}"
                               class="form-control" id="mobile">
                    </div>
                </div>
                <hr style="width:75%"/>
                <div class="row form-group">
                    <div class="col-lg-3 col-md-offset-1">
                        <label for="occupation">Occupation</label>
                    </div>
                    <div class="col-lg-3">
                        <input type="text" name="occupation" value="${customer.occupation}" class="form-control"
                               id="occupation">
                    </div>
                    <div class="col-md-2">
                        <label for="income">Monthly Income (Rs)</label>
                    </div>
                    <div class="col-lg-3">
                        <input type="text" name="monthlyIncome" value="${customer.monthlyIncome}" class="form-control"
                               id="income">
                    </div>
                </div>
                <div class="row form-group">
                    <div class="updateOperation" style="display: none">
                        <div class="col-lg-3 col-md-offset-1">
                            <label for="status">Status</label>
                        </div>
                        <div class="col-lg-3">
                            <select name="status" class="form-control" id="masterDataStatus">
                                <c:forEach items="${statusList}" var="status">
                                    <option ${status.statusSeq eq customer.status ? 'selected' : ''} value="${status.statusSeq}">
                                            ${status.status}
                                    </option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-2 col-md-offset-2">
                        <label for="tax">Pay Tax</label>
                    </div>
                    <div class="col-lg-offset-0">
                        <input ${customer.incomeTaxPayStatus eq 1 ? 'checked' : ''} value="1" type="checkbox" name="incomeTaxPayStatus" id="tax">
                    </div>
                </div>
                <br/>
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <div class="row form-group updateOperation" style="display: none">
                    <hr/>
                    <div class="col-md-5">
                        <div class="row">
                            <div class="col-md-5">
                                <label for="modifiedBy">Last Modified By</label>
                            </div>
                            <div class="col-md-7">
                                <label id="modifiedBy">${customer.lastModifiedBy}</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-5">
                                <label for="modifiedDate">Last Modified Date</label>
                            </div>
                            <div class="col-md-7">
                                <label id="modifiedDate"><fmt:formatDate value="${customer.lastModifiedDate}"
                                                                         pattern="dd-MM-yyyy HH:mm:ss"/></label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-5">
                                <label for="createdBy">Created By</label>
                            </div>
                            <div class="col-md-7">
                                <label id="createdBy">${customer.createdBy}</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-5">
                                <label for="createdDate">Created Date</label>
                            </div>
                            <div class="col-md-7">
                                <label id="createdDate"><fmt:formatDate value="${customer.createdDate}"
                                                                        pattern="dd-MM-yyyy HH:mm:ss"/></label>
                            </div>
                        </div>
                    </div>
                </div>
                <br/>

                <div class="row">
                    <div class="pull-right createOperation">
                        <button onclick="form_validate('customerForm')" type="submit" class="btn btn-success"
                                <sec:authorize
                                        access="!hasAuthority('admin@customerManagement_CREATE')">
                                    disabled="disabled"
                                </sec:authorize>>Save</button>
                    </div>
                    <div class="pull-right updateOperation" style="display: none">
                        <button type="submit" class="btn btn-success"
                                <sec:authorize
                                        access="!hasAuthority('admin@customerManagement_UPDATE')">
                                    disabled="disabled"
                                </sec:authorize>>Update</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>