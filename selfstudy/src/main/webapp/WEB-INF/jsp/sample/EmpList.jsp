<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>EmpList</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="/WEB-INF/include/include-header.jspf" %>
<link rel="stylesheet" href="css/SampleStyle.css">
</head>
<body>
<h2>EmpList</h2>
<table>
    <colgroup>
        <col width="10%"/>
        <col width="10%"/>
        <col width="15%"/>
        <col width="*"/>
    </colgroup>
    <thead>
        <tr>
            <th scope="col">사번</th>
            <th scope="col">사원명</th>
            <th scope="col">핸드폰</th>
            <th scope="col">주소</th>
        </tr>
    </thead>
    <tbody>
       <c:choose>
            <c:when test="${fn:length(list) > 0}">
                <c:forEach items="${list}" var="row">
                    <tr>
                        <td>${row.EMP_CODE}</td>
                        <td>${row.EMP_NAME}</td>
                        <td>${row.HP_NO}</td>
                        <td>${row.JUMIN_ADDR1}</td>
                    </tr>
                </c:forEach>
            </c:when>
            <c:otherwise>
                <tr>
                    <td colspan="4">조회된 결과가 없습니다.</td>
                </tr>
            </c:otherwise>
        </c:choose>
          
    </tbody>
</table>
</body>
</html>