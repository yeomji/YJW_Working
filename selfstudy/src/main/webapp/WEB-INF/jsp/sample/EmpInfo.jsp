<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 
<html>
<head>
<title>사원정보</title>
<%@ include file="/WEB-INF/include/include-header.jspf" %>
</head>
<body>
    <form id="EMP_Info">
        <table class="board_view">
            <colgroup>
                <col width="25%" >
                <col width="25%" >
                <col width="25%" >
                <col width="25%" >
            </colgroup>
            <caption>사원정보</caption>
            <tbody>
                <tr>
                    <th scope="row">사번</th>
                    <td><input type="text"  name="EMP_CODE" value="${EMP.EMP_CODE}" ></td>
                    <th scope="row">성명</th>
                    <td><input type="text"  name="EMP_NAME" value="${EMP.EMP_NAME}"/></td>
                </tr>
                <tr>
                    <th scope="row">주민번호</th>
                    <td><input type="text" name="JUMIN_NO" value="${EMP.JUMIN_NO}"/></td>
                    <th scope="row">핸드폰</th>
                    <td><input type="text" name="HP_NO" value="${EMP.HP_NO}"/></td>
                </tr>
                <tr>
                	<th scope="row" colspan="4">주소</th>
                    
                </tr>
                <tr>
                	<td scope="row" colspan="4"><textarea name="JUMIN_ADDR1" rows="10" cols="128">${EMP.JUMIN_ADDR1}</textarea></td>
                </tr>
            </tbody>
        </table>
         
        <a href="#this" id="write" class="btn">저장</a>
        <a href="#this" id="list" class="btn">취소</a>
    </form>
    
    <%@ include file="/WEB-INF/include/include-body.jspf" %>  
     
    <script type="text/javascript">
    
        $(document).ready(function(){
            $("#list").on("click",function(e){
                e.preventDefault();
                fn_openEmpList();
            })
            
            $("#write").on("click",function(e){
                e.preventDefault();
                fn_writeEmp();
            })
        });
         
        function fn_openEmpList(){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/sample/openSampleEmpList.do'/>");
            comSubmit.submit();
        }
         
        function fn_writeEmp(){
            var comSubmit = new ComSubmit("EMP_Info");
            comSubmit.setUrl("<c:url value='/sample/writeEmpInfo.do'/>");
            comSubmit.submit();
        }
        
    </script>
</body>
</html>