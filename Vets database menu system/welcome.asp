<!--#include file="dbConnection.inc"-->

<%
 'declare the variables 
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