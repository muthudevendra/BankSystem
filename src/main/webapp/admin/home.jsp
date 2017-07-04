<%--
  Created by IntelliJ IDEA.
  User: lakshithar
  Date: 6/21/2017
  Time: 12:17 PM
  To change this template use File | Settings | File Templates.
--%>
<meta name="_csrf" content="${_csrf.token}"/>
<meta name="_csrf_header" content="${_csrf.headerName}"/>
<script type="text/javascript" src="/admin/script/admin.js"></script>

<div class="main">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="#">Admin</a></li>
            <li class="active">Dashboard</li>
        </ul>

        <div class="content-page col-md-10">
            <div>
                <legend>Admin Dashboard</legend>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="col-md-6">
                        <canvas id="doughnutChart" width="400" height="400"></canvas>
                    </div>
                    <div class="col-md-6">
                        <canvas id="#" width="400" height="400"></canvas>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
