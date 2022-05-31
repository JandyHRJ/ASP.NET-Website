<%@ Page Language="C#" MasterPageFile="~/admin/Menu.Master" AutoEventWireup="true" CodeBehind="Display.aspx.cs" Inherits="College_Job_Portal.admin.Display" %>

 <asp:Content ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ContentPlaceHolderID="title" runat="server">View | DashBoard</asp:Content>
  <asp:Content ContentPlaceHolderID="Heading" runat="server">
   <form id="form1" runat="server"> 
  <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
          

        <div class="box">
           <div class="box box-danger">
            <div class="box-header with-border">
              <h3 class="box-title">学生信息</h3>
            </div>
            <div class="box-body">
              <div class="row">
                <div class="col-xs-3">
                     <asp:textbox  id="name" runat="server"  Cssclass="form-control" placeholder="姓名" />                    
                </div>
                <div class="col-xs-3">
                       <div class="form-group">
                        <asp:DropDownList ID="Scourse" class="form-control select2" Style="width: 100%;" runat="server">
                            <asp:ListItem Selected="selected" disabled="disabled" Value="-1">--学院--</asp:ListItem>
                            <asp:ListItem Value="信息工程学院">信息工程学院</asp:ListItem>
                            <asp:ListItem Value="外国语学院">外国语学院</asp:ListItem>
                            <asp:ListItem Value="商学院">商学院</asp:ListItem>
                            <asp:ListItem Value="土木工程学院">土木工程学院</asp:ListItem>
                        </asp:DropDownList>                        
                    </div>
                </div>
                <div class="col-xs-3">
                 <div class="form-group">
                         <asp:DropDownList ID="SYear" class="form-control select2" Style="width: 100%;" runat="server">
                            <asp:ListItem Selected="selected" disabled="disabled" Value="-1">--年级--</asp:ListItem>
                            <asp:ListItem Value="2019">2019</asp:ListItem>
                            <asp:ListItem Value="2020">2020</asp:ListItem>
                            <asp:ListItem Value="2021">2021</asp:ListItem>
                        </asp:DropDownList>                                   
                    </div>
                </div>
                  <div class="col-xs-3">
                <asp:Button ID="Button1" Text="搜索" runat="server" OnClick="btn_Search" Cssclass="btn btn-block btn-info btn-flat" />
                </div>
              </div>
            </div>
            <!-- /.box-body -->
          </div>
            <!-- /.box-header -->
            <div class="box-body">
            <asp:GridView  RowStyle-Font-Size="Medium" ID="GridView1" runat="server" CSSclass="table table-bordered table-striped" OnRowDataBound="OnRowDataBound"
               AutoGenerateColumns="false" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >

                <Columns>   
                    <asp:BoundField DataField="E_NO" HeaderText="学号" />
					<asp:BoundField DataField="FName" HeaderText="姓名" />
					<asp:BoundField DataField="DOB" HeaderText="生日" />			
					<asp:BoundField DataField="Course" HeaderText="学院" />
					<asp:BoundField DataField="Year" HeaderText="年级" />
            		<asp:BoundField DataField="Email" HeaderText="邮箱" />
					<asp:BoundField DataField="Mobile" HeaderText="手机" />
                     <asp:TemplateField HeaderText = "照片">
            <ItemTemplate>
                <asp:Image ID="Photo" runat="server" Height="80" Width="80" />
            </ItemTemplate>
        </asp:TemplateField>                                             
            </Columns>                                      
            </asp:GridView>                
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>

</form>

        </asp:Content>