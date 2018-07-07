<?php 

$conn = mysqli_connect('localhost', 'root', '', 'portofolio');

function query($query){
	global $conn;							
	$result = mysqli_query($conn, $query);	
	$rows = [];										
	while ($row = mysqli_fetch_assoc($result)) {                            
		$rows[] = $row; 
	}	
	return $rows;									
}

function tambah($data){
	global $conn;
	$judul = htmlspecialchars($data['judul']);
	$isi = htmlspecialchars($data['isi']);

	// UPLOAD GAMBAR
	$gambar = upload();
	if ( !$gambar ) {
		return false;
	}

	$query = "INSERT INTO posting VALUES ('','$judul', '$gambar', '$isi')";
	mysqli_query($conn, $query);

	return mysqli_affected_rows($conn);
}

function upload(){
	$namaFile = $_FILES['gambar']['name'];
	$ukuranFile = $_FILES['gambar']['size'];
	$error = $_FILES['gambar']['error'];
	$tmpName = $_FILES['gambar']['tmp_name'];

	// cek gambar yang tidak diuploads
	if ( $error === 4) {
		echo '	<script>
					alert("pilih gambar terlebih dahulu");
				</script>';
		return false;
	}
	$ekstensiGambarValid = ['jpg', 'jpeg', 'png'];
	$ekstensiGambar = explode('.', $namaFile);
	$ekstensiGambar = strtolower(end($ekstensiGambar));
	if ( !in_array($ekstensiGambar, $ekstensiGambarValid )) {
		echo '<script>
				alert("format gambar yang benar adalah .jpg, .jpeg, .png");
			</script>';
		return false;	
	}
	//cek jika ukurannya terlalu besar
	if ($ukuranFile > 1000000) {
		echo '<script>
				alert("ukuran gambar terlalu besar max 1mb");
			</script>';
		return false;		
	}

	//lolos pengecekan, gambar siap di upload
	//generate nama baru
	$namaFileBaru = uniqid();
	$namaFileBaru .= '.';
	$namaFileBaru .= $ekstensiGambar;

	move_uploaded_file($tmpName, 'images/profile' . $namaFile);
	return $namaFile;
}

function hapus($id){
	global $conn;
	$query = "DELETE FROM posting WHERE id = $id";
	mysqli_query($conn, $query);
	return mysqli_affected_rows($conn);
}

function edit($data){
	global $conn;
	$judul = htmlspecialchars($data['judul']);
	$isi = htmlspecialchars($data['isi']);
	$id = htmlspecialchars($_POST['id']);

	$query = "UPDATE posting SET 
				judul = '$judul',
				isi = '$isi'
				WHERE id = $id
				";
	mysqli_query($conn, $query);
	return mysqli_affected_rows ($conn);
}

function cari($keyword){
	global $conn;
	$query = "SELECT * FROM posting WHERE 
				judul LIKE '%$keyword%' OR
				isi LIKE '%$keyword%'";
	return query($query);
}
?>