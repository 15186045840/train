<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>学员管理 - 学员列表</title>

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
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <h1 class="page-header">学员列表</h1>
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
                             确认删除所选学员吗
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                        <button type="button" class="btn btn-primary delete-selected-confirm">确认</button>
                      </div>
                    </div>
                  </div>
                </div>
                <button type="button" class="btn btn-primary show-student-form" data-toggle="modal" data-target="#add-student-form">添加新学员</button>
                <!--添加新学员表单-->
                <div class="modal fade " id="add-student-form" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
                  <div class="modal-dialog modal-sm" role="document">
                    <div class="modal-content">
                      <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" >添加新学员</h4>
                      </div>
                      <div class="modal-body">
                        <form class="student-form">
                          <div class="form-group">
                            <label for="studentIdInput">账号</label>
                            <input type="text" name="sId" class="form-control" id="studentIdInput" placeholder="账号">
                          </div>
                          <div class="form-group">
                            <label for="studentNameInput">姓名</label>
                            <input type="text" name="sName" class="form-control" id="studentNameInput" placeholder="姓名">
                          </div>
                          <div class="form-group">
                            <label for="passwordInput">密码</label>
                            <input type="password" name="sPassword" class="form-control" id="passwordInput" placeholder="密码">
                          </div>
                          <div class="form-group">
                            <label for="ageInput">年龄</label>
                            <input type="text" name="sAge" class="form-control" id="ageInput" placeholder="年龄">
                          </div>
                          <div class="form-group">
                            <label for="passwordInput">性别</label><br>
                            <input id="man" type="radio" value="男"  name="sSex" />男
                            <input id="woman" type="radio" value="女" name="sSex"/>女
                          </div>
                        </form>
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                        <button type="button" class="btn btn-primary add-student-submit">添加 </button>
                      </div>
                    </div>
                  </div>
                </div>
            </div>
            <div class="space-div"></div>
            <table class="table table-hover table-bordered student-list">
              <tr>
                  <td><input type="checkbox" class="select-all-btn"/></td>
                    <td>账号</td>
                    <td>姓名</td>
                    <td>性别</td>
                    <td>年龄</td>
                    <td>创建时间</td>
                    <td>操作</td>
                </tr>
                <c:forEach items="${students }" var="student">
                  <tr>
                    <td><input type="checkbox" name="studentIds" value="${student.sId }"/></td>
                    <td class="studentid">${student.sId }</td>
                    <td class="studentname">${student.sName }</td>
                    <td class="studentsex">${student.sSex }</td>
                    <td class="studentage">${student.sAge }</td>
                    <td class="studentdate">${student.sDate }</td>
                    <td>
                      <a class="glyphicon glyphicon-remove delete-this-student" aria-hidden="true" title="删除学员" href="javascript:void(0);"></a>
                    </td>
                  </tr>
                </c:forEach>
            </table>
          </div>          
        </div>
    </div>
    <!-- 提示框 -->
    <script src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
    <script>

      //删除多个学员
    $(".delete-selected-confirm").click(function(){
      $("#delete-confirm-dialog").modal("hide");
      var cbs=$("input[name='studentIds']:checked")
      if(cbs.length===0){
        showTips("没有选中任意项！");
      }else{
        var studentids=new Array();
        $.each(cbs,function(i,cb){
          studentids[i]=cb.value;
        });
        //请求删除所选学员
        $.ajax({
          url:"deletemore.html",
          data:{studentIds:studentids},
          type:"POST",
          traditional:true,
          success:function(){
            cbs.parent().parent().remove();
            showTips("删除所选成功！");
          }
        });
      }
    });

    //添加学员
    $(".add-student-submit").click(function(){
      //请求添加新用户
      $.ajax({
        url:"add.html",
        data:$(".student-form").serialize(),
        type:"POST",
        dataType:"json",
        success:function(data){
          $("#add-student-form").modal("hide");
          showTips("添加成功！");

          var newTr="<tr><td><input type='checkbox' name='studentIds' value="+data.sId+"/></td>"+
                    "<td class='studentid'>"+data.sId+"</td>"+
                    "<td class='studentname'>"+data.sName+"</td>"+
                    "<td class='studentage'>"+data.sAge+"</td>"+
                    "<td class='studentsex'>"+data.sSex+"</td>"+
                    "<td class='studentdate'>"+data.sDate+"</td>"+
                    "<td>"+
                      "<a class='glyphicon glyphicon-remove delete-this-student' aria-hidden='true' title='删除学员' href='javascript:void(0);'></a>"+
                    "</td></tr>";
          $(".student-list tr").eq(0).after(newTr);
        }
      });
    });

    
    //删除学员
    $(".student-list").on("click",".delete-this-student",function(){
      var studentTr=$(this).parents("tr");
      var studentid=studentTr.find(".studentid").html();
      if(confirm('确认删除ID为"'+studentid+'"的学员吗？')){
        //请求删除该学员
        $.ajax({
          url:"delete.html",
          data:{studentId:studentid},
          type:"POST",
          success:function(){
            studentTr.remove();
            showTips("删除成功！");
          }
        });
      }
    });
    </script>
  </body>
</html>
