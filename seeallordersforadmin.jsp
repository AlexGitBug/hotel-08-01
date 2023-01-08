
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
  <title>See all orders for admin</title>
</head>
<body>
<%@ include file="header.jsp" %><br>
_____________________________________________________________________________
<h1>Список всех заказов</h1>
<ul>
  <c:forEach var="allorders" items="${requestScope.allorders}">
    <li>
      <a href="${pageContext.request.contextPath}/checkorder">
        Order id: ${allorders.id}, User id: ${allorders.userInfoId}, Room id: ${allorders.roomId},
        Begin time: ${allorders.beginTimeOfTheOrder}, End time: ${allorders.endTimeOfTheOrder},
        Condition: ${allorders.condition}, Message: ${allorders.message}
      </a>
    </li>
  </c:forEach>
</ul>
</form>

_____________________________________________________________________________
<%@include file="footer.jsp" %>
</body>
</html>