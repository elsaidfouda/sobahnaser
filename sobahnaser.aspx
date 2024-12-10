<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Page Language="C#" %>
<html dir="ltr" xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
<meta content="en-us" http-equiv="Content-Language" />
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<title>Untitled 1</title>
<style type="text/css">
.auto-style1 {
	text-align: center;
	font-size: xx-large;
}
.auto-style2 {
	text-align: center;
	font-size: x-large;
}
.auto-style3 {
	text-align: center;
}
</style>
</head>

<body>

<form id="form1" runat="server">
	<div class="auto-style3">
		<p class="auto-style1">ثانوية صباح الناصر الصباح-بنين</p>
		<p class="auto-style2">ادخل الرقم المدني</p>
		<asp:TextBox id="TextBox1" runat="server" Height="27px" Width="186px"></asp:TextBox>
		<asp:Button id="Button1" runat="server" BackColor="Gray" Height="28px" Text="بحث" Width="58px" />
	</div>
	<p>&nbsp;</p>
	<p class="auto-style3">&nbsp;</p>
	<asp:DataList id="DataList2" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" CssClass="auto-style4" DataKeyField="المعرف" DataSourceID="SqlDataSource1" ForeColor="Black" style="margin-left: 618px">
		<AlternatingItemStyle BackColor="PaleGoldenrod" />
		<FooterStyle BackColor="Tan" />
		<HeaderStyle BackColor="Tan" Font-Bold="True" />
		<ItemTemplate>
			المعرف:
			<asp:Label id="المعرفLabel" runat="server" Text='<%# Eval("المعرف") %>' />
			<br />
			مسلسل:
			<asp:Label id="مسلسلLabel" runat="server" Text='<%# Eval("مسلسل") %>' />
			<br />
			اسم_الطالب:
			<asp:Label id="اسم_الطالبLabel" runat="server" Text='<%# Eval("اسم_الطالب") %>' />
			<br />
			الصف:
			<asp:Label id="الصفLabel" runat="server" Text='<%# Eval("الصف") %>' />
			<br />
			رقم_الجلوس:
			<asp:Label id="رقم_الجلوسLabel" runat="server" Text='<%# Eval("رقم_الجلوس") %>' />
			<br />
			اللجنة_الرئيسية:
			<asp:Label id="اللجنة_الرئيسيةLabel" runat="server" Text='<%# Eval("اللجنة_الرئيسية") %>' />
			<br />
			اللجنة_الفرعية:
			<asp:Label id="اللجنة_الفرعيةLabel" runat="server" Text='<%# Eval("اللجنة_الفرعية") %>' />
			<br />
			مكان_اللجنة:
			<asp:Label id="مكان_اللجنةLabel" runat="server" Text='<%# Eval("مكان_اللجنة") %>' />
			<br />
			الرقم_المدني:
			<asp:Label id="الرقم_المدنيLabel" runat="server" Text='<%# Eval("الرقم_المدني") %>' />
			<br />
			<br />
		</ItemTemplate>
		<SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
	</asp:DataList>
	<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:naser11ConnectionString %>" ProviderName="<%$ ConnectionStrings:naser11ConnectionString.ProviderName %>" SelectCommand="SELECT DISTINCT [المعرف], [مسلسل], [اسم الطالب] AS اسم_الطالب, [الصف], [رقم الجلوس] AS رقم_الجلوس, [اللجنة الرئيسية] AS اللجنة_الرئيسية, [اللجنة الفرعية] AS اللجنة_الفرعية, [مكان اللجنة] AS مكان_اللجنة, [الرقم المدني] AS الرقم_المدني FROM [اللجان] WHERE ([الرقم المدني] LIKE '%' + ? + '%')">
		<SelectParameters>
			<asp:ControlParameter ControlID="TextBox1" Name="الرقم_المدني" PropertyName="Text" Type="String" />
		</SelectParameters>
	</asp:SqlDataSource>
	<p class="auto-style3">&nbsp;</p>
	<div class="auto-style3">
	</div>
</form>

</body>

</html>
