<%--
  Created by IntelliJ IDEA.
  User: FPT
  Date: 2/9/2026
  Time: 11:07 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<%--<c:url var="buildingAPI" value="/api/building"/>--%>
<html>
<head>
  <title>Them toa nha</title>
</head>
<body>
<div class="main-content" id="main-container">
  <div class="main-content">
    <div class="main-content-inner">
      <div class="breadcrumbs" id="breadcrumbs">
        <script type="text/javascript">
            try {
                ace.settings.check('breadcrumbs', 'fixed')
            } catch (e) {
            }
        </script>

        <ul class="breadcrumb">
          <li>
            <i class="ace-icon fa fa-home home-icon"></i>
            <a href="#">Home</a>
          </li>
          <li class="active">Dashboard</li>
        </ul><!-- /.breadcrumb -->
      </div>

      <div class="page-content">
        <div class="ace-settings-container" id="ace-settings-container">
          <div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
            <i class="ace-icon fa fa-cog bigger-130"></i>
          </div>

          <div class="ace-settings-box clearfix" id="ace-settings-box">
            <div class="pull-left width-50">
              <div class="ace-settings-item">
                <div class="pull-left">
                  <select id="skin-colorpicker" class="hide">
                    <option data-skin="no-skin" value="#438EB9">#438EB9</option>
                    <option data-skin="skin-1" value="#222A2D">#222A2D</option>
                    <option data-skin="skin-2" value="#C6487E">#C6487E</option>
                    <option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
                  </select>
                </div>
                <span>&nbsp; Choose Skin</span>
              </div>

              <div class="ace-settings-item">
                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-navbar"/>
                <label class="lbl" for="ace-settings-navbar"> Fixed Navbar</label>
              </div>

              <div class="ace-settings-item">
                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-sidebar"/>
                <label class="lbl" for="ace-settings-sidebar"> Fixed Sidebar</label>
              </div>

              <div class="ace-settings-item">
                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-breadcrumbs"/>
                <label class="lbl" for="ace-settings-breadcrumbs"> Fixed Breadcrumbs</label>
              </div>

              <div class="ace-settings-item">
                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl"/>
                <label class="lbl" for="ace-settings-rtl"> Right To Left (rtl)</label>
              </div>

              <div class="ace-settings-item">
                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-add-container"/>
                <label class="lbl" for="ace-settings-add-container">
                  Inside
                  <b>.container</b>
                </label>
              </div>
            </div><!-- /.pull-left -->

            <div class="pull-left width-50">
              <div class="ace-settings-item">
                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-hover"/>
                <label class="lbl" for="ace-settings-hover"> Submenu on Hover</label>
              </div>

              <div class="ace-settings-item">
                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-compact"/>
                <label class="lbl" for="ace-settings-compact"> Compact Sidebar</label>
              </div>

              <div class="ace-settings-item">
                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-highlight"/>
                <label class="lbl" for="ace-settings-highlight"> Alt. Active Item</label>
              </div>
            </div><!-- /.pull-left -->
          </div><!-- /.ace-settings-box -->
        </div><!-- /.ace-settings-container -->

        <div class="page-header">
          <h1>
            Danh sách toà nhà
            <small>
              <i class="ace-icon fa fa-angle-double-right"></i>
              overview &amp; stats
            </small>
          </h1>
        </div><!-- /.page-header -->

        <div class="row">
          <div class="col-xs-12 widget-container-col ui-sortable">

          </div>
        </div>

        <!-- Bảng danh sách -->
        <div class="row" style="font-family: 'Times New Roman', Times, serif;">
          <form:form modelAttribute="buildingEdit" id="listForm" method="GET">
            <div class="col-xs-12">
              <form class="form-horizontal" role="form">
                <div class="form-group">
                  <label class="col-xs-3">Tên tòa nhà</label>
                  <div class="col-xs-9">
                    <input class="form-control" type="text" id="name" name="name">
                  </div>
                </div>

                <div class="form-group">
                  <label id="districtid" class="col-xs-3" name="districtCode">Quận</label>
                  <div class="col-xs-3">
                     <label>Chọn Quận</label>
                      <form:select path="district" class="form-control">
                        <form:option value="">--- Chọn quận ---</form:option>
                        <form:options items="${districts}"/>
                      </form:select>
                  </div>
                </div>

                <div class="form-group">
                  <label class="col-xs-3">Phuong</label>
                  <div class="col-xs-9">
                    <input class="form-control" type="text" id="ward" name="ward" value="">
                  </div>
                </div>

                <div class="form-group">
                  <label class="col-xs-3">Duong</label>
                  <div class="col-xs-9">
                    <input class="form-control" type="text" id="street" name="street" value="">
                  </div>
                </div>

                <div class="form-group">
                  <label class="col-xs-3">Ket cau</label>
                  <div class="col-xs-9">
                    <input class="form-control" type="text" id="structure" name="structure" value="">
                  </div>
                </div>

                <div class="form-group">
                  <label class="col-xs-3">So tang ham</label>
                  <div class="col-xs-9">
                    <input class="form-control" type="number" id="numberofbasement"
                           name="numberofbasement" value="">
                  </div>
                </div>

                <div class="form-group">
                  <label class="col-xs-3">Dien tich san</label>
                  <div class="col-xs-9">
                    <input class="form-control" type="number" id="floorarea" name="floorarea" value="">
                  </div>
                </div>

                <div class="form-group">
                  <label class="col-xs-3">Huong</label>
                  <div class="col-xs-9">
                    <input class="form-control" type="text" id="direction" name="direction" value="">
                  </div>
                </div>

                <div class="form-group">
                  <label class="col-xs-3">Hang</label>
                  <div class="col-xs-9">
                    <input class="form-control" type="text" id="level" name="level" value="">
                  </div>
                </div>

                <div class="form-group">
                  <label class="col-xs-3">Loại tòa nhà</label>
                  <div class="col-xs-9">
                    <label class="checkbox-inline">
                      <input type="checkbox" id="typeCode" name="typeCode" value="noi-that">Nội
                      thất
                    </label>
                    <label class="checkbox-inline">
                      <input type="checkbox" id="typeCode" name="typeCode" value="nguyen-can">Nguyên
                      căn
                    </label>
                    <label class="checkbox-inline">
                      <input type="checkbox" id="typeCode" name="typeCode" value="tang-tret">Tầng
                      trệt
                    </label>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-xs-3"></label>
                  <div class="col-xs-9">
                    <c:if test="${not empty buildingEdit.id}">
                      <button type="button" class="btn btn-primary" id="btnAddOrUpdateBuilding">
                        Cập nhật tòa nhà
                      </button>
                      <button type="button" class="btn btn-primary" id="btnCancel">
                        Hủy thao tác
                      </button>
                    </c:if>

                    <c:if test="${empty buildingEdit.id}">
                      <button type="button" class="btn btn-primary" id="btnAddBuilding">
                        Thêm mới
                      </button>
                      <button type="button" class="btn btn-primary" id="btnCancel">
                        Hủy thao tác
                      </button>
                    </c:if>
                  </div>
                </div>
                <form:hidden path="id" id="buildingId"/>
              </form>
            </div>
          </form:form>
        </div>
      </div>
    </div>
  </div>

  <div class="footer">
    <div class="footer-inner">
      <div class="footer-content">
          <span class="bigger-120">
              <span class="blue bolder">Ace</span>
              Application &copy; 2013-2014
          </span>
      </div>
    </div>
  </div>

  <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
    <i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
  </a>
</div><!-- /.main-container -->
<script>
    $('#btnAddOrUpdateBuilding').click(function () {
        var data = {};
        var typeCode = [];
        var formData = $('#listForm').serializeArray();

        $.each(formData, function (i, v) {
            if (v.name !== 'typeCode') {
                data[v.name] = v.value;
            } else {
                typeCode.push(v.value);
            }
        });

        data.typeCode = typeCode;
        if(typeCode != '') {
            addOrUpdateBuilding(data);
        }
        else {
            window.location.href = "<c:url value='/admin/building-edit?typeCode=require'/>";
        }
    });

    function addOrUpdateBuilding(data) {
        $.ajax({
            type: "POST",
            url: "/api/building",
            data: JSON.stringify(data),
            contentType: "application/json",
            dataType: "json",
            success: function (result) {
                $("#h11").html(result);
            },
            error: function (err) {
                console.log("Error");
            }
        });
    }

    $('#btnCancel').click(function () {
        window.location.href = '/admin/building-list';
    });
</script>
</body>
</html>
