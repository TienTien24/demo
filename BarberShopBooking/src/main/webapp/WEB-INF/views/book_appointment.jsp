<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Đặt Lịch</title>
</head>
<body>
<h2>Đặt Lịch Cắt Tóc</h2>
<form action="${pageContext.request.contextPath}/appointment/book" method="post">
    Ngày: <input type="date" name="appointmentDate" /><br/>
    Giờ bắt đầu: <input type="time" name="startTime" /><br/>
    Giờ kết thúc: <input type="time" name="endTime" /><br/>
    <button type="submit">Đặt lịch</button>
</form>
</body>
</html>
