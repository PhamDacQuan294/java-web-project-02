<%--
  Created by IntelliJ IDEA.
  User: FPT
  Date: 2/9/2026
  Time: 11:06 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<c:url var="buildingListURL" value="/admin/building-list"/>
<html>
<head>
    <title>Danh sach toa nha</title>
</head>
<body>
    <div class="main-content">
        <div class="main-content-inner">

            <div class="breadcrumbs" id="breadcrumbs">
                <ul class="breadcrumb">
                    <li>
                        <i class="ace-icon fa fa-home home-icon"></i>
                        <a href="#">Home</a>
                    </li>
                    <li class="active">Quan ly toa nha</li>
                </ul>
            </div>

            <div class="page-content">
                <div class="page-header">
                    <h1>
                        Danh sách tòa nhà
                        <small>
                            <i class="ace-icon fa fa-angle-double-right"></i>
                            overview &amp; stats
                        </small>
                    </h1>
                </div>

                <div class="row">
                    <div class="col-xs-12">

                        <div class="widget-box">
                            <div class="widget-header">
                                <h5 class="widget-title">Tìm kiếm</h5>
                                <div class="widget-toolbar">
                                    <a href="#" data-action="collapse">
                                        <i class="ace-icon fa fa-chevron-up"></i>
                                    </a>
                                </div>
                            </div>

                            <div class="widget-body">
                                <div class="widget-main">
                                    <form:form id="listForm" class="form-horizontal" modelAttribute="modelSearch" action="${buildingListURL}" method="GET">
                                        <!-- Row 1 -->
                                        <div class="row">
                                            <div class="col-xs-6">
                                                <label>Tên tòa nhà</label>
<%--                                                <input id="name" type="text" class="form-control" name="name" value="${modelSearch.name}"/>--%>
                                                <form:input class="form-control" path="name"/>
                                            </div>
                                            <div class="col-xs-6">
                                                <label>Diện tích sàn</label>
                                                <input type="number" class="form-control" name="floorArea" value="${modelSearch.floorArea}"/>
                                            </div>
                                        </div>

                                        <div class="space-12"></div>

                                        <!-- Row 2 -->
                                        <div class="row">
                                            <div class="col-xs-2">
                                                <label>Chọn Quận</label>
                                                <form:select class="form-control" path="district">
                                                    <form:option value="">---</form:option>
                                                    <form:option value="Q1">Quận 1</form:option>
                                                    <form:option value="Q2">Quận 2</form:option>
                                                </form:select>
                                            </div>
                                            <div class="col-xs-5">
                                                <label>Phường</label>
                                                <input type="text" class="form-control" name="ward" value=""/>
                                            </div>
                                            <div class="col-xs-5">
                                                <label>Đường</label>
                                                <input type="text" class="form-control" name="street" value=""/>
                                            </div>
                                        </div>

                                        <div class="space-12"></div>

                                        <!-- Row 3 -->
                                        <div class="row">
                                            <div class="col-xs-4">
                                                <label>Số tầng hầm</label>
                                                <input type="number" class="form-control" name="numberOfBasement" value=""/>
                                            </div>
                                            <div class="col-xs-4">
                                                <label>Hướng</label>
                                                <input type="text" class="form-control" name="direction" value=""/>
                                            </div>
                                            <div class="col-xs-4">
                                                <label>Hạng</label>
                                                <input type="text" class="form-control" name="level" value=""/>
                                            </div>
                                        </div>

                                        <div class="space-12"></div>

                                        <!-- Row 4 -->
                                        <div class="row">
                                            <div class="col-xs-3">
                                                <label>Diện tích từ</label>
                                                <input type="number" class="form-control" name="areaFrom" value=""/>
                                            </div>
                                            <div class="col-xs-3">
                                                <label>Diện tích đến</label>
                                                <input type="number" class="form-control" name="areaTo" value=""/>
                                            </div>
                                            <div class="col-xs-3">
                                                <label>Giá thuê từ</label>
                                                <input type="number" class="form-control" name="rentPriceFrom" value=""/>
                                            </div>
                                            <div class="col-xs-3">
                                                <label>Giá thuê đến</label>
                                                <input type="number" class="form-control" name="rentPriceTo" value=""/>
                                            </div>
                                        </div>

                                        <div class="space-12"></div>

                                        <!-- Row 5 -->
                                        <div class="row">
                                            <div class="col-xs-5">
                                                <label>Tên quản lý</label>
                                                <input type="text" class="form-control" name="managerName" value=""/>
                                            </div>
                                            <div class="col-xs-5">
                                                <label>SDT quản lý</label>
                                                <input type="text" class="form-control" name="managerPhone" value=""/>
                                            </div>
                                            <div class="col-xs-2">
                                                <label>Nhân viên</label>
                                                <select class="form-control" name="staffId">
                                                    <option value="">---Chọn---</option>
                                                    <option value="1">Nguyễn Văn Mạnh</option>
                                                    <option value="2">Nguyễn Xuân Nam</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="space-12"></div>

                                        <!-- Row 6 -->
                                        <div class="row">
                                            <div class="col-xs-12">
                                                <label class="inline" style="margin-right: 20px;">
                                                    <input  type="checkbox" class="ace" name="typeCode" value="noi-that"/>
                                                    <span class="lbl"> Nội thất</span>
                                                </label>
                                                <label class="inline" style="margin-right: 20px;">
                                                    <input type="checkbox" class="ace" name="typeCode" value="nguyen-can"/>
                                                    <span class="lbl"> Nguyên căn</span>
                                                </label>
                                                <label class="inline">
                                                    <input type="checkbox" class="ace" name="typeCode" value="tang-tret"/>
                                                    <span class="lbl"> Tầng trệt</span>
                                                </label>
                                            </div>
                                        </div>

                                        <div class="space-12"></div>

                                        <!-- Row 7 -->
                                        <div class="row">
                                            <div class="col-xs-12">
                                                <button type="button" class="btn btn-info" id="btnSearchBuilding">
                                                    <i class="ace-icon fa fa-search bigger-110"></i> Tìm kiếm
                                                </button>
                                            </div>
                                        </div>

                                    </form:form>
                                </div>
                            </div>
                        </div>

                        <div class="clearfix">
                            <div class="pull-right">
                                <a href="/admin/building-edit">
                                    <button class="btn btn-primary">Thêm tòa nhà</button>
                                </a>
                                <a href="#">
                                    <button class="btn btn-danger">Xóa tòa nhà</button>
                                </a>
                            </div>
                        </div>

                        <div class="space-12"></div>

                        <!-- Table -->
                        <div class="row">
                            <div class="col-xs-12">
                                <table class="table table-striped table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th class="center">
                                                <label class="pos-rel">
                                                    <input type="checkbox" name="checkList" value="" class="ace"/>
                                                    <span class="lbl"></span>
                                                </label>
                                            </th>
                                            <th>Tên tòa nhà</th>
                                            <th>Địa chỉ</th>
                                            <th>Số tầng hầm</th>
                                            <th>Tên quản lý</th>
                                            <th>SĐT quản lý</th>
                                            <th>D.Tích sàn</th>
                                            <th>D.Tích trống</th>
                                            <th>D.Tích thuê</th>
                                            <th>Phí môi giới</th>
                                            <th>Thao tác</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach var="item" items="${buildingList}">
                                            <tr>
                                                <td class="center">
                                                    <label class="pos-rel">
                                                        <input type="checkbox" name="checkList" value="${item.id}" class="ace">
                                                        <span class="lbl"></span>
                                                    </label>
                                                </td>

                                                <td>
                                                    <a href="#">${item.name}</a>
                                                </td>

                                                <td>
                                                    <a href="#">${item.address}</a>
                                                </td>

                                                <td>
                                                    <a href="#">${item.numberOfBasement}</a>
                                                </td>

                                                <td>
                                                    <a href="#">${item.managerName}</a>
                                                </td>

                                                <td>
                                                    <a href="#">ace.com</a>
                                                </td>

                                                <td>$45</td>
                                                <td class="hidden-480">3,330</td>
                                                <td>Feb 12</td>

                                                <td class="hidden-480">
                                                    <span class="label label-sm label-warning">Expiring</span>
                                                </td>

                                                <td>
                                                    <div class="hidden-sm hidden-xs btn-group">
                                                        <button class="btn btn-xs btn-success" title="Giao toa nha" onclick="assignmentBuilding(${item.id})">
                                                        </button>

                                                        <a class="btn btn-xs btn-info" title="Sua toa nha" href="/admin/building-edit-${item.id}">
                                                            <i class="ace-icon fa fa-pencil bigger-120"></i>
                                                        </a>

                                                        <button class="btn btn-xs btn-danger">
                                                            <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                                        </button>
                                                    </div>
                                                </td>
                                            </tr>
                                        </c:forEach>

                                    </tbody>
                                </table>
                            </div>
                        </div>

                    </div>
                </div>

            </div>
        </div>
    </div>

    <div class="modal fade" id="assignmentBuildingModal" role="dialog"
         style="font-family: 'Times New Roman', Times, serif;">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Danh sách nhân viên</h4>
                </div>
                <div class="modal-body">
                    <table style="margin: 3em 0 0;" class="table table-striped table-bordered table-hover" id="staffList">
                        <thead>
                        <tr>
                            <th>Chọn</th>
                            <th>Tên Nhân Viên</th>
                        </tr>
                        </thead>

                        <tbody>
                        <tr>
                            <td class="center">
                                <input type="checkbox" id="checkbox_1" value="1">
                            </td>
                            <td>
                                Nguyễn Văn A
                            </td>
                        </tr>
                        <tr>
                            <td class="center">
                                <input type="checkbox" id="checkbox_2" value="3">
                            </td>
                            <td>
                                Trần Văn C
                            </td>
                        </tr>
                        </tbody>
                    </table>
                    <input type="hidden" id="buildingId" name="building" value="">
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" id="btnassignmentBuilding">Giao tòa nhà</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="assignmentBuildingModal" role="dialog"
		style="font-family: 'Times New Roman', Times, serif;">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Danh sách nhân viên</h4>
				</div>
				<div class="modal-body">
					<table style="margin: 3em 0 0;" class="table table-striped table-bordered table-hover" id="staffList">
						<thead>
							<tr>
								<th>Chọn</th>
								<th>Tên Nhân Viên</th>
							</tr>
						</thead>

						<tbody>
							<tr>
								<td class="center">
									<input type="checkbox" id="checkbox_1" value="1">
								</td>
								<td>
									Nguyễn Văn A
								</td>
							</tr>
							<tr>
								<td class="center">
									<input type="checkbox" id="checkbox_2" value="3">
								</td>
								<td>
									Trần Văn C
								</td>
							</tr>
						</tbody>
					</table>
					<input type="hidden" id="buildingId" name="building" value="">
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" id="btnassignmentBuilding">Giao tòa nhà</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
				</div>
			</div>
		</div>
	</div>

    <script>
        function assignmentBuilding(buildingId) {
            $('#assignmentBuildingModal').modal();
        }

        $('#btnassignmentBuilding').click(function (e) {
            e.preventDefault();
            var data = {};
            data['buildingId'] = $('#buildingId').val();
            var staffs = $('#staffList').find('tbody input[type = checkbox]:checked').map(function () {
                return $(this).val();
            }).get();
            data['staffs'] = staffs;
            console.log("OK");
        });

        $('#btnSearchBuilding').click(function (e) {
            e.preventDefault();
            $('#listForm').submit();
        });
    </script>
</body>
</html>
