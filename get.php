
<?php 
// header('Content-Type: application/json');
// header('Access-Control-Allow-Origin: *');

$koneksi = mysqli_connect("localhost","root","root","tesis_weather");
 
// Check connection
if (mysqli_connect_errno()){
	echo "Koneksi database gagal : " . mysqli_connect_error();
}


include('simplehtmldom/simple_html_dom.php');
 
// $url = 'https://www.phpbb.com/community/viewtopic.php?f=46&t=543171';
$url = 'https://weather.com/id-ID/cuaca/tiapjam/l/79ee4c69b1629747d0ea5de6a70311bdb26ffe4a79caa0499341f01fe098450f'; 
// $url = 
// $url = 'https://kopitani.id';
 
$html = file_get_html($url);

// $articles = array();
// $get = $html->find('div.hourly-time');
$get = $html->find('tr.closed');
$i = 0;
foreach($get as $post) {

    
    // echo $e->innertext . '<br>';
    // $x = $html->find('td.hidden-cell-sm description');
    // echo "<br>";
    // $e->find('div.hourly-time');
    // echo $e;

    # remember comments count as nodes
    // $articles[] = array($post->children(3)->outertext,
                        // $post->children(6)->first_child()->outertext);

	// echo $post->children(0)->outertext; //waktu 
	// echo "<br>";


    // echo $post->children()->outertext; // deskripsi
    // echo $post->children(1)->outertext; //deskripsi

    // echo $post->children(0)->first_child()->outertext; //deskripsi

    // echo $post->children(1)->first_child()->outertext; //deskripsi
    $time = $html->find('span.dsx-date',$i)->plaintext;
    // $time = $html->find('span.dsx-date',$i)->outertext;
    echo $time;
    echo "<br>";
    $desc = $post->children(2)->first_child()->plaintext; //deskripsi
    echo $desc;
    echo "<br>"; 
    $suhu = $post->children(3)->first_child()->plaintext; //suhu
    echo $suhu;
    echo "<br>"; 
    $terasa =  $post->children(4)->first_child()->plaintext; //terasa
    echo $terasa;
    echo "<br>";
    $presip = $post->children(5)->first_child()->plaintext; // presip
    echo $presip;
    echo "<br>";
    $kelembapan = $post->children(6)->first_child()->plaintext; // kelembapan 
    echo $kelembapan;
    echo "<br>";

    $angin = $post->children(7)->first_child()->plaintext; // angin
	
	// echo "<br>";
	// echo "<br>";


    // echo $post->children(1)->first_child()->outertext;
    $tanggal = date('Y-m-d');
    //insert

    if ($time != "00:00") {

        $insert = mysqli_query($koneksi,"INSERT INTO tbl_cuaca_perjam (tgl,waktu,deskripsi,suhu,terasa,presip,kelembapan,angin)
                                            VALUES  ('$tanggal','$time','$desc','$suhu','$terasa','$presip','$kelembapan','$angin') ");
        if($insert)
        {
            echo "Sukses Insert Data";
        }else{
            echo "Gagal Insert Data"; 
        }

    }



$i++;
}

// print_r($articles);
?>

<table border="1">
    <tr>
        <th>No.</th>
        <th>Tanggal</th>
        <th>Waktu</th>
        <th>Deskripsi</th>
        <th>Suhu</th>
        <th>Terasa</th>
        <th>Presip</th>
        <th>Kelembapan</th>
        <th>Angin</th>
    </tr>

<?php
$no = 1;
$query = mysqli_query($koneksi,"SELECT * FROM tbl_cuaca_perjam ");
while( $data = mysqli_fetch_array($query)){
?>
    <tr>
        <td><?= $no ?></td>
        <td> <?= $data['tgl']?> </td>
        <td> <?= $data['waktu']?></td>
        <td> <?= $data['deskripsi']?></td>
        <td> <?= $data['suhu']?> </td>
        <td> <?= $data['terasa']?> </td>
        <td> <?= $data['presip']?> </td>
        <td> <?= $data['kelembapan']?></td>
        <td>  <?= $data['angin']?></td>
    </tr>

<?php
$no++;
}
?>
</table>

