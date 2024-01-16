function my_Submit() {
	// Get input values
	let maSanPham = document.getElementById("maSanPham").value.trim();
	let tenSanPham = document.getElementById("tenSanPham").value.trim();
	let giaNhap = parseFloat(document.getElementById("giaNhap").value.trim());
	let giaBan = parseFloat(document.getElementById("giaBan").value.trim());

	// Clear error messages if value valid
	document.getElementById("error_maSanPham").innerHTML = "";
	document.getElementById("error_tenSanPham").innerHTML = "";
	document.getElementById("error_giaNhap").innerHTML = "";
	document.getElementById("error_giaBan").innerHTML = "";

	// Initialize error variable
	let error = "";

	// Validate maSanPham
	if (maSanPham.length === 0) {
		error = "Bạn phải nhập mã sản phẩm!";
		document.getElementById("error_maSanPham").innerHTML = "<span class='rq'>Bạn cần nhập mã sản phẩm!</span>";
	}

	// Validate tenSanPham
	if (tenSanPham.length === 0) {
		error = "Bạn cần nhập tên sản phẩm";
		document.getElementById("error_tenSanPham").innerHTML = "<span class='rq'>Bạn cần nhập tên sản phẩm!</span>";
	}

	// Validate giaNhap
	if (isNaN(giaNhap) || giaNhap <= 0) {
		error = "Giá nhập phải là số dương!";
		document.getElementById("error_giaNhap").innerHTML = "<span class='rq'>Giá nhập phải là số dương!</span>";
	}

	// Validate giaBan
	if (isNaN(giaBan) || giaBan <= 0) {
		error = "Giá bán phải là số dương!";
		document.getElementById("error_giaBan").innerHTML = "<span class='rq'>Giá bán phải là số dương!</span>";
	}

	// Check if there are any errors
	if (error.length === 0) {
		// Submit form
		var my_form = document.getElementById("my_form");
		my_form.submit();
	}
}
