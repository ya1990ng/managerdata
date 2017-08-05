<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>用户管理</title>
<link href="../source/mvc/page/page.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>


	<section id="page-content">
		<div id="Inquire-two">
			<h3 class="title">用户管理</h3>
			<form method="post" id="searchFrom">
				<p>
					<label for="uname">用户名：</label><input name="username" type="text"
						usemap="{'logic':'and','compare':'like'}" /> <label for="manager">姓名：</label><input
						name="realname" type="text"
						usemap="{'logic':'and','compare':'like'}" /> <label for="phone1">性别：</label><input
						name="sex" type="text" usemap="{'logic':'and','compare':'like'}" />
				

				<!-- <label for="state">状态：</label> -->
				<!-- <select id="state">
						<option value="1">全部</option>
					</select> -->
				<button type="button" id="submit" class="haha btn btn-zdy">查询</button>
				<button type="reset" class="btn btn-zdy">重置</button>
				</p>
			</form>
			<div>
				<p class="send">
					<button class="btn btn-zdy" data-toggle="modal" data-target="#xz" id="newAdd">新增</button>
				</p>
				<table class="table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th>序号</th>
							<th>用户名</th>
							<th>姓名</th>
							<th>手机号码</th>
							<th>性别</th>
							<th>邮箱</th>
							<th>状态</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody id="demoContent">

					</tbody>
				</table>
			</div>
		</div>
		<div>

		</div>
	</section>

	<div class="modal fade" id="xz" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">新增</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" role="form" id="formId2">
						<div class="form-group">
							<label for="mname" class="col-sm-3 control-label">用户名:</label>
							<div class="col-sm-3" style="padding-top: 7px;">
								<input type="text" class="form-control" id="new_username"
									name="username"
									usemap="{required:true,byteRangeLength:[1,30,3],anum_:true,username:true}">
							</div>
						</div>
						<div class="form-group">
							<label for="mname" class="col-sm-3 control-label">姓名:</label>
							<div class="col-sm-3">
								<input type="text" class="form-control" id="new_realname"
									name="realname"
									usemap="{byteRangeLength:[1,30,3],required:true}">
							</div>
						</div>
						<div class="form-group">
							<label for="mname" class="col-sm-3 control-label">性别:</label>
							<div class="col-sm-3">
								<input type="text" class="form-control" id="new_sex" name="sex"
									usemap="{byteRangeLength:[1,30,3],required:true}">
							</div>
						</div>
						<div class="form-group">
							<label for="mname" class="col-sm-3 control-label">电话:</label>
							<div class="col-sm-3">
								<input type="text" class="form-control" id="new_phone"
									name="phone">
							</div>
						</div>
						<div class="form-group">
							<label for="mname" class="col-sm-3 control-label">地址:</label>
							<div class="col-sm-3">
								<input type="text" class="form-control" id="new_position"
									name="position">
							</div>
						</div>
						<div class="form-group">
							<label for="mname" class="col-sm-3 control-label">邮箱:</label>
							<div class="col-sm-3">
								<input type="text" class="form-control" id="new_email"
									name="email">
							</div>
						</div>
						<div class="form-group">
							<label for="mname" class="col-sm-3 control-label">密码:</label>
							<div class="col-sm-3">
								<input type="password" class="form-control" id="new_password"
									name="password" usemap="{compare:['new_comFirm'],required:true,anum_:true}">
							</div>
						</div>
						<div class="form-group">
							<label for="mname" class="col-sm-3 control-label">确认密码:</label>
							<div class="col-sm-3">
								<input type="password" class="form-control" id="new_comFirm"
									 usemap="{compare:['new_password'],required:true,anum_:true}" name="comFirm">
							</div>
						</div>
						<div class="form-group">
							<label for="mname" class="col-sm-3 control-label">所有角色:</label>
							<div id="role" class="col-sm-3"></div>

						</div>
						<div class="modal-footer ">
							<a class="btn btn-zdy" id="submit2">点击添加</a>
							<button type="button" class="btn btn-zdy" id="new1"
								data-dismiss="modal">取消</button>
						</div>
					</form>

				</div>

			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>
	<div class="modal fade" id="moodel" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">查看</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" role="form" id="infomation">
						<div class="form-group">
							<label for="mname" class="col-sm-3 control-label">用户名:</label>
							<div class="col-sm-3" style="padding-top: 7px;">
								<!-- 	<input type="text" class="form-control" id="usname" usemap="{byteRangeLength:[1,30,3],required:true,string:true}"> -->
								<h7 id="usname"></h7>
							</div>
						</div>
						<div class="form-group">
							<label for="mname" class="col-sm-3 control-label">姓名:</label>
							<div class="col-sm-3">
								<!-- 	<input type="text" class="form-control" name="rlname"> -->
								<h7 id="rlname"></h7>
							</div>
						</div>
						<div class="form-group">
							<label for="mname" class="col-sm-3 control-label">性别:</label>
							<div class="col-sm-3">
								<!-- <input type="text" class="form-control" id="sex"> -->
								<h7 id="sex"></h7>
							</div>
						</div>
						<div class="form-group">
							<label for="mname" class="col-sm-3 control-label">电话:</label>
							<div class="col-sm-3">
								<!-- <input type="text" class="form-control" id="phone"> -->
								<h7 id="phone"></h7>
							</div>
						</div>
						<div class="form-group">
							<label for="mname" class="col-sm-3 control-label">地址:</label>
							<div class="col-sm-3">
								<!-- 	<input type="text" class="form-control" id="position"> -->
								<h7 id="position"></h7>
							</div>
						</div>
						<div class="form-group">
							<label for="mname" class="col-sm-3 control-label">邮箱:</label>
							<div class="col-sm-3">
								<!-- <input type="text" class="form-control" i="email"> -->
								<h7 id="email"></h7>
							</div>
						</div>
						<div class="form-group">
							<label for="mname" class="col-sm-3 control-label">角色:</label>
							<div class="col-sm-3">
								<h5 id="user_role"></h5>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="ed" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">修改</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" role="form" id="updateForm">
						<div class="form-group">
							<label for="mname" class="col-sm-3 control-label">用户名:</label>
							<div class="col-sm-3" style="padding-top: 7px;">
								<h7 id="re_usname"></h7>
								<input type="hidden" id="re_usname1" name="username"> <input
									type="hidden" id="id" name="id">
							</div>
						</div>
						<div class="form-group">
							<label for="mname" class="col-sm-3 control-label">姓名:</label>
							<div class="col-sm-3">
								<input type="text" class="form-control" id="re_rlname"
									name="realname">
							</div>
						</div>
						<div class="form-group">
							<label for="mname" class="col-sm-3 control-label">性别:</label>
							<div class="col-sm-3">
								<input type="text" class="form-control" id="re_sex" name="sex">
							</div>
						</div>
						<div class="form-group">
							<label for="mname" class="col-sm-3 control-label">电话:</label>
							<div class="col-sm-3">
								<input type="text" class="form-control" id="re_phone"
									name="phone">
							</div>
						</div>
						<div class="form-group">
							<label for="mname" class="col-sm-3 control-label">地址:</label>
							<div class="col-sm-3">
								<input type="text" class="form-control" id="re_position"
									name="position">
							</div>
						</div>
						<div class="form-group">
							<label for="mname" class="col-sm-3 control-label">邮箱:</label>
							<div class="col-sm-3">
								<input type="text" class="form-control" id="re_email"
									name="email">
							</div>
						</div>
						<div class="form-group">
							<label for="mname" class="col-sm-3 control-label">密码:</label>
							<div class="col-sm-3">
								<input type="text" class="form-control" id="re_password"
									name="password">
							</div>
						</div>
						<div class="form-group">
							<label for="mname" class="col-sm-3 control-label">角色:</label>
							<div class="col-sm-3">
								<h5 id="update_role"></h5>
							</div>
						</div>
						<div class="modal-footer ">
							<button class="btn btn-zdy" id="re_submit">提交修改</button>
							<button type="button" class="btn btn-zdy" data-dismiss="modal"
								id="miss">取消</button>
						</div>

					</form>

				</div>

			</div>
		</div>
	</div>


	<!--/container-->
	<div class="clearfix"></div>
	<script type="text/javascript" src="../source/mvc/lib/cui.js"></script>
	<script type="text/javascript" src="../source/mvc/config/config.js"></script>
	<script type="text/javascript" src="../source/mvc/page/page.js"></script>
	<script type="text/javascript" src="../html/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="../source/mvc/native/OwnJs/page.js"></script>
	<script type="text/javascript">
	$('#xz').on('hide.bs.modal', function () {
		 $("#formId2").resetForm();
	})
	
		var fun;
		var options;
		CUI.use([ 'ajaxform', 'utils', 'layer' ],function($ajax, $utils, $layer) {
							return {
								initialize : function() {
									var _this = this;
									_this.pageSearch(1);
									fun = _this;
									/* 条件查询 */
									$("#submit").on("click", function() {
										_this.pageSearch(1);
									})
									/*新增用户  */
									new CuiAjaxForm($('#formId2'), {
										submitSelector : $('#submit2'),
										action : '../member/addUser',
										beforeEvent : function(formData,
												jqForm, options) {
											$.insertDynamicDataForTheForm(
													formData, jqForm, options,
													'jdbcTemplateName',
													'mysqlTemplate');
											$.insertDynamicDataForTheForm(
													formData, jqForm, options,
													'pFile', 'user');
											$.insertDynamicDataForTheForm(
													formData, jqForm, options,
													'pKey', 'add');
											return true;
										},
										callbackEvent : function(result) {
											if (result.status == 'success') {
												$("#new1").click();
												_this.pageSearch(1);
												//location.reload();
											}
										}
									});
									/* -------------------------------------------------------------- */
									var pass = document
											.getElementById("re_password");
									new CuiAjaxForm($('#updateForm'), {
										submitSelector : $('#re_submit'),
										action : '../member/setOrUpdate',
										beforeEvent : function(formData,
												jqForm, options) {
											$.insertDynamicDataForTheForm(
													formData, jqForm, options,
													'jdbcTemplateName',
													'mysqlTemplate');
											$.insertDynamicDataForTheForm(
													formData, jqForm, options,
													'pFile', 'user');
											$.insertDynamicDataForTheForm(
													formData, jqForm, options,
													'pKey', 'havaPass');
											return true;
										},
										callbackEvent : function(result) {
											if (result.status == 'success') {
												$("#miss").click();
												//_this.pageSearch(1);
												//location.reload();// 重载页面，刷新列表
												pageSearch(1);
											}
										}
									});
								},
								pageSearch : function(pageNo) {
									$.asyncRequest({
												url : '../member/pageSearch',
												data : $.extend({},{
																	"jdbcTemplateName" : "mysqlTemplate",
																	"pFile" : "user",
																	"pKey" : "select_user",
																	"type" : "mysql",
																	"pageNo" : pageNo,
																	"pageSize" : "10",
																	"order" : "",
																},
																$('#searchFrom').buildQueryInfo(),
																true),
												event : function(result) {
													if (result.status === 'success') {
														var pageSource = result.listInfo;
														$("#demoContent").html("");
														$(pageSource.list)
														.each(
																function(index, element) {
																	var ind = parseInt(index) + 1;
																	$("#demoContent")
																			.append(
																					"<tr><td>"
																					+ ind
																					+ "</td><td>"
																					+ element.username
																					+ "</td><td>"
																					+ element.realname
																					+ "</td><td>"
																					+ element.phone
																					+ "</td><td>"
																					+ element.sex
																					+ "</td><td>"
																					+ element.email
																					+ "</td><td>"
																					+ element.state
																					+ "</td><td><a style=\"cursor:pointer\" data-toggle=\"modal\" data-target=\"#moodel\" onclick=\"kan('"
																					+ element.id
																					+ "')\">查看</a> |"
																					+ " <a  style=\"cursor:pointer\" data-toggle=\"modal\" data-target=\"#ed\" onclick=\"edit('"
																					+ element.id
																					+ "')\">编辑</a> |"
																					+ " <a  style=\"cursor:pointer\" onclick=\"del('"
																					+ element.id
																					+ "')\">删除</a></td></tr>");//处理数据
																});
														
														
														$("#demoContent").append("<tr><td colspan=\"8\" id=\"pager\"></td></tr>");
												//创建分页
												var target = $('#pager');
												pageClick(pageSource.pageNo, pageSource.total,target, 10);
												
													}
												},
												errorFn : function(rr) {
													layer.alert(rr);
												}
											});
								}
							}
						});
		//删除列表

		function del(rr) {
			if (confirm("确认删除吗")) {
				$.ajax({
					url : "../member/formProcessing",
					data : {
						"jdbcTemplateName" : "mysqlTemplate,mysqlTemplate",
						"pFile" : "user,user",
						"pKey" : "del_user,del_user_details",
						"id" : rr
					},
					dataType : "json",
					type : 'post',
					async : false,
					success : function(result) {
						if (result.status === 'success') {
							fun.pageSearch(1);
						}
					}
				})
			} else {
				return;
			}
		}

		function kan(rr) {
			$.ajax({
				url : "../member/userDetailInfo",
				data : {
					"id" : rr
				},
				dataType : "json",
				async : false,
				success : function(result) {
					if (result.status === 'success') {
						//fun.search();
						var pageSource = result.userInfoList;
						$("#usname").text((pageSource[0].username));
						$("#rlname").text((pageSource[0].realname));
						$("#sex").text((pageSource[0].sex));
						$("#phone").text((pageSource[0].phone));
						$("#position").text((pageSource[0].position));
						$("#email").text((pageSource[0].email));
						var htmlrole = "";
						var roleList = result.userDetailList;
						for (var i = 0; i < roleList.length; i++) {
							htmlrole += roleList[i].rolename + "<br>"
						}
						$("#user_role").html(htmlrole);
					}
				}
			})
		}
		function edit(rr) {
			$.ajax({
						url : "../member/userDetailInfo",
						data : {
							"id" : rr
						},
						dataType : "Json",
						async : false,
						success : function(result) {
							if (result.status === 'success') {
								var pageSource = result.userInfoList;
								$("#re_usname").text((pageSource[0].username));
								$("#re_rlname").val((pageSource[0].realname));
								$("#re_sex").val((pageSource[0].sex));
								$("#re_phone").val((pageSource[0].phone));
								$("#re_position").val((pageSource[0].position));
								$("#re_email").val((pageSource[0].email));
								$("#re_usname1").val((pageSource[0].username));
								$("#id").val((pageSource[0].id));
								var roleHtml = "";
								/* 已经有的 */
								var userRoles = result.userDetailList;
								var array = [];
								for (var i = 0; i < userRoles.length; i++) {
									array.push(userRoles[i].ts_role_id);
								}
								;
								/* 	全部的 */
								var rolesList = result.rolesList;
								for (var i = 0; i < rolesList.length; i++) {
									var tag;
									if (array.indexOf(rolesList[i].id) < 0) {
										tag = "";
									} else {
										tag = "checked='checked'";
									}
									roleHtml += "<tr><td><input type=\"checkbox\" "+tag+" name=\"update_role\" value=\""+rolesList[i].id+"\">"
											+ rolesList[i].rolename
											+ "</td></tr>";
								}
								$("#update_role").html(roleHtml);
							}
						}
					})
		}
					$("#newAdd").on("click",function() {
							$.ajax({url : "../member/baseQuery",
										data : {
											"jdbcTemplateName" : "mysqlTemplate",
											"pFile" : "user",
											"pKey" : "query_role"
										},
										dataType : "json",
										async : false,
										success : function(result) {
											if (result.status === 'success') {
												pageSource = result.listInfo;
												//alert(JSON.stringify(pageSource));
												var roleHtml = "";
												for (var i = 0; i < pageSource.length; i++) {

													roleHtml += "<tr><td><input type=\"checkbox\" name=\"role\"id=\"new_role\" value=\""+pageSource[i].id+"\">"
															+ pageSource[i].rolename
															+ "</td></tr>";//处理数据
												}
												$("#role").html(roleHtml);
											}
										}
									})
						})
						/*调用init里面的方法*/
			function pageSearch(pageNo){
 				fun.pageSearch(pageNo);
 				}

	</script>
</body>
</html>