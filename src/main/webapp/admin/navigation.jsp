<%--
  Created by IntelliJ IDEA.
  User: lakshithar
  Date: 6/21/2017
  Time: 1:07 PM
  To change this template use File | Settings | File Templates.
--%>
<div class="main">
    <div class="col-sm-2">
        <div class="sidebar-nav">
            <div class="navbar navbar-default" role="navigation">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <span class="visible-xs navbar-brand">Sidebar menu</span>
                </div>
                <div class="navbar-collapse collapse sidebar-navbar-collapse">
                    <ul class="nav navbar-nav" id="sidenav">
                        <li>
                            <a href="#" data-toggle="collapse" data-target="#customer" data-parent="#sidenav01" class="collapsed">
                                Configuration <span class="caret pull-right"></span>
                            </a>
                            <div class="collapse" id="customer">
                                <ul class="nav nav-list">
                                    <li class="navUrl" id="moduleManagement"><a href="/admin/config/moduleManagement">Module</a></li>
                                    <li class="navUrl" id="authorityManagement" ><a href="/admin/customer/authorityManagement">Authority</a></li>
                                    <li class="navUrl" id="userType"><a href="/admin/config/userTypeManagement">User Type</a></li>
                                    <li class="navUrl" id="userTypeAuthority"><a href="/admin/config/userTypeAuthorityManagement">User Type Authority</a></li>
                                    <li class="navUrl" id="moduleSearch"><a href="/admin/config/moduleSearch">Module Search</a></li>
                                    <li class="navUrl" id="authoritySearch"><a href="/admin/config/authoritySearch">Authority Search</a></li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <a href="#" data-toggle="collapse" data-target="#config" data-parent="#sidenav" class="collapsed">
                                Customer<span class="caret pull-right"></span>
                            </a>
                            <div class="collapse" id="config">
                                <ul class="nav nav-list">
                                    <li class="navUrl" id="customerManagement"><a href="/admin/customer/customerManagement">New Customer</a></li>
                                    <li class="navUrl" id="customerSearch"><a href="/admin/customer/customerSearch">Search</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="navUrl"><a href="/admin/account/customerAccountManagement">Account</a></li>
                        <li class="navUrl"><a href="/admin/account/accountTypeManagement">Account Type</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
