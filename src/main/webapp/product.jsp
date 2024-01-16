
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
	integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js"
	integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk"
	crossorigin="anonymous"></script>
<script src="js/main.js"></script>
</head>
<body>

	<%
	String e_maSanPham = (String) request.getAttribute("e_maSanPham");
	e_maSanPham = (e_maSanPham == null) ? "" : e_maSanPham;

	String value_maSanPham = (String) request.getAttribute("value_maSanPham");
	String value_tenSanPham = request.getAttribute("value_tenSanPham") + "";
	String value_giaBan = request.getAttribute("value_giaBan") + "";
	String value_giaNhap = request.getAttribute("value_giaNhap") + "";
	String value_hanSuDung = request.getAttribute("value_hanSuDung") + "";
	String value_vat = request.getAttribute("value_vat") + "";
	String value_moTa = request.getAttribute("value_moTa") + "";

	value_maSanPham = (value_maSanPham == null) ? "" : value_maSanPham;
	value_tenSanPham = (value_tenSanPham.equals("null")) ? "" : value_tenSanPham;
	value_giaBan = (value_giaBan.equals("null")) ? "" : value_giaBan;
	value_giaNhap = (value_giaNhap.equals("null")) ? "" : value_giaNhap;
	value_hanSuDung = (value_hanSuDung.equals("null")) ? "" : value_hanSuDung;
	value_vat = (value_vat.equals("null")) ? "" : value_vat;
	value_moTa = (value_moTa.equals("null")) ? "" : value_moTa;
	%>

	<div class="container mt-4">
		<form class="row g-3 needs-validation" action="save-product"
			id="my_form" method="Get">
			<div class="row">
				<div class="col-6">
					<label for="maSanPham" class="form-label">Mã sản phẩm <span
						class="rq">*</span></label> <input type="text" class="form-control"
						id="maSanPham" name="maSanPham" required placeholder="Id Product"
						value="<%=value_maSanPham%>" />
					<div class="rq" id="error_maSanPham"><%=e_maSanPham%></div>
				</div>


				<div class="col-6">
					<label for="tenSanPham" class="form-label">Tên sản phẩm</label> <input
						type="text" class="form-control" id="tenSanPham" name="tenSanPham"
						placeholder="Name Product" required value="<%=value_tenSanPham%>" />
					<div class="rq" id="error_tenSanPham"></div>
				</div>
			</div>

			<div class="row">
				<div class="col-6">
					<label for="giaNhap" class="form-label">Giá Nhập <span
						class="rq">*</span></label> <input type="text" class="form-control"
						id="giaNhap" name="giaNhap" required step="0.01"
						placeholder="Price Enter..." value="<%=value_giaNhap%>" />
					<div class="rq" id="error_giaNhap"></div>
				</div>

				<div class="col-6">
					<label for="giaBan" class="form-label">Giá Bán</label> <input
						type="text" class="form-control" id="giaBan" name="giaBan"
						required step="0.01" placeholder="Price Enter..."
						value="<%=value_giaBan%>" />
					<div class="rq" id="error_giaBan"></div>
				</div>
			</div>

			<div class="row">
				<div class="col-6">
					<label for="hanSuDung" class="form-label">Hạn Sử Dụng </label> <input
						type="datetime-local" class="form-control" id="hanSuDung"
						name="hanSuDung" value="<%=value_hanSuDung%>" />
					<div class="rq"></div>
				</div>

				<div class="col-6">
					<label for="vat" class="form-label">Thuế</label> <span class="rq">*</span>
					<input type="text" class="form-control" id="vat" name="vat"
						placeholder="Vat Enter..." value="<%=value_vat%>" />
					<div class="rq"></div>
				</div>
			</div>

			<div class="row">
				<label for="moTa" class="form-label">Mô tả sản phẩm</label>
				<textarea rows="10" cols="20" class="form-control" id="moTa"
					name="moTa" placeholder="Description Enter..."
					value="<%=value_moTa%>"></textarea>
			</div>

			<div class="row mt-5">
				<button class="btn btn-primary" type="button" onclick="my_Submit()">Lưu
					sản phẩm</button>
			</div>
		</form>
	</div>

</body>
</html>