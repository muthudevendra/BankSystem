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
                    <span class="visible-xs navbar-brand">Alpha Alliance PLC.</span>
                </div>
                <div class="navbar-collapse collapse sidebar-navbar-collapse">
                    <ul class="nav navbar-nav" id="sidenav">
                        <li class="navUrl"><a href="/admin">Home</a></li>
                        <li>
                            <a href="#" data-toggle="collapse" data-target="#module" data-parent="#sidenav01" class="collapsed">
                                <i class="fa fa-database" aria-hidden="true"></i>  Module <span class="caret pull-right"></span>
                            </a>
                            <div class="collapse" id="module">
                                <ul class="nav nav-list">
                                    <li class="navUrl" id="moduleManagement"><a href="/admin/config/moduleManagement">Module</a></li>
                                    <li class="navUrl" id="moduleSearch"><a href="/admin/config/moduleSearch"> Module Search</a></li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <a href="#" data-toggle="collapse" data-target="#authority" data-parent="#sidenav01" class="collapsed">
                                <i class="fa fa-bank" aria-hidden="true"></i>  Authority <span class="caret pull-right"></span>
                            </a>
                            <div class="collapse" id="authority">
                                <ul class="nav nav-list">
                                    <li class="navUrl" id="authorityManagement" ><a href="/admin/config/authorityManagement">Authority</a></li>
                                    <li class="navUrl" id="authoritySearch"><a href="/admin/config/authoritySearch">Authority Search</a></li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <a href="#" data-toggle="collapse" data-target="#user" data-parent="#sidenav01" class="collapsed">
                                <i class="fa fa-users" aria-hidden="true"></i>  User <span class="caret pull-right"></span>
                            </a>
                            <div class="collapse" id="user">
                                <ul class="nav nav-list">
                                    <li class="navUrl" id="userType"><a href="/admin/config/userTypeManagement">User Type</a></li>
                                    <li class="navUrl" id="newUser"><a href="/admin/config/userManagement"> New User</a></li>
                                    <li class="navUrl" id="userTypeAuthority"><a href="/admin/config/userTypeAuthorityManagement">User Type Authority</a></li>
                                    <li class="navUrl" id="userTypeSearch"><a href="/admin/config/userTypeSearch">User Type Search</a></li>
                                    <li class="navUrl" id="userTypeAuthoritySearch"><a href="/admin/config/userTypeAuthoritySearch">User Type Authority Search</a></li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <a href="#" data-toggle="collapse" data-target="#account" data-parent="#sidenav" class="collapsed">
                                <i class="fa fa-book" aria-hidden="true"></i>  Account<span class="caret pull-right"></span>
                            </a>
                            <div class="collapse" id="account">
                                <ul class="nav nav-list">
                                    <li class="navUrl" id="accountTypeManagement"><a href="/admin/account/accountTypeManagement"> Account Type</a></li>
                                    <li class="navUrl" id="accountManagement"><a href="/admin/account/customerAccountManagement">Account</a></li>
                                    <li class="navUrl" id="accountSearch"><a href="/admin/account/customerAccountSearch">Account Search</a></li>
                                    <li class="navUrl" id="accountTypeSearch"><a href="/admin/account/accountTypeSearch">Account Type Search</a></li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <a href="#" data-toggle="collapse" data-target="#config" data-parent="#sidenav" class="collapsed">
                                <i class="fa fa-user-secret" aria-hidden="true"></i>  Customer<span class="caret pull-right"></span>
                            </a>
                            <div class="collapse" id="config">
                                <ul class="nav nav-list">
                                    <li class="navUrl" id="customerManagement"><a href="/admin/customer/customerManagement">Customer</a></li>
                                    <li class="navUrl" id="customerSearch"><a href="/admin/customer/customerSearch">Customer Search</a></li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
