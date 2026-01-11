<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="hello.servlet.domain.member.MemberRepository" %>
<%@ page import="hello.servlet.domain.member.Member" %>

<%
    MemberRepository memberRepository = MemberRepository.getInstance();
    List<Member> members = memberRepository.findAll();
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원 목록</title>
</head>
<body>

<a href="/index.html">메인</a>

<table border="1">
    <thead>
        <tr>
            <th>id</th>
            <th>username</th>
            <th>age</th>
        </tr>
    </thead>
    <tbody>
    <%
        for (Member member : members) {
    %>
        <tr>
            <td><%= member.getId() %></td>
            <td><%= member.getUsername() %></td>
            <td><%= member.getAge() %></td>
        </tr>
    <%
        }
    %>
    </tbody>
</table>

</body>
</html>