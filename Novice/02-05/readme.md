# Slivers and Gestures

## Slivers

Slivers adalah bagian dari area yang dapat digulir. Sliver dapat digunakan untuk mendapatkan efek gulir khusus.Semua tampilan yang bisa
digulir seperti Listview dan Gridview, merupakan hasil implementasi dari Sliver. Sliver memberikan control yang lebih rendah pada 
penerapan area yang dapat digulir. 

### SliverList

SliverList menentukan gulirnya diimbangi dengan "dead reckoning" karena children di luar bagian sliver yang terlihat tidak terwujud, 
yang berarti SliverList tidak dapat mempelajari sejauh mana sumbu utama mereka. Sebaliknya, children yang baru terwujud ditempatkan
berdekatan dengan children yang ada.SliverList mengambil parameter delegasi yang menyediakan item dalam daftar saat menggulir ke
tampilan. Anda dapat menentukan the actual list dengan SliverChildListDelegate atau membangunnya dengan SliverChildBuilderDelegate.

<img src=”header2.jpg”>

### SliverGrid

Slivergrid merupakan sepotong yang menempatkan beberapa anak kotak dalam pengaturan dua dimensi. SliverGrid menempatkan children yang 
ditentukan oleh gridDelegate . Setiap children terpaksa memiliki ukuran yang ditentukan oleh gridDelegate .Tapi ada beberapa format
tambahan untuk dimensi cross -axis di grid

<img src=”header1.jpg”>

### SliverAppBar

SliverAppBar merupakan bilah aplikasi desain bahan yang terintegrasi dengan CustomScrollView .Bilah aplikasi terdiri dari bilah alat
dan kemungkinan widget lainnya, seperti TabBar dan FlexibleSpaceBar . Bilah aplikasi biasanya mengekspos satu atau lebih tindakan umum 
dengan IconButton s yang secara opsional diikuti oleh PopupMenuButton untuk operasi yang kurang umum.Membuat bilah aplikasi yang meluas
dan mengontrak itu adalah dengan mengatur parameter flexibleSpace dan parameter extendedHeight. Anda dapat mengatur tinggi dan tampilan
yang berbeda untuk bilah aplikasi saat diperluas ke ukuran penuh vs versi "terkompresi".Anda dapat mengatur parameter mengambang ke true
untuk membuat bilah aplikasi muncul kembali ketika anda menggulir ke bawah, bahkan jika Anda belum mencapai bagian atas daftar.

<img src=”header3.jpg”>

<img src=”header4.jpg”>
