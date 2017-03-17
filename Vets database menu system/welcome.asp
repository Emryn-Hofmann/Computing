<%
 'declare the variables 
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

Set Connection = Server.CreateObject("ADODB.Connection")
Connection.Open connectstr
Set Command = Server.CreateObject("ADODB.Command")
Command.ActiveConnection = Connection
Command.CommandText = "SELECT EMail, Pw, RegistrationId, FirstName, Surname FROM TblOwner WHERE Email = ? AND Pw = ?"
Command.Parameters.Append Command.CreateParameter("SEmail", adVarchar, adParamInput, 512, SEmail)
Command.Parameters.Append Command.CreateParameter("SPassword", adVarchar, adParamInput, 512, SPassword)

Set rs = Command.Execute()
Set isUserFound = False
Do Until rs.EOF
    for each column in rs.fields
        response.write(column.name)
        response.write("=")
        response.write(column.value)
        response.write(", ")
    next
    response.write("<br />")
	Session("uid") = rs("RegistrationId")

    Set isUserFound = True
    rs.MoveNext
Loop

If isUserFound Then 
Response.Write("Login Successful!")
Else
Response.Write("Incorrect Login - no such owner!") 
End If
 %>