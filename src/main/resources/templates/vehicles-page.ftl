<!DOCTYPE html>
<html>
<header>

    <title>User's Vehicles</title>
    <#include "partials/head.ftl">

</header>
<body>


<div class="wrapper">



    <div class="sidebar" >
        <!--
    Tip 1: You can change the color of the sidebar using: data-color="purple | blue | green | orange | red"

    Tip 2: you can also add an image using data-image tag
-->
        <div class="sidebar-wrapper">
            <div class="logo">
                <a href="" class="simple-text">

                </a>
            </div>
            <ul class="nav">
                <li  class="active">
                    <a class="nav-link" href="">
                        <i class="nc-icon nc-notes"></i>
                        <p>Users</p>
                    </a>
                </li>
                <li>
                    <a class="nav-link" href="userprofile.html">
                        <i class="nc-icon nc-circle-09"></i>
                        <p>Services</p>
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <div class="main-panel">
        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg " color-on-scroll="500">
            <div class=" container-fluid  ">
                <a  href=""> <img height="40" widfth="200"  src=""> </a>
                <button href="" class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-bar burger-lines"></span>
                    <span class="navbar-toggler-bar burger-lines"></span>
                    <span class="navbar-toggler-bar burger-lines"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-end" id="navigation">

                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="">
                                <span class="no-icon">Account</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <form id="formid" action="index.html" method="POST">
                                <a class="nav-link" onclick="document.getElementById('formid').submit()" href="#pablo">
                                    <span class="no-icon">Log out</span>
                                </a>
                            </form>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- End Navbar -->
        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-12 col-md-12 col-lg-12">
                        <div class="card ">
                            <div class="card-header ">

                                <!--
                                <div class="d-flex bd-highlight mb-3">
                                  <div class="mr-auto p-2 bd-highlight">Flex item</div>
                                  <div class="p-2 bd-highlight">Flex item</div>
                                  <div class="p-2 bd-highlight">Flex item</div>
                                </div>-->
                                <div class="d-flex bd-highlight mb-3">

                                    <div class="mr-auto p-2 bd-highlight">
                                        <h4 style="padding-bottom: 0.6em;" class="card-title">Vehicles</h4>
                                        <button id="students" class="btn btn-primary"
                                                data-toggle="modal" data-target="#addVehicleFormModal">Add Vehicle</button>
                                    </div>


                                </div>
                            </div>
                            <div id="booksTable" class="card-body table-full-width table-responsive">
                                <table class="table table-hover">
                                    <thead>
                                    <tr>
                                        <th>Plate Number</th>
                                        <th>Year of Man.</th>
                                        <th>Color</th>
                                        <th>Model</th>
                                        <th>Edit</th>
                                        <th>Repair</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                        <#list vehicles as vehicle>
                                            <tr>
                                                <td>${vehicle.getPlateNUmber()}</td>
                                                <td>${vehicle.getYearOfManufacture()}</td>
                                                <td>${vehicle.getColor()}</td>
                                                <td>${vehicle.getModel()}</td>
                                                <td style="padding-left: 1.5em;">
                                                    <button class="btn" data-toggle="modal" data-target="#editVehicle"
                                                    onclick="updateVehicle(${vehicle.getVehicleId()})" >
                                                    <i class="fa fa-edit" style="font-size:24px; text-align: center"></i>
                                                    </button>
                                                </td>
                                            <td style="padding-left: 1.5em;">
                                                <button class="btn" data-toggle="modal" data-target="#addRepairFormModal">
                                                    <i class="fa fa-plus" style="font-size:24px; text-align: center"></i>
                                                    </button>
                                            </td>

                                            <!--
                                            vehicles_data += '<td style="padding-left: 1.5em;">' +
                                                '<button class="btn" data-toggle="modal" data-target="#editVehicle" ' +
                                                'onclick="updateVehicle(' + d.vehicleId + ')" >'+
                                                '<i class="fa fa-edit" style="font-size:24px; text-align: center"></i>'+
                                                '</button>' +
                                                '</td>';
                                            vehicles_data += '<td style="padding-left: 1.5em;">' +
                                                '<form action="/vehicles/vehicle/deleteVehicle" method="GET">' +
                                                '<input type="hidden" name="vehicleId" value="' + d.vehicleId + '"/> '+
                                                '<button class="btn" type="submit" >'+
                                                '<i class="fa fa-remove" style="font-size:24px; text-align: center"></i>'+
                                                '</button></form>' +
                                                '</td>';
                                            -->

                                            </tr>

                                        </#list>

                                    </tbody>

                                </table>
                            </div>
                            <div class="card-footer ">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <footer class="footer">
            <div class="container">
                <p class="copyright text-center" style="font-size: 13px;">
                    <span><img style="width: 35px;" src=""></span>Auto Service Site</br>Welcome
                </p>
            </div>
        </footer>
    </div>
</div>

<div class="modal fade" id="addRepairFormModal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Add Repair</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="addRepairForm" name="addRepairForm" class="form-horizontal" action="/admin/repairs/createRepair" method="POST">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="date">Date</label>
                                <#list vehicles as vehicle>
                                    <input type="hidden" name="vehicle" value="${vehicle.getVehicleId()}">
                                </#list>
                                <input type="text" name="repairDate" class="form-control" placeholder="Enter Date" required="true">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="cost">Cost</label>
                                <input type="text" name="cost" class="form-control" placeholder="Enter Cost" required="true">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="description">Description</label>
                                <input type="text" name="description" class="form-control" placeholder="Enter Description" required="true">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="repairType">Repair Type</label>
                                <select class="form-control" name="repairType">
                                    <option selected disabled>Select...</option>
                                    <option value="MINOR_REPAIR">Minor Repair</option>
                                    <option value="MAJOR_REPAIR">Major Repair</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="status">Status</label>
                                <select class="form-control" name="status">
                                    <option selected disabled>Select...</option>
                                    <option value="PENDING">Pending</option>
                                    <option value="COMPLETED">Completed</option>
                                    <option value="IN_PROGRESS">In Progress</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="partTypeListAddForm">Part Type</label>
                                <fieldset id="partsListAddForm">
                                    <#-- Parts get populated here -->
                                </fieldset>
                            </div>
                        </div>
                    </div>

            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Create Repair</button>
            </div>
            </form>
        </div>
    </div>
</div>

<div class="modal fade" id="addVehicleFormModal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content ">
            <div class="modal-header">
                <h4 class="modal-title">Add User</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form id="addVehicleForm" name="addVehicleForm" class="form-horizontal" action="/admin/vehicles/user/addVehicle" method="POST">
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <#list vehicles as v>
                                    <input id="user" type="hidden" name="user" value="${v.getUser().getId()}"/>
                                </#list>
                                <label for="plateNumber">Plate Number</label>
                                <input type="text" name="plateNUmber" class="form-control" placeholder="Enter plate number" required="true">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="model">Model</label>
                                <input type="text" name="model" class="form-control" placeholder="Enter model" required="true">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="yearOfManufacture">Year of Man.</label>
                                <input type="text" name="yearOfManufacture" class="form-control" placeholder="Year of manufacture" required="true">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="color">Enter color</label>
                                <input type="text" name="color" class="form-control" placeholder="Enter color" required="true">
                            </div>
                        </div>
                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button class="btn btn-primary">Add Vehicle User</button>
                </div>
            </form>
        </div>
    </div>
</div>


<div class="modal fade" id="editVehicle" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content ">
            <div class="modal-header">
                <h4 class="modal-title">Edit User</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form id="editVehicleForm" action="/vehicles/updateVehicle" method="POST">

                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <input id="vehicleId" name="vehicleId" type="hidden"/>
                                <label for="plateNumber">Plate Number</label>
                                <input id="plateNumber" type="text" name="plateNUmber" class="form-control" placeholder="Enter plate number" required="true">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="model">Model</label>
                                <input id="model" type="text" name="model" class="form-control" placeholder="Enter model" required="true">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="yearOfManufacture">Year of Man.</label>
                                <input id="yearOfManufacture" type="text" name="yearOfManufacture" class="form-control" placeholder="Year of manufacture" required="true">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="color">Enter color</label>
                                <input id="color" type="text" name="color" class="form-control" placeholder="Enter color" required="true">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Update Vehicle</button>
                </div>
            </form>
        </div>
    </div>
</div>



<script src="/jsAjax/vehiclesajaxcalls.js" type="text/javascript"></script>

<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<script src="https://cdn.datatables.net/1.10.18/js/jquery.dataTables.min.js" type="text/javascript"></script>

<script src="/js/core/jquery.3.2.1.min.js" type="text/javascript"></script>
<script src="/js/core/popper.min.js" type="text/javascript"></script>
<script src="/js/core/bootstrap.min.js" type="text/javascript"></script>
<!--  Plugin for Switches, full documentation here: http://www.jque.re/plugins/version3/bootstrap.switch/ -->
<script src="/js/plugins/bootstrap-switch.js"></script>
<!--  Chartist Plugin  -->
<script src="/js/plugins/chartist.min.js"></script>
<!--  Notifications Plugin    -->
<script src="/js/plugins/bootstrap-notify.js"></script>
<!-- Control Center for Light Bootstrap Dashboard: scripts for the example pages etc -->
<script src="/js/light-bootstrap-dashboard.js?v=2.0.1" type="text/javascript"></script>


</body>
</html>