<%@ page language="java"  import="java.util.*" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%--<%@page contentType="text/html; charset=GB2312"%>--%>

<%@ page import="dao.impl.FilmImpl" %>
<%@ page import="model.FilmSelect" %>
<%! FilmImpl test = new FilmImpl();%>
<%--<%@ page isELIgnored="false" %>--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
      <title>搜索界面</title>
      <link rel="stylesheet" href="./css/select.css">
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  </head>
  <body>
  <form class="form-inline" id="divm" method="post" action="select.jsp" >
      <div class="form-group" id="div1">
          <label for="SearchId">Id</label>
          <input type="text" class="form-control" name="SearchId" id="SearchId">
      </div>
      <div class="form-group" id="div2">
          <label for="SearchName">Name</label>
          <input type="text" class="form-control" name="SearchName" id="SearchName">
      </div>
      <div><img src="./images/Search.png" onclick="out()"></div>
      <input type="submit" name="submit" value="搜索">
  </form>

    <table class="table table-hover">
      <thead>
        <tr>
            <th>ID</th>
            <th>姓名</th>
            <th>地址</th>
            <th>电话号码</th>
            <th>邮箱地址</th>
            <th>其他</th>
        </tr>
      </thead>
        <tbody id="tbody1">

        </tbody>
    </table>

  <%
      request.setCharacterEncoding("utf-8");
      String id = request.getParameter("SearchId");
      String name = request.getParameter("SearchName");
      List<FilmSelect> ids = null;
      if (id == "" && name == ""){
          System.out.println("no message!");
      }
      else if(id != "" && name == "") {
          ids = test.selectAllFilmById(id);
      }
      else if (name != "" && id == ""){
          ids = test.selectAllFilmByName(name);
      }
  %>

  <script type="text/javascript">
      let nam = '<%=ids%>'.slice(1, -1);
      if (nam != "ul") {
          let arr = nam.split(",");
          let arrs = "";
          for (let i = 0; i < arr.length; i++) {
              arrs += arr[i];
              document.getElementById("tbody1").innerHTML = arrs;
          }
      }
  </script>

  </body>
</html>
