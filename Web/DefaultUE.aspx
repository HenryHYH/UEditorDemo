<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DefaultUE.aspx.cs" Inherits="Web.DefaultUE" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Hello UEditor</title>
    <link href="/Scripts/Ueditor/themes/default/css/ueditor.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .clear { clear: both; }
        .block { float: left; border: 1px solid #ccc; padding: 5px; margin: 5px; max-width: 700px; }
        .content p { margin: 0; }
        .editor { }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="block editor">
            <textarea name="后台取值的key" id="txtEditor">这里写你的初始化内容</textarea>
        </div>
        <div class="clear"></div>
        <div class="block content" id="divContent"></div>
    </form>
    <script type="text/javascript" src="/Scripts/jquery-1.10.2.min.js"></script>
    <script type="text/javascript">
        window.UEDITOR_HOME_URL = "/Scripts/UEditor/";
    </script>
    <script type="text/javascript" src="/Scripts/UEditor/ueditor.config.js"></script>
    <script type="text/javascript" src="/Scripts/UEditor/ueditor.all.min.js"></script>
    <script type="text/javascript">

        var editor;
        $(function () {
            editor = UE.getEditor('txtEditor', {
                imagePath: '<%= UEditor.Uploader.FILE_UPLOAD_PATH %>',
                filePath: "",
                focus: true,
                lang: "en",
                autoHeightEnabled: false
            });
            //alert(window.UEDITOR_CONFIG.imagePath);
            editor.addListener("contentChange", function () {
                Post();
            });
        });
        var Post = function () {
            $("#divContent").html(editor.getContent());
        }
    </script>
</body>
</html>
