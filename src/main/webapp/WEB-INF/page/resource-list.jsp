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

    <title>资源管理</title>

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
          <h1 class="page-header">资源列表</h1>

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
                        确认删除所选资源吗
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                        <button type="button" class="btn btn-primary delete-selected-confirm">确认</button>
                      </div>
                    </div>
                  </div>
                </div>
            	<button type="button" class="btn btn-default show-add-form" data-toggle="modal" data-target="#resource-form-div">添加新资源</button>
                <!--添加新资源表单-->
                <div class="modal fade " id="resource-form-div" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
                  <div class="modal-dialog modal-md" role="document">
                    <div class="modal-content">
                      <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="resource-form-title" ></h4>
                      </div>
                      <div class="modal-body">
                      	<form class="resource-form">
                          <div class="form-group">
                            <label for="idInput">ID</label>
                            <input type="text" name="rId" class="form-control" id="idInput" placeholder="资源ID">
                          </div>
                          <div class="form-group">
                            <label for="nameInput">描述</label>
                            <input type="text" name="rName" class="form-control" id="nameInput" placeholder="资源描述">
                          </div>
                          <div class="form-group">
                            <label for="typeInput">类型</label>
                            <input type="text" name="rType" class="form-control" id="typeInput" placeholder="资源类型">
                          </div>
                          <div class="form-group">
                            <label for="linkInput">Url</label>
                            <input type="text" name="rLink" class="form-control" id="linkInput" placeholder="资源类型">
                          </div>
                        </form>
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                        <button type="button" class="btn btn-primary resource-submit"></button>
                      </div>
                    </div>
                  </div>
                </div>
            </div>
            <div class="space-div"></div>
              <table class="table table-hover table-bordered resource-list">
                    <tr>
                        <td><input type="checkbox" class="select-all-btn"/></td>
                        <td>ID</td>
                        <td>描述</td>
                        <td>类型</td>
                        <td>Url</td>
                        <td>操作</td>
                    </tr>
                    <c:forEach items="${resources }" var="resource">
	                    <tr>
	                        <td><input type="checkbox" name="resourceIds" value="${resource.rId }"/></td>
	                        <td class="resourceid">${resource.rId }</td>
	                        <td>${resource.rName }</td>
	                        <td>${resource.rType }</td>
	                        <td>${resource.rLink }</td>
	                        <td><a class="glyphicon glyphicon-pencil show-resourceinfo-form" aria-hidden="true" title="修改资源信息" href="javascript:void(0);" data-toggle="modal" data-target="#resource-form-div"></a>
	                    	<a class="glyphicon glyphicon-remove delete-this-resource" aria-hidden="true" title="删除资源" href="javascript:void(0);"></a></td>
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
    	function resetResourceForm(title,button){
    		$(".resource-form input[type='text']").val("");
			$(".resource-form input[type='checkbox']").prop("checked",false);

			$(".resource-form-title").html(title);
			$(".resource-submit").html(button);
       	}
    	$(".select-all-btn").change(function(){
			if($(this).is(":checked")){//$(this).prop("checked")
				$(".resource-list input[type='checkbox']:gt(0)").prop("checked",true);
			}else{
				$(".resource-list input[type='checkbox']:gt(0)").prop("checked",false);
			}
		});
		$(".delete-selected-confirm").click(function(){
			$("#delete-confirm-dialog").modal("hide");
			var cbs=$("input[name='resourceIds']:checked")
			if(cbs.length===0){
				showTips("没有选中任意项！");
			}else{
				var resourceIds=new Array();
				$.each(cbs,function(i,cb){
					resourceIds[i]=cb.value;
				});
				//请求删除所选角色
				$.ajax({
					url:"deletemore.html",
					data:{resourceIds:resourceIds},
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
			resetResourceForm("添加新资源","添加");
		});
		$(".resource-list").on("click",".show-resourceinfo-form",function(){
			resetResourceForm("更新资源信息","更新");
			
			var resourceId=$(this).parents("tr").find(".resourceid").html();
			$.ajax({
				url:"getresource.html",
				data:{resourceId:resourceId},
				type:"POST",
				dataType:"json",
				success:function(data){
					$(".resource-form input[name='rId']").val(resourceId);
					$(".resource-form input[name='rName']").val(data.rName);
					$(".resource-form input[name='rType']").val(data.rType);
					$(".resource-form input[name='rLink']").val(data.rLink);
				}
			});
		});
		$(".resource-submit").click(function(){
			if($(this).html()==="添加"){
				//请求添加新资源
				$.ajax({
					url:"add.html",
					type:"POST",
					data:$(".resource-form").serialize(),
					dataType:"json",
					success:function(data){
						$("#resource-form-div").modal("hide");
						showTips("添加成功！");
						
						var newTr='<tr>'+
	                        '<td><input type="checkbox" name="resourceIds" value="'+data.rId+'"/></td>'+
	                        '<td class="resourceid">'+data.rId+'</td>'+
	                        '<td>'+data.rName+'</td>'+
	                        '<td>'+data.rType+'</td>'+
	                        '<td>'+data.rLink+'</td>'+
	                        '<td><a class="glyphicon glyphicon-pencil show-resourceinfo-form" aria-hidden="true" title="修改资源信息" href="javascript:void(0);" data-toggle="modal" data-target="#resource-form-div"></a> '+
	                    	'<a class="glyphicon glyphicon-remove delete-this-resource" aria-hidden="true" title="删除资源" href="javascript:void(0);"></a></td>'+
	                    '</tr>';
						$(".resource-list tr").eq(0).after(newTr);
					}
				});
			}else{
				//请求更新资源
				$.ajax({
					url:"update.html",
					data:$(".resource-form").serialize(),
					type:"POST",
					success:function(){
						$("#resource-form-div").modal("hide");
						showTips("更新成功！");
					}
				});
			}
		});
		$(".resource-list").on("click",".delete-this-resource",function(){
			var resourceTr=$(this).parents("tr");
			var resourceId=resourceTr.find(".resourceid").html();
			if(confirm('确认删除ID为"'+resourceId+'"的资源吗？')){
				//请求删除该资源
				$.ajax({
					url:"delete.html",
					data:{resourceId:resourceId},
					type:"POST",
					success:function(){
						resourceTr.remove();
						showTips("删除成功！");
					}
				});
			}
		});
    </script>
  </body>
</html>
