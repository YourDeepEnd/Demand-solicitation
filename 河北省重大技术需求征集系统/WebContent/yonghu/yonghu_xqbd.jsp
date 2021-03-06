<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>表单</title>
<style type="text/css">
html,body,div,li,form,input,th,td{font-family:楷体; font-size:100%;}
ul,ol,li{ list-style:none;}

table {
	border-collapse: collapse;
	border: none;
	margin: 0px auto;
	width: 100%;
}

th, td {
	border: Groove #000000 1px;
	height: 20px;
	margin-bottom: 12px; line-height: 25px;  opacity: 1.0;
}

div{
	text-align: center;
}
</style>
</head>
<body>
    <jsp:useBean id="db" class="bean.DBbean" scope="page" />
	<%
	request.setCharacterEncoding("UTF-8");
	String no = request.getParameter("no");
	String tech_no = request.getParameter("tech");
	String s = "select * from basis_information where no='"+no+"' and tech_no='"+tech_no+"';";
	ResultSet rs = db.executeQuery(s);
	rs.next();
	
	%>
	<center>
	<h1>查看需求</h1>
	</center>
	<form action="yonghu_panduan.jsp" method="post">
	<table>
		<tr>
			<th width="15%">机构名称</th>
			<td width="40%" align="left"><%=rs.getString(18)%></td>
			<th width="15%">机构编码</th>
			<td width="30%" align="left"><%=rs.getString(1)%></td>
		</tr>
		
		<tr>
		    <th width="15%">技术需求名称</th>
			<td width="40%" align="left"><%=rs.getString(3)%></td>
			<th width="15%">需求编码</th>
			<td width="30%" align="left"><%=rs.getString(2)%></td>
		</tr>

		<tr>
		    <th colspan=4>技术需求概述</th>
		</tr>
		
		<tr>
		    <th width="15%">主要问题</th>
			<td width="85%" colspan=3><%=rs.getString(4)%></td>
		</tr>
		
		<tr>
		    <th width="15%">技术关键</th>
			<td width="85%" colspan=3><%=rs.getString(5)%></td>
		</tr>
		
		<tr>
		    <th width="15%">预期目标</th>
			<td width="85%" colspan=3><%=rs.getString(6)%></td>
		</tr>
	</table>
	<table>
		<tr>
		    <th width="15%">开始年限</th>
			<td width="35%" align="left"><%=rs.getString(7)%></td>
			<th width="15%">结束年限</th>
			<td width="35%" align="left"><%=rs.getString(8)%></td>
		</tr>
		
		<tr>
		    <th width="15%">关键字</th>
			<td width="35%" align="left"><%=rs.getString(9)%></td>
		    <th width="15%">拟投资金额</th>
			<td width="35%" align="left"><%=rs.getString(10)%>万元</td>
		</tr>
		
		<tr>
		    <th width="15%">技术需求解决方式</th>
			<td width="35%" align="left"><%=rs.getString(11)%></td>
		    <th width="15%">合作意向单位</th>
			<td width="35%" align="left"><%=rs.getString(12)%></td>
		</tr>
		
		<tr>
		    <th width="15%">科技活动类型</th>
			<td width="85%" colspan=3><%=rs.getString(13)%></td>
		</tr>
		
		<tr>
		    <th width="15%">学科分类</th>
			<td width="85%" colspan=3><%=rs.getString(14)%></td>
		</tr>
		
		<tr>
		    <th width="15%">需求技术领域</th>
			<td width="85%" colspan=3><%=rs.getString(15)%></td>
		</tr>
		
		<tr>
		    <th width="15%">应用行业</th>
			<td width="85%" colspan=3><%=rs.getString(16)%></td>
		</tr>	
	</table><br><br>
	    <center>
	        <input type="hidden" name="no" value="<%=no%>">
	        <input type="hidden" name="tech" value="<%=tech_no%>">
	        <input type="submit" name="submit" value="确定" style="width:80px;height:30px;">
	    </center>
	    </form>
</body>
</html>