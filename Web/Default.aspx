<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Web.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="/Scripts/UMeditor/themes/default/css/umeditor.min.css" rel="stylesheet"
        type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <script type="text/javascript" src="/Scripts/jquery.js"></script>
    <script type="text/javascript">
        window.UMEDITOR_HOME_URL = "/Scripts/UMeditor/";
    </script>
    <script type="text/javascript" src="/Scripts/UMEditor/umeditor.config.js"></script>
    <script type="text/javascript" src="/Scripts/UMEditor/umeditor.min.js"></script>
    <textarea id="myEditor" style="width: 1024px;" name="后台取值的key"></textarea>
    <script type="text/javascript">
        UM.getEditor('myEditor', { toolbar: [
            'source | undo redo | bold italic underline strikethrough | superscript subscript | forecolor backcolor | removeformat |',
            'insertorderedlist insertunorderedlist | selectall cleardoc paragraph | fontfamily fontsize',
            '| justifyleft justifycenter justifyright justifyjustify |',
            'link unlink | emotion image insertvideo  | map',
            '| horizontal print preview fullscreen | touppercase '
        ]
        });
    </script>
    </form>
</body>
</html>
