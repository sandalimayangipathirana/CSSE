<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<body>
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