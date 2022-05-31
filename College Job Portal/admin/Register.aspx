﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="College_Job_Portal.admin.Register" MasterPageFile="~/admin/Menu.Master" %>


<asp:Content ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ContentPlaceHolderID="title" runat="server">Welcome | DashBoard</asp:Content>
<asp:Content ContentPlaceHolderID="Heading" runat="server">

    <div>
        <center>学生注册</center>
    </div>
</asp:Content>


<asp:Content ContentPlaceHolderID="body" runat="server">

    <div class="box box-danger">
        <div class="box-header with-border">
        </div>
        <form role="form" runat="server" method="post" action="">
        <div class="box-body">

            <div class="row">
                <div class="col-xs-6">
                    <asp:textbox  id="rollno" runat="server" Cssclass="form-control" placeholder="学号"/>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="rollno" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="rollno" ErrorMessage="error"   ValidationExpression="^[0-9]*$" ForeColor="RED" />
                     </div>
                <div class="col-xs-6">
                               <asp:textbox  id="name" runat="server"  Cssclass="form-control" placeholder="姓名" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="name" ErrorMessage="*"  ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>
            <br />
                <div class="row">
                <div class="col-xs-6">
                    <div class="form-group">
                <div class="input-group">
                  <div class="input-group-addon">
                    <i class="fa fa-calendar"></i>
                  </div>
                   <asp:textbox  id="dob" runat="server"  Cssclass="form-control" placeholder="出生日期 YYYY-MM-DD"/>
                   
                     </div> <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="dob"  runat="server" ErrorMessage="*"  ForeColor="Red"></asp:RequiredFieldValidator>
                <!-- /.input group -->
              </div>
                </div>
                <div class="col-xs-6">
                    <div class="form-group">
                        <asp:DropDownList ID="Gender" class="form-control select2" style="width: 100%;" runat="server" >
            <asp:ListItem  selected="selected" disabled="disabled" value="-1">--性别--</asp:ListItem>
            <asp:ListItem Value="男">男</asp:ListItem>
            <asp:ListItem value="女">女</asp:ListItem>        
        </asp:DropDownList>
                        <asp:RequiredFieldValidator InitialValue="-1" ID="RequiredFieldValidator4" Display="Dynamic" 
    runat="server" ControlToValidate="Gender" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>
         

            <div class="row">
                <div class="col-xs-6">
                    <div class="form-group">
                        <asp:DropDownList ID="Scourse" class="form-control select2" Style="width: 100%;" runat="server">
                            <asp:ListItem Selected="selected" disabled="disabled" Value="-1">--学院--</asp:ListItem>
                            <asp:ListItem Value="信息工程学院">信息工程学院</asp:ListItem>
                            <asp:ListItem Value="外国语学院">外国语学院</asp:ListItem>
                            <asp:ListItem Value="商学院">商学院</asp:ListItem>
                            <asp:ListItem Value="土木工程学院">土木工程学院</asp:ListItem>
                        </asp:DropDownList>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" InitialValue="-1" Display="Dynamic" ControlToValidate="Scourse" runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="col-xs-6">
                    <div class="form-group">
                         <asp:DropDownList ID="SYear" class="form-control select2" Style="width: 100%;" runat="server">
                            <asp:ListItem Selected="selected" disabled="disabled" Value="-1">--年级--</asp:ListItem>
                            <asp:ListItem Value="2019">2019</asp:ListItem>
                            <asp:ListItem Value="2020">2020</asp:ListItem>
                            <asp:ListItem Value="2021">2021</asp:ListItem>
                        </asp:DropDownList>           
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator6" InitialValue="-1" Display="Dynamic"  ControlToValidate="SYear" runat="server" ErrorMessage="*"  ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                
            </div>
            <br />
            <div class="row">
                <div class="col-xs-6">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
                        <asp:TextBox TextMode="email" runat="server" ID="email" CSSclass="form-control" placeholder="Email"/>
                       
                          </div> <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="email" ErrorMessage="*"  ForeColor="Red"></asp:RequiredFieldValidator>
                          <asp:RegularExpressionValidator ID="RegularExpressionValidator3"
                              runat="server" ErrorMessage="格式错误" ControlToValidate="email"
                              ForeColor="Red"
                              ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                  </asp:RegularExpressionValidator>
                </div>
                <div class="col-xs-6">
                     <asp:TextBox TextMode="Phone" runat="server" ID="mob" class="form-control" placeholder="手机"/>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*" ControlToValidate="mob"  ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="mob" ErrorMessage="error"   ValidationExpression="^[0-9]*$" ForeColor="RED" />
                 
                       </div>
            </div>
            <br />
                        <div class="row">
                <div class="col-xs-6">
                     <asp:TextBox TextMode="Password" runat="server" ID="password" class="form-control" placeholder="密码"  ForeColor="Red"/>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="password" ErrorMessage="*"  ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <div class="col-xs-6">
                    <asp:FileUpload ID="FileUpload1" runat="server" /> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="FileUpload1" ErrorMessage="*"  ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>
            <br />
              <div class="box-footer" >
                <center>
 <asp:Label ID="Label" runat="server"  ForeColor="#00CC00"><%=Session["REG"] %></asp:Label>
<br /> <br />
                    <asp:Button ID="Button1"   Text="提交" runat="server" class="btn btn-primary" OnClick="btn_Submit" />
                             
              </center>
                    </div>
         


        </div>   </form>
        <!-- /.box-body -->
    </div>




</asp:Content>
