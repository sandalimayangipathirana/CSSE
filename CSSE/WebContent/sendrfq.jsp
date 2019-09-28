<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
<% Class.forName("com.mysql.cj.jdbc.Driver"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
<link href="css/verttab.css" rel="stylesheet" type="text/css" />
<script type=”text/javascript” src=”bootstrap/js/bootstrap.min.js”></script>
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.4.1.min.js"></script>
  

</head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<body>
<%@page import="com.procurement.*,java.util.*"%>
<div class="container" align="center">
  <div class="jumbotron">
    <h1>Company name</h1>      
    <p>Company Address</p>
  </div>
  </div>
<div class="nav">
            <div class="container" >
                <div class="tabbable">
                    <ul class="nav nav-tabs" data-tabs="tabs" id="myTab">
                        <li class="active"><a data-toggle="tab" href="#dashboard">Dash Board</a></li>
                        <li><a data-toggle="tab" href="#settings">Settings</a></li>
                        <li><a data-toggle="tab" href="#budgets">Budgets</a></li>
                        <li><a data-toggle="tab" href="#venders">Vendors</a></li>
                        <li><a data-toggle="tab" href="#reports">Reports</a></li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane active" id="dashboard">
                            
                        </div>
                        <div class="tab-pane" id="settings">
                            
                        </div>
                        <div class="tab-pane" id="budgets">
                           
                        </div>
                        <div class="tab-pane" id="venders">
                           <div class="tab">
  <button class="tablinks" onclick="openTab(event, 'sendrfq')" id="defaultOpen">Send RFQ</button>
  <button class="tablinks" onclick="openTab(event, 'inputvendorqualification')">Input Vendor Qualification</button>
  <button class="tablinks" onclick="openTab(event, 'venderregistration')">Vender Registration</button>
  <button class="tablinks" onclick="openTab(event, 'venderreport')">Vender Report</button>
</div>

<div id="sendrfq" class="tabcontent">
  
    <h3>Send RFQ to Vendors</h3>      
    
    <% 
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/csse", "root", "123");

            Statement statement = con.createStatement() ;
            ResultSet resultset = statement.executeQuery("select * from rfq") ;
              
        %>
    <table border="1" width="700px" cellpadding="1">  
<th><b>Reg_No</b></th><th><b>Registered For</b></th><th><b>Reg_Dept</b></th><th><b>Reg_Title</b></th>
  <th><b>Reg_Date</b></th><th><b>RegToal</b></th>
   <th><b>Reg_Status</b></th><th><b> </b></th><th><b> </b></th>
			<%
				while (resultset.next()) {
			%>
			
			
			<tr>
				
				<td><%= resultset.getString(1) %></td>
				<td><%= resultset.getString(2) %></td>
				<td><%= resultset.getString(3) %></td>
				<td><%= resultset.getString(4) %></td>
				<td><%= resultset.getString(5) %></td>
				<td><%= resultset.getString(6) %></td>
				<td><%= resultset.getString(7) %></td>
				<td><a href="ApprovedRFQServlet?id=<%=resultset.getString(1) %>">View More</a></td><td>
				<%
}
%>
				

			</tr>

		</table> 
    
</div>

<div id="inputvendorqualification" class="tabcontent">
  
</div>

<div id="venderregistration" class="tabcontent">
  
</div>

<div id="venderreport" class="tabcontent">
  
</div>
</div>
<script>
function openTab(evt, Tabname) {
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablinks");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" active", "");
  }
  document.getElementById(Tabname).style.display = "block";
  evt.currentTarget.className += " active";
}
// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
</script>

                        </div>
                        <div class="tab-pane" id="reports">
                            
                        </div>
                    </div>
                </div>  
            </div>
        </div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    </body>
</body>
</html>