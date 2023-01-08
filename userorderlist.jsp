
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>All my orders</title>
</head>
<body>
<%@ include file="header.jsp" %>
<br>
_____________________________________________________________________________
<h1>All my orders</h1>
<ul>
  <c:forEach var="userorderlist" items="${requestScope.userorderlist}">
    <li>
      <a href="${pageContext.request.contextPath}/see_info_about_order?id=${userorderlist.id}">
        Order id: ${userorderlist.id}, User id: ${userorderlist.userInfoId}, Room id: ${userorderlist.roomId},
        Begin time: ${userorderlist.beginTimeOfTheOrder}, End time: ${userorderlist.endTimeOfTheOrder},
        Condition: ${userorderlist.condition}, Message: ${userorderlist.message}
      </a>
    </li>
  </c:forEach>
</ul><br>
<form action="${pageContext.request.contextPath}/download_user_report" method="get">
  <button type="submit">Download my orders</button>
</form>
_____________________________________________________________________________
<%@include file="footer.jsp" %>
</body>
</html>