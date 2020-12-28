<%@ Page Title="Trang Chủ Đề" Language="C#" MasterPageFile="~/BaiThi/TrangChu.Master" AutoEventWireup="true" CodeBehind="Chủ Đề.aspx.cs" Inherits="BaiThiASP.BaiThi.Chủ_Đề" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CHUDE_ID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." AllowPaging="True" AllowSorting="True" Height="151px" Width="1280px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="CHUDE_ID" HeaderText="CHUDE_ID" ReadOnly="True" SortExpression="CHUDE_ID" />
            <asp:BoundField DataField="TENCD" HeaderText="TENCD" SortExpression="TENCD" />
        </Columns>
    </asp:GridView>
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="243px" DataSourceID="SqlDataSource1" DefaultMode="Insert" style="margin-left: 160px">
        <Fields>
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BaiThiASPConnectionString1 %>" DeleteCommand="DELETE FROM [CHUDE] WHERE [CHUDE_ID] = @CHUDE_ID" InsertCommand="INSERT INTO [CHUDE] ([CHUDE_ID], [TENCD]) VALUES (@CHUDE_ID, @TENCD)" ProviderName="<%$ ConnectionStrings:BaiThiASPConnectionString1.ProviderName %>" SelectCommand="SELECT [CHUDE_ID], [TENCD] FROM [CHUDE]" UpdateCommand="UPDATE [CHUDE] SET [TENCD] = @TENCD WHERE [CHUDE_ID] = @CHUDE_ID">
        <DeleteParameters>
            <asp:Parameter Name="CHUDE_ID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CHUDE_ID" Type="String" />
            <asp:Parameter Name="TENCD" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CHUDE_ID" Type="String" />
            <asp:Parameter Name="TENCD" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
