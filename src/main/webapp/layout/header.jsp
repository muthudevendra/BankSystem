<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: lakshithar
  Date: 6/5/2017
  Time: 8:32 AM
  To change this template use File | Settings | File Templates.
--%>
<div class="pre-header">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-sm-6 additional-shop-info">
                <ul class="list-unstyled list-inline">
                    <sec:authorize access="isAuthenticated()">
                        <li>Login As</li>
                        <li><label><sec:authentication property="name"/></label></li>
                    </sec:authorize>
                </ul>
            </div>
            <div class="col-md-6 col-sm-6 additional-nav">
                <ul class="list-unstyled list-inline pull-right">
                    <sec:authorize access="!isAuthenticated()">
                        <li><a href="/login">Log In</a></li>
                    </sec:authorize>
                    <sec:authorize access="isAuthenticated()">
                        <sec:authorize
                                access="hasAuthority('ebank@ebank_VIEW')">
                            <li><a href="/ebank">E-Bank</a></li>
                        </sec:authorize>
                        <sec:authorize
                                access="hasAuthority('admin@admin_VIEW')">
                            <li><a href="/admin">Admin</a></li>
                        </sec:authorize>
                        <li><a href="/logout">Logout</a></li>
                    </sec:authorize>
                </ul>
            </div>
        </div>
    </div>
</div>