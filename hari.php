
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
$url = 'https://weather.com/id-ID/cuaca/10hari/l/79ee4c69b1629747d0ea5de6a70311bdb26ffe4a79caa0499341f01fe098450f'; 
// $url = 
// $url = 'https://kopitani.id';
 
$html = file_get_html($url);

// $articles = array();
// $get = $html->find('div.hourly-time');
$get = $html->find('tr.clickable');
$i = 0;
foreach($get as $post) {

    // $date = $post->children(1)->outertext; //desc
    $tgl = date('Y-m-d');
    $date = $html->find('span.day-detail',$i)->plaintext;
    echo $date; echo "<br>";

    $desc = $post->children(2)->plaintext; //desc
    echo $desc; echo "<br>";

    $suhu = $post->children(3)->plaintext; //suhu
    $suhu_maks = substr($suhu,0,2);
    $suhu_min  = substr($suhu,6,2);
    echo $suhu_maks."-".$suhu_min; echo "<br>";
    // echo $suhu; echo "<br>";

    $precip = $post->children(4)->plaintext; //precip
    echo $precip; echo "<br>";

    $wind = $post->children(5)->plaintext; //wind
    echo $wind; echo "<br>";

    $humiditiy = $post->children(6)->plaintext; //humiditiy
    $lembap   = substr($humiditiy,0,2);
    echo $lembap; echo "<br>";


    echo "<br>"; echo "<br>";

    $tanggal = date('Y-m-d');
    //insert

    // if ($time != "00:00") {

        $insert = mysqli_query($koneksi,"INSERT INTO tbl_cuaca_harian (tanggal,deskripsi,suhu_maks,suhu_min,presip,angin,kelembapan)
                                            VALUES  ('$date','$desc','$suhu_maks','$suhu_min','$precip','$wind','$lembap') ");
        if($insert)
        {
            echo "Sukses Insert Data";
        }else{
            echo "Gagal Insert Data"; 
        }

    // }





$i++;
}

// print_r($articles);
?>



