<%
Dim Connection
Dim ConnectionStr
Dim Recordset
Dim SQL
db_server = "localhost"
db_name = "db1"
db_username = "root"
db_userpassword = "1saacNewton"
SEmail = Request.Form("FEmail")
SPassword = Request.Form("FPassword")
connectstr = "Driver={MySQL ODBC 5.3 UNICODE Driver};SERVER=" & db_server & ";DATABASE=" & db_name & ";UID=" & db_username & ";PWD=" & db_userpassword
connectstr = "Provider=MSDASQL.1;Password=1saacNewton;Persist Security Info=True;User ID=root;Extended Properties=""Driver={MySQL ODBC 5.3 UNICODE Driver};SERVER=localhost;DATABASE=db1"""
Set Connection = Server.CreateObject("ADODB.Connection")
Connection.Open connectstr
Set Command = Server.CreateObject("ADODB.Command")
Command.ActiveConnection = Connection
%>