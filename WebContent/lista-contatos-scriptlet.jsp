<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="java.util.*,
        br.com.caelum.jdbc.dao.*,
        br.com.caelum.jdbc.modelo.*"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<body>
	<table style="width: 100%">
		<tr>
			<th>nome</th>
			<th>Email</th>
			<th>Endereço</th>
			<th>Data</th>
		</tr>
		<%
			ContatoDao dao = new ContatoDao();
			List<Contato> contatos = dao.getLista();
			for (Contato contato : contatos) {
		%>

		<tr>
			<td><%=contato.getNome()%></td>
			<td><%=contato.getEmail()%></td>
			<td><%=contato.getEndereco()%></td>
			<td><%=new java.text.SimpleDateFormat("dd/MM/yyyy").format(new java.util.Date())%></td>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>