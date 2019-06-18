
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		String id=request.getParameter("id");
		String pw=request.getParameter("pw");
		
		if(id.equals("smhrd") &&pw.equals("1234")){
			session.setAttribute("id", id);
			response.sendRedirect("result.jsp");
			
		}else{
			response.sendRedirect("input.jsp");
			
		}
		System.out.print("ㅇㅇ");
				
	%>
</body>
</html>