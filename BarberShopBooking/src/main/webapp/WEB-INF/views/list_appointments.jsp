<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Danh Sách Lịch Hẹn</title>
</head>
<body>
<h2>Danh Sách Lịch Hẹn</h2>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Ngày</th>
        <th>Giờ bắt đầu</th>
        <th>Giờ kết thúc</th>
    </tr>
    <c:forEach var="a" items="${appointments}">
        <tr>
            <td>${a.appointmentId}</td>
            <td>${a.appointmentDate}</td>
            <td>${a.startTime}</td>
            <td>${a.endTime}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
