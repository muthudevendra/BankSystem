<%--
  Created by IntelliJ IDEA.
  User: Muthu Devendra
  Date: 6/26/2017
  Time: 7:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="/layout/include.jsp" %>
<script type="text/javascript" src="/admin/script/accountTypeManagement.js"></script>
<div class="main">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="#">Admin</a></li>
            <li class="active">Account Type</li>
        </ul>

        <div class="col-lg-8 col-lg-offset-1">
            <div>
                <legend>Account Type</legend>
            </div>
        </div>

        <div class="content-page col-md-9">
            <form role="form">
                <div class="row form-group">
                    <div class="col-lg-2 col-md-offset-2">
                        <label for="accounttype">Account Name</label>
                    </div>
                    <div class="col-lg-8">
                        <input type="text" name="accounttype" class="form-control" id="accounttype">
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-lg-2 col-md-offset-2">
                        <label for="description">Description</label>
                    </div>
                    <div class="col-lg-8">
                        <input type="text" name="description" class="form-control" id="description">
                    </div>
                </div>
                <hr style="width:75%">
                <div class="row form-group">
                    <div class="col-lg-2 col-md-offset-2">
                        <label for="minDeposit">Minimum Deposit</label>
                    </div>
                    <div class="col-lg-3">
                        <input type="text" name="minDeposit" class="form-control" id="minDeposit">
                    </div>
                    <div class="col-lg-2">
                        <label for="annualCost">Annual Cost</label>
                    </div>
                    <div class="col-lg-3">
                        <input type="text" name="annualCost" class="form-control" id="annualCost">
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-lg-2 col-md-offset-2">
                        <label for="minAge">Minimum Age</label>
                    </div>
                    <div class="col-lg-3">
                        <input type="text" name="minAge" class="form-control" id="minAge">
                    </div>
                    <div class="col-lg-2">
                        <label for="maxAge">Maximum Age</label>
                    </div>
                    <div class="col-lg-3">
                        <input type="text" name="maxAge" class="form-control" id="maxAge">
                    </div>
                </div>
                <hr style="width:75%">
                <div class="row form-group">
                    <div class="col-lg-2 col-md-offset-2">
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
                <br/>

                <div class="row form-group">
                    <hr/>
                    <div class="col-md-5">
                        <div class="row">
                            <div class="col-md-5">
                                <label for="modifiedBy">Last Modified By</label>
                            </div>
                            <div class="col-md-6">
                                <label id="modifiedBy">Lakshitha</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-5">
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
