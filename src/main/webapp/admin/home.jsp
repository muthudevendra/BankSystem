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
                <legend>Admin Dashboard
                    <a href="#"><span class="fail-button">Failed logins</span></a>
                </legend>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="col-md-4">
                        <div class="tile-box bg-purple">
                            <div class="tile-header">
                                Active Customer Count
                            </div>
                            <div class="tile-content-wrapper">
                                <i class="glyph-icon fa fa-users" aria-hidden="true"></i>
                                <div id="activeCustomers" class="tile-content"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="tile-box bg-red">
                            <div class="tile-header">
                                Active Customer Accounts
                            </div>
                            <div class="tile-content-wrapper">
                                <i class="glyph-icon fa fa-suitcase" aria-hidden="true"></i>
                                <div id="activeAccount" class="tile-content"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="tile-box bg-blue">
                            <div class="tile-header">
                                Today's Transfer upto now
                            </div>
                            <div class="tile-content-wrapper">
                                <i class="glyph-icon fa fa-money" aria-hidden="true"></i>
                                <div id="transfreCount" class="tile-content"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="col-md-6">
                        <canvas id="doughnutChart" width="400" height="400"></canvas>
                    </div>
                    <div class="col-md-6">
                        <canvas id="doughnutTransferChart" width="400" height="400"></canvas>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
