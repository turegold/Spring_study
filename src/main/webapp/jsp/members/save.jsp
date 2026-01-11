<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="hello.servlet.domain.member.MemberRepository" %>
<%@ page import="hello.servlet.domain.member.Member" %>

<%
    // request, response는 JSP에서 기본 제공
    MemberRepository memberRepository = MemberRepository.getInstance();

    System.out.println("save.jsp");

    String username = request.getParameter("username");
    int age = Integer.parseInt(request.getParameter("age"));

    Member member = new Member(username, age);
    System.out.println("member = " + member);

    memberRepository.save(member);
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원 저장 결과</title>
</head>
<body>

<h2>성공</h2>

<ul>
    <li>id = <%= member.getId() %></li>
    <li>username = <%= member.getUsername() %></li>
    <li>age = <%= member.getAge() %></li>
</ul>

<a href="/index.html">메인</a>

</body>
</html>