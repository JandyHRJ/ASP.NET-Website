<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgot.aspx.cs" Inherits="College_Job_Portal.admin.forgot" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
	<meta name="robots" content="noindex, follow" />
    <meta name="viewport" content="width=device-width, minimum-scale=1, maximum-scale=1" />
    <link href="css/bootstrap.css" rel="stylesheet" />

	<link rel="stylesheet" type="text/css" href="css/framework-all.css">
    <link rel="shortcut icon" href="favicon.ico" />

	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/framework.js"></script>
	<script type="text/javascript" src="validation.js"></script>
		    <link href="css/style.css" rel="stylesheet" />

</head>
<body style="background-color:#66BB6A" class="" data-style="bg:#1F2C36" style="overflow:auto; height:100%">
<?php
if(isset($_REQUEST['msg']))
	$msg=$_REQUEST['msg'];
else
	$msg="";
?>

<div class="container">
	<div class="col-lg-4 col-md-4 col-sm-4"></div>
	<div class="col-lg-4 col-md-4 col-sm-4 login text-center">
        <form id="form1" runat="server">
	<h3 class="txt-center">忘记密码</h3>

	<asp:TextBox class="form-control" ID="TextBox1" runat="server" placeholder="用户名" data-style="mb:7"></asp:TextBox>

	       <div class="err" style="color: red" id="err_id">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </div> 

	&nbsp;<asp:Button class="btn btn-primary txt-center" style="margin-top:10px;" type="submit" ID="Button1" runat="server" OnClick="Button1_Click" Text="重置" />
           
	<p data-style="mt:20" style="padding-top:10px;">记起了密码? <a href="index.aspx">返回登录</a></p>
        </form>
</div>
				<div class="col-lg-4 col-md-4 col-sm-4"></div>

</div>

</body>


</html>