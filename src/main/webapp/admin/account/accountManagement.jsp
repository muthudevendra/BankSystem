<%--
  Created by IntelliJ IDEA.
  User: Muthu Devendra
  Date: 6/26/2017
  Time: 7:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="/layout/include.jsp" %>
<script type="text/javascript" src="/admin/script/accountManagement.js"></script>
<div class="main">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="#">Admin</a></li>
            <li class="active">Account</li>
        </ul>
        <div class="content-page col-md-9">
            <div class="col-lg-offset-1">
                <div>
                    <legend>Account Details</legend>
                </div>
            </div>
            <form role="form">
                <div class="row form-group">
                    <div class="col-lg-3 col-md-offset-2">
                        <label for="accountType">Account Type</label>
                    </div>
                    <div class="col-lg-3">
                        <select class="form-control" id="accountType">
                            <option>Select</option>
                            <option>Savings Account</option>
                        </select>
                    </div>
                </div>

                <div class="row form-group">
                    <div class="col-lg-3 col-md-offset-2">
                        <label for="interestMethod">Interest Method</label>
                    </div>
                    <div class="col-lg-3">
                        <select class="form-control" id="interestMethod">
                            <option>Select</option>
                            <option>Annually</option>
                        </select>
                    </div>
                </div>
                <hr style="width:75%" />

                <div class="row form-group">
                    <div class="col-md-2 col-md-offset-2">
                        <label for="mobileBank">Mobile Bank</label>
                    </div>
                    <div class="col-lg-1" style="border-right: solid 1px;">
                        <input type="checkbox" name="mobileBank" id="mobileBank">
                    </div>
                    <div class="col-md-2">
                        <label for="onlineBank">Online Bank</label>
                    </div>
                    <div class="col-lg-1" style="border-right: solid 1px;">
                        <input type="checkbox" name="onlineBank" id="onlineBank">
                    </div>
                    <div class="col-md-2">
                        <label for="passbook">Passbook</label>
                    </div>
                    <div class="col-lg-1">
                        <input type="checkbox" name="passbook" id="passbook">
                    </div>
                </div>

                <hr style="width:75%" />
                <div class="row form-group">
                    <div class="col-lg-3 col-lg-offset-2">
                        <label for="status">Status</label>
                    </div>
                    <div class="col-lg-3">
                        <select class="form-control" id="status">
                            <option>Select</option>
                            <option>Active</option>
                            <option>Inactive</option>
                        </select>
                    </div>
                </div>
                <br>
            </form>
            <br/>

            <div class="col-lg-offset-1">
                <div>
                    <legend>Customer Account Details</legend>
                </div>
            </div>

            <form role="form">
                <div class="row form-group">
                    <div class="col-lg-3 col-md-offset-2">
                        <label for="customer">Customer ID</label>
                    </div>
                    <div class="col-lg-3">
                        <input type="text" name="customer" class="form-control" id="customer">
                    </div>
                </div>

                <div class="row form-group">
                    <div class="col-lg-3 col-md-offset-2">
                        <label for="customerAccountType">Account Type</label>
                    </div>
                    <div class="col-lg-3">
                        <select class="form-control" id="customerAccountType">
                            <option>Select</option>
                            <option>Savings Account</option>
                        </select>
                    </div>
                </div>
                <hr style="width:75%" />

                <div class="row form-group">
                    <div class="col-lg-3 col-md-offset-2">
                        <label for="startDate">Start Date</label>
                    </div>
                    <div class="col-lg-2">
                        <input type="text" name="startDate" class="form-control" id="startDate">
                    </div>
                    <div class="col-lg-2">
                        <label for="endDate">End Date</label>
                    </div>
                    <div class="col-lg-2">
                        <input type="text" name="endDate" class="form-control" id="endDate">
                    </div>
                </div>

                <div class="row form-group">
                    <div class="col-lg-3 col-md-offset-2">
                        <label for="availableBalance">Available Balance</label>
                    </div>
                    <div class="col-lg-3">
                        <input type="text" name="availableBalance" class="form-control" id="availableBalance">
                    </div>
                </div>

                <div class="row form-group">
                    <div class="col-lg-3 col-lg-offset-2">
                        <label for="customerstatus">Status</label>
                    </div>
                    <div class="col-lg-3">
                        <select class="form-control" id="customerstatus">
                            <option>Select</option>
                            <option>Active</option>
                            <option>Inactive</option>
                        </select>
                    </div>
                </div>
            </form>

            <div class="row form-group">
                <hr/>
                <div class="col-md-5">
                    <div class="row">
                        <div class="col-md-6">
                            <label for="modifiedBy">Last Modified By</label>
                        </div>
                        <div class="col-md-6">
                            <label id="modifiedBy">Lakshitha</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <label for="modifiedDate">Last Modified Date</label>
                        </div>
                        <div class="col-md-6">
                            <label id="modifiedDate">2017/06/26</label>
                        </div>
                    </div>
                </div>
                <div class="col-md-5 col-sm-offset-2">
                    <div class="row">
                        <div class="col-md-4">
                            <label for="createdBy">Created By</label>
                        </div>
                        <div class="col-md-6">
                            <label id="createdBy">Lakshitha</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <label for="createdDate">Created Date</label>
                        </div>
                        <div class="col-md-6">
                            <label id="createdDate">2017/06/24</label>
                        </div>
                    </div>
                </div>
            </div>
            <br/>

            <form>
                <div class="row">
                    <div class="col-md-1 col-md-offset-8">
                        <button type="submit" class="btn btn-success">Save</button>
                    </div>
                    <div class="col-md-1">
                        <button type="submit" class="btn btn-default">Update</button>
                    </div>
                    <div class="col-md-1">
                        <button type="submit" class="btn btn-danger">Delete</button>
                    </div>
                </div>
            </form>

        </div>
    </div>
</div>