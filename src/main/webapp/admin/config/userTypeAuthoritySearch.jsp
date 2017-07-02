<%--
  Created by IntelliJ IDEA.
  User: Muthu Devendra
  Date: 7/2/2017
  Time: 5:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="/layout/include.jsp" %>
<script type="text/javascript"
        src="${pageContext.request.contextPath}/admin/script/userTypeAuthoritySearch.js"></script>
<div class="main">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="#">Admin</a></li>
            <li class="active">Authority Search</li>
        </ul>
        <div class="content-page col-lg-10">
            <div>
                <legend>User Type Authority Search</legend>
            </div>
            <form action="/admin/config/userTypeAuthoritySearch/searchUserTypeAuthorities" method="post" role="form">
                <div class="row">
                    <div class="col-lg-offset-1">
                        <div class="row">
                            <div class="col-lg-2 col-lg-offset-3">
                                <div class="input-group">
                                    <label class="control-label" for="userType">User Type</label>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <select name="userTypeId" class="form-control" id="userType">
                                    <option></option>
                                    <c:forEach items="${userTypeList}" var="userType">
                                        <option ${userType.userTypeId eq userTypeAuthority.userTypeId ? 'selected' : ''}
                                                value="${userType.userTypeId}">
                                                ${userType.userType}</option>
                                    </c:forEach>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <span class="input-group-btn pull-right">
                        <button class="btn btn-success" type="submit"><i class="fa fa-search"></i></button>
                    </span>
            </form>
            <div class="col-md-12">
                <table class="table datatable table-striped table-hover table-responsive">
                    <thead>
                    <tr>
                        <th>User Type</th>
                        <th>Authority</th>
                        <th>Module</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${userTypeAuthorityList}" var="userTypeAuthority">
                        <tr onclick="load_user_type_authority(${userTypeAuthority.userTypeAuthorityId})">
                            <td>${userTypeAuthority.userType.userType}</td>
                            <td>${userTypeAuthority.authority.authorityName}</td>
                            <td>${userTypeAuthority.authority.module.moduleName}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
