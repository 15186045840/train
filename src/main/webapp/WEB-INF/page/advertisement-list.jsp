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

    <title>广告管理</title>

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
          <h1 class="page-header">广告列表</h1>

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
                        确认删除所选广告吗
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                        <button type="button" class="btn btn-primary delete-selected-confirm">确认</button>
                      </div>
                    </div>
                  </div>
                </div>
            	<button type="button" class="btn btn-default show-add-form" data-toggle="modal" data-target="#advertisement-form-div">添加新广告</button>
                <!--添加新广告表单-->
                <div class="modal fade " id="advertisement-form-div" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
                  <div class="modal-dialog modal-md" role="document">
                    <div class="modal-content">
                      <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="advertisement-form-title" ></h4>
                      </div>
                      <div class="modal-body">
                      	<form class="advertisement-form">
                          <div class="form-group">
                            <label for="idInput">ID</label>
                            <input type="text" name="aId" class="form-control" id="idInput" placeholder="广告ID">
                          </div>
                          <div class="form-group">
                            <label for="typeInput">类型</label>
                            <input type="text" name="aType" class="form-control" id="typeInput" placeholder="广告类型">
                          </div>
                          <div class="form-group">
                            <label for="titleInput">标题</label>
                            <input type="text" name="aTitle" class="form-control" id="titleInput" placeholder="广告标题">
                          </div>
                          <div class="form-group">
                            <label for="contentInput">内容</label>
                            <input type="text" name="aContent" class="form-control" id="contentInput" placeholder="广告内容">
                          </div>
                          <div class="form-group">
                            <label for="linkInput">链接</label>
                            <input type="text" name="aLink" class="form-control" id="linkInput" placeholder="广告链接">
                          </div>
                        </form>
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                        <button type="button" class="btn btn-primary advertisement-submit"></button>
                      </div>
                    </div>
                  </div>
                </div>
            </div>
            <div class="space-div"></div>
              <table class="table table-hover table-bordered advertisement-list">
                    <tr>
                        <td><input type="checkbox" class="select-all-btn"/></td>
                        <td>ID</td>
                        <td>类型</td>
                        <td>标题</td>
                        <td>内容</td>
                        <td>链接</td>
                        <td>操作</td>
                    </tr>
                    <c:forEach items="${advertisements }" var="advertisement">
	                    <tr>
	                        <td><input type="checkbox" name="advertisementIds" value="${advertisement.aId }"/></td>
	                        <td class="advertisementid">${advertisement.aId }</td>
	                        <td>${advertisement.aType }</td>
	                        <td>${advertisement.aTitle }</td>
	                        <td><a href="javascript:void(0);" class="show-advertisement-content" >查看</a></td>
	                        <td>${advertisement.aLink }</td>
	                        <td><a class="glyphicon glyphicon-pencil show-advertisementinfo-form" aria-hidden="true" title="修改广告信息" href="javascript:void(0);" data-toggle="modal" data-target="#advertisement-form-div"></a>
	                    	<a class="glyphicon glyphicon-remove delete-this-advertisement" aria-hidden="true" title="删除广告" href="javascript:void(0);"></a></td>
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
    	function resetAdvertisementForm(title,button){
    		$(".advertisement-form input[type='text']").val("");
			$(".advertisement-form input[type='checkbox']").prop("checked",false);

			$(".advertisement-form-title").html(title);
			$(".advertisement-submit").html(button);
       	}
    	$(".select-all-btn").change(function(){
			if($(this).is(":checked")){//$(this).prop("checked")
				$(".advertisement-list input[type='checkbox']:gt(0)").prop("checked",true);
			}else{
				$(".advertisement-list input[type='checkbox']:gt(0)").prop("checked",false);
			}
		});
		$(".delete-selected-confirm").click(function(){
			$("#delete-confirm-dialog").modal("hide");
			var cbs=$("input[name='advertisementIds']:checked")
			if(cbs.length===0){
				showTips("没有选中任意项！");
			}else{
				var advertisementIds=new Array();
				$.each(cbs,function(i,cb){
					advertisementIds[i]=cb.value;
				});
				//请求删除所选广告
				$.ajax({
					url:"deletemore.html",
					data:{advertisementIds:advertisementIds},
					type:"POST",
					traditional:true,
					success:function(){
						cbs.parent().parent().remove();
						showTips("删除所选成功！");
					}
				});
			}
		});
    $(".advertisement-list").on("click",".show-advertisement-content",function(){
      var advertisementId=$(this).parents("tr").find(".advertisementid").html();
      var advertisementTd=$(this).parent();
      //请求查看广告内容
      $.ajax({
        url:"getadvertisement.html",
        data:{advertisementId:advertisementId},
        type:"POST",
        dataType:"json",
        success:function(data){
          advertisementTd.html("");
          var content=data.aContent;
          advertisementTd.append(content);
        }
      });
    });
		$(".show-add-form").click(function(){
			resetAdvertisementForm("添加新广告","添加");
		});
		$(".advertisement-list").on("click",".show-advertisementinfo-form",function(){
			resetAdvertisementForm("更新广告信息","更新");
			
			var advertisementId=$(this).parents("tr").find(".advertisementid").html();
			$.ajax({
				url:"getadvertisement.html",
				data:{advertisementId:advertisementId},
				type:"POST",
				dataType:"json",
				success:function(data){
					$(".advertisement-form input[name='aId']").val(advertisementId);
					$(".advertisement-form input[name='aType']").val(data.aType);
					$(".advertisement-form input[name='aTitle']").val(data.aTitle);
					$(".advertisement-form input[name='aContent']").val(data.aContent);
					$(".advertisement-form input[name='aLink']").val(data.aLink);
				}
			});
		});
		$(".advertisement-submit").click(function(){
			if($(this).html()==="添加"){
				//请求添加新广告
				$.ajax({
					url:"add.html",
					type:"POST",
					data:$(".advertisement-form").serialize(),
					dataType:"json",
					success:function(data){
						$("#advertisement-form-div").modal("hide");
						showTips("添加成功！");
						
						var newTr='<tr>'+
	                        '<td><input type="checkbox" name="advertisementIds" value="'+data.jId+'"/></td>'+
	                        '<td class="advertisementid">'+data.aId+'</td>'+
	                        '<td>'+data.aType+'</td>'+
	                        '<td>'+data.aTitle+'</td>'+
	                        '<td><a href="javascript:void(0);" class="show-advertisement-content" >查看</a></td>'+
	                        '<td>'+data.aLink+'</td>'+
	                        '<td><a class="glyphicon glyphicon-pencil show-advertisementinfo-form" aria-hidden="true" title="修改广告信息" href="javascript:void(0);" data-toggle="modal" data-target="#advertisement-form-div"></a> '+
	                    	'<a class="glyphicon glyphicon-remove delete-this-advertisement" aria-hidden="true" title="删除广告" href="javascript:void(0);"></a></td>'+
	                    '</tr>';
						$(".advertisement-list tr").eq(0).after(newTr);
					}
				});
			}else{
				//请求更新广告
				$.ajax({
					url:"update.html",
					data:$(".advertisement-form").serialize(),
					type:"POST",
					success:function(){
						$("#advertisement-form-div").modal("hide");
						showTips("更新成功！");
					}
				});
			}
		});
		$(".advertisement-list").on("click",".delete-this-advertisement",function(){
			var advertisementTr=$(this).parents("tr");
			var advertisementId=advertisementTr.find(".advertisementid").html();
			if(confirm('确认删除ID为"'+advertisementId+'"的广告吗？')){
				//请求删除该广告
				$.ajax({
					url:"delete.html",
					data:{advertisementId:advertisementId},
					type:"POST",
					success:function(){
						advertisementTr.remove();
						showTips("删除成功！");
					}
				});
			}
		});
    </script>
  </body>
</html>
