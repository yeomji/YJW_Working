<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>EmpList</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="/WEB-INF/include/include-header.jspf" %>
</head>
<body>
<h2>사원목록</h2>
<form id="frm">
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
                        <td><input type="hidden" id="EMP_CODE" value="${row.EMP_CODE}"/><a class="EMP_CODE" href="#this" name="EMP_CODE">${row.EMP_CODE}</a></td>
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
</form>
<a href="#this" id="Empinfo" class="btn">신규사원등록</a>
<%@ include file="/WEB-INF/include/include-body.jspf" %>  

<script type="text/javascript">

	$(document).ready(function(){
		
		$("a[name='EMP_CODE']").on("click",function(e){
            e.preventDefault();
            fn_openEmpDetail($(this));
        })
        
	    $("#Empinfo").on("click",function(e){
	        e.preventDefault();
	        fn_openEmpinfo();
	    })
        
	});
	 
	function fn_openEmpinfo(){
	    var comSubmit = new ComSubmit();
	    comSubmit.setUrl("<c:url value='/sample/openEmpInfo.do'/>");
	    comSubmit.submit();
	}

    function fn_openEmpDetail(val){
        var comSubmit = new ComSubmit();
        comSubmit.addParam("EMP_CODE", val.parent().find("#EMP_CODE").val());
        comSubmit.setUrl("<c:url value='/sample/openEmpInfoDetail.do'/>");
        comSubmit.submit();
    }
    
</script>
</body>
</html>