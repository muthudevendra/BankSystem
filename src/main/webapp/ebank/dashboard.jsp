<%--
  Created by IntelliJ IDEA.
  User: Muthu Devendra
  Date: 6/26/2017
  Time: 6:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/ebank/script/dashboard.js"></script>
<div class="main">
    <div class="container">
        <div class="row service-box margin-bottom-40">
            <div class="col-md-4 col-sm-4">
                <div class="list-group">
                    <div class="service-box-heading">
                    <a href="#" class="list-group-item list-group-item-info">
                        <em><i class="fa fa-book blue"></i></em>
                        <span>Recent Transactions</span>
                    </a>
                    </div>
                    <a href="#" class="list-group-item">Dapibus ac facilisis in</a>
                </div>
            </div>
            <div class="col-md-4 col-sm-4">
                <div id="calendar"></div>
            </div>
            <div class="col-md-4 col-sm-4">
                <div class="list-group">
                    <div class="service-box-heading">
                        <a href="#" class="list-group-item list-group-item-success">
                            <em><i class="fa fa-user-secret red"></i></em>
                            <span>Recent Payments</span>
                        </a>
                    </div>
                    <a href="#" class="list-group-item">Dapibus ac facilisis in</a>
                </div>
            </div>
        </div>
    </div>
</div>