# Animation

Animasi didalam flutter terbagi menjadi dua tipe,yaitu :

#### Tween animation
Dalam tween animation, titik awal dan akhir didefinisikan, serta garis waktu, dan kurva yang menentukan waktu dan kecepatan transisi. 
Kerangka kerja menghitung bagaimana transisi dari titik awal ke titik akhir.

#### Physics-based animation
Dalam Physics-based animation, gerak dimodelkan menyerupai perilaku dunia nyata. Ketika Anda melemparkan bola, misalnya, di mana dan 
kapan bola itu tergantung pada seberapa cepat bola itu dilemparkan dan seberapa jauh jaraknya dari tanah. Demikian pula, menjatuhkan 
bola yang melekat pada pegas jatuh (dan memantul) berbeda dari menjatuhkan bola yang melekat pada tali.

## Hero Animations

Hero anmiations ini bisa dilihat saat suatu aplikasi pembelanjaan. Memilih item kemudian ‘menerbangkannya’ ke keranjang atau ke layar
baru yang berisi lebih banyak detail dan tombol ‘beli’. Terbang gambar dari satu layar ke layar yang lain disebut dengan Hero 
Animations di Flutter.Hero animations ini mengacu pada widget yang terbang antara layer. Widget hero di Flutter mengimplementasikan 
gaya animation yang umumnya dikenal sebagai  shared element transitions atau shared element animations .Gunakan dua widget hero 
animation ini untuk memiliki rute yang berbeda tetapi dengan tag yang cocok untuk menerapkan animasi.Navigator mengelola tumpukan 
yang berisi rute aplikasi.Mendorong rute atau memunculkan rute dari tumpukan Navigator memicu animasi

<img src=’hero_1’>

Digambar itu terlihat sebuah gambar ditegah layar, kemudian saat gambar itu diketuk maka rute akan menerbangkan gambar tersebut ke 
sudut kiri atas dengan rute coklat yang baru dan dengan ukuran yang lebih kecil. Mengetuk sirip di rute cokelat itu maka akan 
mengembalikannya kebentuk semula

<img src=’hero_2’>

## Radial Hero Animations
Dalam Radial hero animations, saat hero terbang di antara rute, bentuknya tampak berubah dari melingkar menjadi persegi.

<img src=’radial.jpg’>
Di halaman awal, terdapat deretan tiga gambar melingkar muncul di bagian bawah. Saat  mengetuk salah satu gambar melingkar,maka akan menerbangkan gambar itu ke rute baru yang menampilkannya dengan bentuk persegi. Mengetuk gambar persegi menerbangkan pahlawan kembali ke rute asli, ditampilkan dengan bentuk melingkar.

<img src=’r1.jpg’>

<img src=’r2.jpg’>

<img src=’r3.jpg’>

## Staggered Animations

Staggered animations adalah konsep langsung: perubahan visual terjadi sebagai serangkaian operasi, bukan sekaligus. Animasi mungkin
murni berurutan, dengan satu perubahan terjadi setelah yang berikutnya, atau mungkin sebagian atau seluruhnya tumpang tindih. Mungkin
juga ada celah, di mana tidak ada perubahan terjadi.

<img src=’stg1.jpg>

<img src=’stg2.jpg>

<img src=’stg3.jpg’>

Gambar diatas merupakan screencapturing dari staggered animations yang saya kerjakan. Penjelasannya  adalah dimulai sebagai kotak hitam
berbatasan dengan sudut agak bulat. Kotak berjalan melalui perubahan dalam urutan berikut:
  1.	Kotak hitam kecil muncul saat diketuk
  2.	Melebar kesamping sehingga berbentuk persegi Panjang 
  3.	Menjadi lebih tinggi saat bergerak ke atas
  4.	Berubah menjadi lingkaran yang dibatasi berrawarna hitam
  5.	Mengubah warna menjadi merah muda diakhir
Setelah berjalan maju, animasi berjalan terbalik.

Untuk mengatur animasi:
•	Buat AnimationController yang mengelola semua Animasi.
•	Buat Tween untuk setiap properti yang dianimasikan.
o	Tween mendefinisikan berbagai nilai.
o	Metode Tween animate membutuhkan parent pengontrol, dan menghasilkan Animasi untuk properti itu.
•	Tentukan interval pada curveproperti Animasi .
Saat nilai animasi pengontrol berubah, nilai animasi baru berubah, memicu UI untuk memperbarui.
