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

    <title>课程列表</title>

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
          <h1 class="page-header">课程列表</h1>
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
                        确认删除所选课程吗
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                        <button type="button" class="btn btn-primary delete-selected-confirm">确认</button>
                      </div>
                    </div>
                  </div>
                </div>
            	<button type="button" class="btn btn-default show-add-form" data-toggle="modal" data-target="#course-form-div">添加新课程</button>
                <!--添加新课程表单-->
                <div class="modal fade " id="course-form-div" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
                  <div class="modal-dialog modal-md" role="document">
                    <div class="modal-content">
                      <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="course-form-title" ></h4>
                      </div>
                      <div class="modal-body">
                      	<form class="course-form">
                      	  <div class="form-group">
                            <label for="courseIdInput">ID</label>
                            <input type="text" name="cId" class="form-control" id="courseIdInput" placeholder="课程ID">
                          </div>
                          <div class="form-group">
                            <label for="courseNameInput">名称</label>
                            <input type="text" name="cName" class="form-control" id="courseNameInput" placeholder="课程名">
                          </div>
                          <div class="form-group">
                            <label for="typeInput">类型</label>
                            <input type="text" name="cType" class="form-control" id="typeInput" placeholder="课程类型">
                          </div>
                          <div class="form-group">
                            <label for="teacherInput">授课老师</label>
                            <input type="text" name="cTeacher" class="form-control" id="teacherInput" placeholder="课程老师">
                          </div>
                          <div class="form-group">
                            <label for="describeInput">描述</label>
                            <input type="text" name="cDescribe" class="form-control" id="describeInput" placeholder="课程描述">
                          </div>
                          <div class="form-group">
                            <label>设置资源</label>
                            <div class="resource-inputs"></div>
                          </div>
                        </form>
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                        <button type="button" class="btn btn-primary course-submit"></button>
                      </div>
                    </div>
                  </div>
                </div>
            </div>
            <div class="space-div"></div>
            <table class="table table-hover table-bordered course-list">
            	<tr>
                	<td><input type="checkbox" class="select-all-btn"/></td>
                    <td>ID</td>
                    <td>名称</td>
                    <td>类型</td>
                    <td>授课老师</td>
                    <td>描述</td>
                    <td>拥有资源</td>
                    <td>操作</td>
                </tr>
                <c:forEach items="${courses }" var="course">
	                <tr>
	                	<td><input type="checkbox" name="courseIds" value="${course.cId }"/></td>
	                    <td class="courseid">${course.cId }</td>
	                    <td>${course.cName }</td>
	                    <td>${course.cType }</td>
	                    <td>${course.cTeacher }</td>
	                    <td>${course.cDescribe }</td>
	                    <td><a href="javascript:void(0);" class="show-course-resources" >查看所有资源</a></td>
	                    <td><a class="glyphicon glyphicon-pencil show-courseinfo-form" aria-hidden="true" title="修改课程信息" href="javascript:void(0);" data-toggle="modal" data-target="#course-form-div"></a>
	                    	<a class="glyphicon glyphicon-remove delete-this-role" aria-hidden="true" title="删除课程" href="javascript:void(0);"></a></td>
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
       	function resetCourseForm(title,button){
           	$(".course-form input[type='text']").val("");
			$(".course-form input[type='checkbox']").prop("checked",false);
       		$(".course-form-title").html(title);
			$(".course-submit").html(button);
      	}
       	function getAllResources(obj){
        	obj.html("");
    		$.ajax({
				url:"listresources.html",
				type:"POST",
				dataType:"json",
				success:function(data){
					for(var i in data){
						obj.append('<input type="checkbox" name="resourceIds" value="'+
								data[i].rId+'"/>'+data[i].rName+':');
						obj.append("<br/>");
					}
				}
			});
       	}
    	$(".select-all-btn").change(function(){
			if($(this).is(":checked")){//$(this).prop("checked")
				$(".course-list input[type='checkbox']:gt(0)").prop("checked",true);
			}else{
				$(".course-list input[type='checkbox']:gt(0)").prop("checked",false);
			}
		});
		$(".delete-selected-confirm").click(function(){
			$("#delete-confirm-dialog").modal("hide");
			var cbs=$("input[name='courseIds']:checked")
			if(cbs.length===0){
				showTips("没有选中任意项！");
			}else{
				var courseIds=new Array();
				$.each(cbs,function(i,resource){
					courseIds[i]=resource.value;
				});
				//请求删除所选课程
				$.ajax({
					url:"deletemore.html",
					data:{courseIds:courseIds},
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
			resetCourseForm("添加新课程","添加");
			getAllResources($(".resource-inputs"));
		});
		function getResourcesByCourseId(courseId,doSuccess){
			$.ajax({
				url:"showcourseresources.html",
				data:{courseId:courseId},
				type:"POST",
				dataType:"json",
				success:function(data){
					doSuccess(data);
				}
			});
		}
		$(".course-list").on("click",".show-course-resources",function(){
			var courseId=$(this).parents("tr").find(".courseid").html();
			var courseTd=$(this).parent();
			//请求查看用户课程
			getResourcesByCourseId(courseId,function(data){
				courseTd.html("");
				for(var i in data){
					var course=data[i].rName+"<br/>";
					courseTd.append(course);
				}
			});
		});
		$(".course-list").on("click",".show-courseinfo-form",function(){
			resetCourseForm("更新课程信息","更新");
			getAllResources($(".resource-inputs"));
			var courseId=$(this).parents("tr").find(".courseid").html();
			$("input[name='courseId']").val(courseId);
			$.ajax({
				url:"getcourse.html",
				data:{courseId:courseId},
				type:"POST",
				dataType:"json",
				success:function(data){
					$("input[name='cId']").val(data.cId);
					$("input[name='cName']").val(data.cName);
					$("input[name='cType']").val(data.cType);
					$("input[name='cTeacher']").val(data.cTeacher);
					$("input[name='cDescribe']").val(data.cDescribe);
				}
			});
			getResourcesByCourseId(courseId,function(data){
				for(var i in data){
					$('.course-form input[name="resourceIds"][value="'+data[i].rId+'"]').prop("checked",true);
				}
			});
		});
		$(".course-submit").click(function(){
			if($(this).html()==="添加"){
				//请求添加新课程
				$.ajax({
					url:"add.html",
					type:"POST",
					data:$(".course-form").serialize(),
					dataType:"json",
					success:function(data){
						$("#course-form-div").modal("hide");
						showTips("添加成功！");
						
						var newTr=
							'<tr>'+
			                	'<td><input type="checkbox" name="courseIds" value="'+data.cId+'"/></td>'+
			                    '<td class="courseid">'+data.cId+'</td>'+
			                    '<td>'+data.cName+'</td>'+
			                    '<td>'+data.cType+'</td>'+
			                    '<td>'+data.cTeacher+'</td>'+
			                    '<td>'+data.cDescribe+'</td>'+
			                    '<td><a href="javascript:void(0);" class="show-course-resources" >查看所有资源</a></td>'+
			                    '<td><a class="glyphicon glyphicon-pencil show-courseinfo-form" aria-hidden="true" title="修改课程信息" href="javascript:void(0);" data-toggle="modal" data-target="#course-form-div"></a> '+
			                   		 '<a class="glyphicon glyphicon-remove delete-this-role" aria-hidden="true" title="删除课程" href="javascript:void(0);"></a></td>'+
		                	'</tr>';
						$(".course-list tr").eq(0).after(newTr);
					}
				});
			}else{
				//更新课程信息
				$.ajax({
					url:"update.html",
					data:$(".course-form").serialize(),
					type:"POST",
					success:function(){
						$("#course-form-div").modal("hide");
						showTips("更新成功！");
					}
				});
			}
		});
		$(".course-list").on("click",".delete-this-role",function(){
			var courseTr=$(this).parents("tr");
			var courseId=courseTr.find(".courseid").html();
			if(confirm('确认删除ID为"'+courseId+'"的课程吗？')){
				//请求删除该用户
				$.ajax({
					url:"delete.html",
					data:{courseId:courseId},
					type:"POST",
					success:function(){
						courseTr.remove();
						showTips("删除成功！");
					}
				});
			}
		});
    </script>
  </body>
</html>
