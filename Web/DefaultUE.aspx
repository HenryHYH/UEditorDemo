<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DefaultUE.aspx.cs" Inherits="Web.DefaultUE" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Hello UEditor</title>
    <link href="/Scripts/Ueditor/themes/default/css/ueditor.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <textarea name="后台取值的key" id="myEditor">这里写你的初始化内容</textarea>
    </div>
    </form>
    <script type="text/javascript" src="/Scripts/jquery-1.10.2.min.js"></script>
    <script type="text/javascript">
        window.UEDITOR_HOME_URL = "/Scripts/UEditor/";
    </script>
    <script type="text/javascript" src="/Scripts/UEditor/ueditor.config.js"></script>
    <script type="text/javascript" src="/Scripts/UEditor/ueditor.all.min.js"></script>
    <script type="text/javascript">
        $(function () {
            UE.getEditor('myEditor', {
                focus: true,
                lang: "en"
            });
        });
    </script>
</body>
</html>
