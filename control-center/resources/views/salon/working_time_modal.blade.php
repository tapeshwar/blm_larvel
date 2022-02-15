
<div class="modal fade" id="myModalHorizontal" role="dialog">
    <div class="modal-dialog modal-md" role="document">
        <div class="modal-content">
            <div class="modal-header modal-primary">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            {{ $heading }} ( {{ $salon->salon_name}} )
            </div>
            <div class="modal-body">
                <form id="add_module_form" action="{{url('salon/store_salon')}}" method="post" class="form-horizontal" enctype="multipart/form-data">
                <div class="row">
                    <div class="col-md-12">
                        @csrf
                        <table class="table table-responsive table-bordered">
                            <thead>
                                <tr>
                                    <th style="width: 25%">WORKING DAY</th>
                                    <th style="width: 37%">OPENING TIME</th>
                                    <th style="width: 38%">CLOSING TIME</th>
                                    
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Monday</td>
                                    <td><div class="input-group">
                                        <input type="text" class="form-control timepicker">
                                        <div class="input-group-addon"><i class="fa fa-clock-o"></i></div>
                                    </div>
                                    </td>
                                    <td>
                                        <div class="input-group">
                                            <input type="text" class="form-control timepicker">
                                            <div class="input-group-addon"><i class="fa fa-clock-o"></i></div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Tuesday</td>
                                    <td><div class="input-group">
                                        <input type="text" class="form-control timepicker">
                                        <div class="input-group-addon"><i class="fa fa-clock-o"></i></div>
                                    </div>
                                    </td>
                                    <td>
                                        <div class="input-group">
                                            <input type="text" class="form-control timepicker">
                                            <div class="input-group-addon"><i class="fa fa-clock-o"></i></div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Wednesday</td>
                                    <td><div class="input-group">
                                        <input type="text" class="form-control timepicker">
                                        <div class="input-group-addon"><i class="fa fa-clock-o"></i></div>
                                    </div>
                                    </td>
                                    <td>
                                        <div class="input-group">
                                            <input type="text" class="form-control timepicker">
                                            <div class="input-group-addon"><i class="fa fa-clock-o"></i></div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Thrusday</td>
                                    <td><div class="input-group">
                                        <input type="text" class="form-control timepicker">
                                        <div class="input-group-addon"><i class="fa fa-clock-o"></i></div>
                                    </div>
                                    </td>
                                    <td>
                                        <div class="input-group">
                                            <input type="text" class="form-control timepicker">
                                            <div class="input-group-addon"><i class="fa fa-clock-o"></i></div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Friday</td>
                                    <td><div class="input-group">
                                        <input type="text" class="form-control timepicker">
                                        <div class="input-group-addon"><i class="fa fa-clock-o"></i></div>
                                    </div>
                                    </td>
                                    <td>
                                        <div class="input-group">
                                            <input type="text" class="form-control timepicker">
                                            <div class="input-group-addon"><i class="fa fa-clock-o"></i></div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Saturday</td>
                                    <td><div class="input-group">
                                        <input type="text" class="form-control timepicker">
                                        <div class="input-group-addon"><i class="fa fa-clock-o"></i></div>
                                    </div>
                                    </td>
                                    <td>
                                        <div class="input-group">
                                            <input type="text" class="form-control timepicker">
                                            <div class="input-group-addon"><i class="fa fa-clock-o"></i></div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Sunday</td>
                                    <td><div class="input-group">
                                        <input type="text" class="form-control timepicker">
                                        <div class="input-group-addon"><i class="fa fa-clock-o"></i></div>
                                    </div>
                                    </td>
                                    <td>
                                        <div class="input-group">
                                            <input type="text" class="form-control timepicker">
                                            <div class="input-group-addon"><i class="fa fa-clock-o"></i></div>
                                        </div>
                                    </td>
                                </tr>

                            </tbody>
                        </table>
                    </div>
                        


                    <div class="col-md-12 mt20">
                               
                        <button type="submit" class="btn btn-primary btn-md btn-flat store_module_btn">Update Time</button>
                        
                    </div>
         
                </div>
                </form>

            </div>
        </div>
    </div>
</div>