<%@ Language="VBScript" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="refresh" content="15; url=http://google.com">
        <title></title>
    </head>
    <body>
        <p>You will be redirected to google in <span id="timeout"></span></p>
    </body>
</html>
<script>
    var timeout = 15;
    var element = document.getElementById("timeout");
    window.setInterval(function () {
        element.innerText = timeout + " second" + (timeout === 1 ? "" : "s");
        timeout -= 1;

    }, 1000);
</script>