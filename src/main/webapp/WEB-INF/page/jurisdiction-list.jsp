<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <title>用户管理</title>

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/static/css/layout.css" rel="stylesheet">
  </head>

  <body>

    <!-- 头部 -->
    <jsp:include page="header.jsp"/>

    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
          <jsp:include page="navibar.jsp"/>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <h1 class="page-header">权限列表</h1>

          <div class="row placeholders">
            	<div>
            	<button type="button" class="btn btn-warning delete-query" data-toggle="modal" data-target="#delete-confirm-dialog">删除所选</button>
                <!--  删除所选对话框 -->
                <div class="modal fade " id="delete-confirm-dialog" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
                  <div class="modal-dialog modal-sm" role="document">
                    <div class="modal-content">
                      <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" >警告</h4>
                      </div>
                      <div class="modal-body">
                        确认删除所选权限吗
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                        <button type="button" class="btn btn-primary delete-selected-confirm">确认</button>
                      </div>
                    </div>
                  </div>
                </div>
            	<button type="button" class="btn btn-default show-add-form" data-toggle="modal" data-target="#jurisdiction-form-div">添加新权限</button>
                <!--添加新权限表单-->
                <div class="modal fade " id="jurisdiction-form-div" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
                  <div class="modal-dialog modal-md" role="document">
                    <div class="modal-content">
                      <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="jurisdiction-form-title" ></h4>
                      </div>
                      <div class="modal-body">
                      	<form class="jurisdiction-form">
                          <div class="form-group">
                            <label for="idInput">ID</label>
                            <input type="text" name="jId" class="form-control" id="idInput" placeholder="权限ID">
                          </div>
                          <div class="form-group">
                            <label for="descInput">描述</label>
                            <input type="text" name="jDescribe" class="form-control" id="descInput" placeholder="权限描述">
                          </div>
                          <div class="form-group">
                            <label for="urlInput">URL</label>
                            <input type="text" name="jUrl" class="form-control" id="urlInput" placeholder="URL">
                          </div>
                          <div class="checkbox">
                            <label>
                            	<input type="checkbox" name="jNavigation" value="1" >是否导航结点
                           	</label>
                          </div>
                          <div class="form-group">
                            <label for="codeInput">权限代码</label>
                            <input type="text" name="jCode" class="form-control" id="codeInput" placeholder="权限代码">
                          </div>
                        </form>
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                        <button type="button" class="btn btn-primary jurisdiction-submit"></button>
                      </div>
                    </div>
                  </div>
                </div>
            </div>
            <div class="space-div"></div>
              <table class="table table-hover table-bordered jurisdiction-list">
                    <tr>
                        <td><input type="checkbox" class="select-all-btn"/></td>
                        <td>ID</td>
                        <td>描述</td>
                        <td>URL</td>
                        <td>是否导航结点</td>
                        <td>权限代码</td>
                        <td>操作</td>
                    </tr>
                    <c:forEach items="${jurisdictions }" var="jurisdiction">
	                    <tr>
	                        <td><input type="checkbox" name="jurisdictionIds" value="${jurisdiction.jId }"/></td>
	                        <td class="jurisdictionid">${jurisdiction.jId }</td>
	                        <td>${jurisdiction.jDescribe }</td>
	                        <td>${jurisdiction.jUrl }</td>
	                        <td>${jurisdiction.jNavigation }</td>
	                        <td>${jurisdiction.jCode }</td>
	                        <td><a class="glyphicon glyphicon-pencil show-jurisdictioninfo-form" aria-hidden="true" title="修改权限信息" href="javascript:void(0);" data-toggle="modal" data-target="#jurisdiction-form-div"></a>
	                    	<a class="glyphicon glyphicon-remove delete-this-jurisdiction" aria-hidden="true" title="删除权限" href="javascript:void(0);"></a></td>
	                    </tr>
                    </c:forEach>
              </table>
          </div>          
        </div>
      </div>
    </div>
	
	<!-- 提示框 -->
	<div class="modal fade" id="op-tips-dialog" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
      <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content">
        	<div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" >提示信息</h4>
          </div>
          <div class="modal-body" id="op-tips-content">
          </div>
        </div>
      </div>
    </div>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
    <script>
    	function showTips(contents){
    		$("#op-tips-content").html(contents);
			$("#op-tips-dialog").modal("show");
    	}
    	function resetJurisdictionForm(title,button){
    		$(".jurisdiction-form input[type='text']").val("");
			$(".jurisdiction-form input[type='checkbox']").prop("checked",false);

			$(".jurisdiction-form-title").html(title);
			$(".jurisdiction-submit").html(button);
       	}
    	$(".select-all-btn").change(function(){
			if($(this).is(":checked")){//$(this).prop("checked")
				$(".jurisdiction-list input[type='checkbox']:gt(0)").prop("checked",true);
			}else{
				$(".jurisdiction-list input[type='checkbox']:gt(0)").prop("checked",false);
			}
		});
		$(".delete-selected-confirm").click(function(){
			$("#delete-confirm-dialog").modal("hide");
			var cbs=$("input[name='jurisdictionIds']:checked")
			if(cbs.length===0){
				showTips("没有选中任意项！");
			}else{
				var jurisdictionIds=new Array();
				$.each(cbs,function(i,cb){
					jurisdictionIds[i]=cb.value;
				});
				//请求删除所选角色
				$.ajax({
					url:"deletemore.html",
					data:{jurisdictionIds:jurisdictionIds},
					type:"POST",
					traditional:true,
					success:function(){
						cbs.parent().parent().remove();
						showTips("删除所选成功！");
					}
				});
			}
		});
		$(".show-add-form").click(function(){
			resetJurisdictionForm("添加新权限","添加");
		});
		$(".jurisdiction-list").on("click",".show-jurisdictioninfo-form",function(){
			resetJurisdictionForm("更新权限信息","更新");
			
			var jurisdictionId=$(this).parents("tr").find(".jurisdictionid").html();
			$.ajax({
				url:"getjurisdiction.html",
				data:{jurisdictionId:jurisdictionId},
				type:"POST",
				dataType:"json",
				success:function(data){
					$(".jurisdiction-form input[name='jId']").val(jurisdictionId);
					$(".jurisdiction-form input[name='jDescribe']").val(data.jDescribe);
					$(".jurisdiction-form input[name='jUrl']").val(data.jUrl);
					if(data.jNavigation==="1"){
						$(".jurisdiction-form input[type='checkbox'][name='jNavigation']").prop("checked",true);
					}
					$(".jurisdiction-form input[name='jCode']").val(data.jCode);
				}
			});
		});
		$(".jurisdiction-submit").click(function(){
			if($(this).html()==="添加"){
				//请求添加新权限
				$.ajax({
					url:"add.html",
					type:"POST",
					data:$(".jurisdiction-form").serialize(),
					dataType:"json",
					success:function(data){
						$("#jurisdiction-form-div").modal("hide");
						showTips("添加成功！");
						
						var newTr='<tr>'+
	                        '<td><input type="checkbox" name="jurisdictionIds" value="'+data.jId+'"/></td>'+
	                        '<td class="jurisdictionid">'+data.jId+'</td>'+
	                        '<td>'+data.jDescribe+'</td>'+
	                        '<td>'+data.jUrl+'</td>'+
	                        '<td>'+data.jNavigation+'</td>'+
	                        '<td>'+data.jCode+'</td>'+
	                        '<td><a class="glyphicon glyphicon-pencil show-jurisdictioninfo-form" aria-hidden="true" title="修改权限信息" href="javascript:void(0);" data-toggle="modal" data-target="#jurisdiction-form-div"></a> '+
	                    	'<a class="glyphicon glyphicon-remove delete-this-jurisdiction" aria-hidden="true" title="删除权限" href="javascript:void(0);"></a></td>'+
	                    '</tr>';
						$(".jurisdiction-list tr").eq(0).after(newTr);
					}
				});
			}else{
				//请求更新权限
				$.ajax({
					url:"update.html",
					data:$(".jurisdiction-form").serialize(),
					type:"POST",
					success:function(){
						$("#jurisdiction-form-div").modal("hide");
						showTips("更新成功！");
					}
				});
			}
		});
		$(".jurisdiction-list").on("click",".delete-this-jurisdiction",function(){
			var jurisdictionTr=$(this).parents("tr");
			var jurisdictionId=jurisdictionTr.find(".jurisdictionid").html();
			if(confirm('确认删除ID为"'+jurisdictionId+'"的角色吗？')){
				//请求删除该权限
				$.ajax({
					url:"delete.html",
					data:{jurisdictionId:jurisdictionId},
					type:"POST",
					success:function(){
						jurisdictionTr.remove();
						showTips("删除成功！");
					}
				});
			}
		});
    </script>
  </body>
</html>
