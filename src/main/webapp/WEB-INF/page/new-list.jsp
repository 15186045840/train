<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>动态管理</title>

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
          <h1 class="page-header">动态列表</h1>

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
                        确认删除所选动态吗
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                        <button type="button" class="btn btn-primary delete-selected-confirm">确认</button>
                      </div>
                    </div>
                  </div>
                </div>
            	<button type="button" class="btn btn-default show-add-form" data-toggle="modal" data-target="#new-form-div">添加新动态</button>
                <!--添加新动态表单-->
                <div class="modal fade " id="new-form-div" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
                  <div class="modal-dialog modal-md" role="document">
                    <div class="modal-content">
                      <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="new-form-title" ></h4>
                      </div>
                      <div class="modal-body">
                      	<form class="new-form">
                          <div class="form-group">
                            <label for="idInput">ID</label>
                            <input type="text" name="nId" class="form-control" id="idInput" placeholder="动态ID">
                          </div>
                          <div class="form-group">
                            <label for="typeInput">类型</label>
                            <input type="text" name="nType" class="form-control" id="typeInput" placeholder="动态类型">
                          </div>
                          <div class="form-group">
                            <label for="titleInput">标题</label>
                            <input type="text" name="nTitle" class="form-control" id="titleInput" placeholder="动态标题">
                          </div>
                          <div class="form-group">
                            <label for="contentInput">内容</label>
                            <input type="text" name="nContent" class="form-control" id="contentInput" placeholder="动态内容">
                          </div>
                          <div class="form-group">
                            <label for="urlInput">资源链接</label>
                            <input type="text" name="nUrl" class="form-control" id="urlInput" placeholder="资源链接">
                          </div>
                        </form>
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                        <button type="button" class="btn btn-primary new-submit"></button>
                      </div>
                    </div>
                  </div>
                </div>
            </div>
            <div class="space-div"></div>
              <table class="table table-hover table-bordered new-list">
                    <tr>
                        <td><input type="checkbox" class="select-all-btn"/></td>
                        <td>ID</td>
                        <td>类型</td>
                        <td>标题</td>
                        <td>内容</td>
                        <td>资源链接</td>
                        <td>发布时间</td>
                        <td>操作</td>
                    </tr>
                    <c:forEach items="${news }" var="news">
	                    <tr>
	                        <td><input type="checkbox" name="newIds" value="${news.nId }"/></td>
	                        <td class="newid">${news.nId }</td>
	                        <td>${news.nType }</td>
	                        <td>${news.nTitle }</td>
	                        <td><a href="javascript:void(0);" class="show-new-content" >查看</a></td>
	                        <td>${news.nUrl }</td>
                          <td>${news.nDate }</td>
	                        <td><a class="glyphicon glyphicon-pencil show-newinfo-form" aria-hidden="true" title="修改动态信息" href="javascript:void(0);" data-toggle="modal" data-target="#new-form-div"></a>
	                    	<a class="glyphicon glyphicon-remove delete-this-new" aria-hidden="true" title="删除动态" href="javascript:void(0);"></a></td>
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
    	function resetNewForm(title,button){
    		$(".new-form input[type='text']").val("");
			$(".new-form input[type='checkbox']").prop("checked",false);

			$(".new-form-title").html(title);
			$(".new-submit").html(button);
       	}
    	$(".select-all-btn").change(function(){
			if($(this).is(":checked")){//$(this).prop("checked")
				$(".new-list input[type='checkbox']:gt(0)").prop("checked",true);
			}else{
				$(".new-list input[type='checkbox']:gt(0)").prop("checked",false);
			}
		});
		$(".delete-selected-confirm").click(function(){
			$("#delete-confirm-dialog").modal("hide");
			var cbs=$("input[name='newIds']:checked")
			if(cbs.length===0){
				showTips("没有选中任意项！");
			}else{
				var newIds=new Array();
				$.each(cbs,function(i,cb){
					newIds[i]=cb.value;
				});
				//请求删除所选动态
				$.ajax({
					url:"deletemore.html",
					data:{newIds:newIds},
					type:"POST",
					traditional:true,
					success:function(){
						cbs.parent().parent().remove();
						showTips("删除所选成功！");
					}
				});
			}
		});
    $(".new-list").on("click",".show-new-content",function(){
      var newId=$(this).parents("tr").find(".newid").html();
      var newTd=$(this).parent();
      //请求查看动态内容
      $.ajax({
        url:"getnew.html",
        data:{newId:newId},
        type:"POST",
        dataType:"json",
        success:function(data){
          newTd.html("");
          var content=data.nContent;
          newTd.append(content);
        }
      });
    });
		$(".show-add-form").click(function(){
			resetNewForm("添加新动态","添加");
		});
		$(".new-list").on("click",".show-newinfo-form",function(){
			resetNewForm("更新动态信息","更新");
			
			var newId=$(this).parents("tr").find(".newid").html();
			$.ajax({
				url:"getnew.html",
				data:{newId:newId},
				type:"POST",
				dataType:"json",
				success:function(data){
					$(".new-form input[name='nId']").val(newId);
					$(".new-form input[name='nType']").val(data.nType);
					$(".new-form input[name='nTitle']").val(data.nTitle);
					$(".new-form input[name='nContent']").val(data.nContent);
					$(".new-form input[name='nUrl']").val(data.nUrl);
				}
			});
		});
		$(".new-submit").click(function(){
			if($(this).html()==="添加"){
				//请求添加新动态
				$.ajax({
					url:"add.html",
					type:"POST",
					data:$(".new-form").serialize(),
					dataType:"json",
					success:function(data){
						$("#new-form-div").modal("hide");
						showTips("添加成功！");
						
						var newTr='<tr>'+
	                        '<td><input type="checkbox" name="newIds" value="'+data.nId+'"/></td>'+
	                        '<td class="newid">'+data.nId+'</td>'+
	                        '<td>'+data.nType+'</td>'+
	                        '<td>'+data.nTitle+'</td>'+
	                        '<td><a href="javascript:void(0);" class="show-new-content" >查看</a></td>'+
	                        '<td>'+data.nUrl+'</td>'+
                          '<td>'+data.nDate+'</td>'+
	                        '<td><a class="glyphicon glyphicon-pencil show-newinfo-form" aria-hidden="true" title="修改动态信息" href="javascript:void(0);" data-toggle="modal" data-target="#new-form-div"></a> '+
	                    	'<a class="glyphicon glyphicon-remove delete-this-new" aria-hidden="true" title="删除动态" href="javascript:void(0);"></a></td>'+
	                    '</tr>';
						$(".new-list tr").eq(0).after(newTr);
					}
				});
			}else{
				//请求更新动态
				$.ajax({
					url:"update.html",
					data:$(".new-form").serialize(),
					type:"POST",
					success:function(){
						$("#new-form-div").modal("hide");
						showTips("更新成功！");
					}
				});
			}
		});
		$(".new-list").on("click",".delete-this-new",function(){
			var newTr=$(this).parents("tr");
			var newId=newTr.find(".newid").html();
			if(confirm('确认删除ID为"'+newId+'"的动态吗？')){
				//请求删除该动态
				$.ajax({
					url:"delete.html",
					data:{newId:newId},
					type:"POST",
					success:function(){
						newTr.remove();
						showTips("删除成功！");
					}
				});
			}
		});
    </script>
  </body>
</html>
