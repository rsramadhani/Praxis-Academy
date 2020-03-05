 # OOP pada Dart #

### Class ###

Secara singkat class dapat diartikan blueprint dari suatu objek, maksudnya adalah saat mendesain suatu objek berdasarkan class yang dibuat, jika rancangannya baik maka hasilnya baik, begitu juga sebaliknya, jadi class dapat analogikan sebagai rancangannya dan hasil dari rancangan tersebut adalah objeknya.

Jika ingin membuat properties akses private tambahkan underscore di depan property seperti: 
    
    String flower menjadi String _flower

    Setiap variable value nilai defaultnya adalah null
    
Membuat object dengan nama siswa dengan keyword new, keyword new tidak harus digunakan bisa langsung tanpa new

### Constructor ###

Constructor adalah method khusus yang akan dieksekusi pada saat pembuatan objek (instance).Biasanya method ini digunakan untuk inisialisasi atau mempersiapkan data untuk objek.Didalam konstruktor tidak boleh memiliki nama yang sama, jika kita memiliki lebih dari 1 konstruktor maka kita dapat menggunakan Penamaan Konstruktor (Named Constructors).

Ada beberapa perbedaan utama antara class dan konstruktor.
•	Konstruktor memiliki nama yang sama dengan kelas.
•	Konstruktor tidak memiliki tipe pengembalian.
•	Konstruktor secara otomatis dipanggil ketika objek dibuat.
•	Jika tidak menentukan konstruktor, konstruktor no-argumen default akan dibuat.
•	tidak ada return stetement, didalam tubuh constructor.

Dengan menggunakan konstruktor bernama Anda dapat membuat beberapa konstruktor di kelas yang sama. Setiap konstruktor akan memiliki nama yang unik. Sehingga Anda dapat mengidentifikasi masing-masing.

### Variabel instance ###

instance variabel merupakan jenis variabel yang dideklarasikan di dalam class, diluar method baik constructor atau method lainnya.
Menciptakan Instance dari kelas Untuk membuat turunan dari kelas, gunakan kata kunci baru diikuti dengan nama kelas.

### Getter and Setter ###
Getters and Setters, juga disebut sebagai accessors dan mutators, memungkinkan program untuk menginisialisasi dan mengambil nilai-nilai bidang kelas masing-masing. Aksara atau akseptor didefinisikan menggunakan kata kunci get. Setter atau mutator didefinisikan menggunakan kata kunci yang disetel.

Pembuat / penyetel default dikaitkan dengan setiap kelas. Namun, yang default dapat diganti dengan mendefinisikan secara eksplisit setter / pengambil. Seorang pengambil tidak memiliki parameter dan mengembalikan nilai, dan setter memiliki satu parameter dan tidak mengembalikan nilai.

### Method ### 
Method adalah mekanisme di mana kelas anak mendefinisikan kembali sebuah metode di kelas induknya. 

### Extend class ###

Dart mendukung konsep Inheritance yang merupakan kemampuan suatu program untuk membuat kelas baru dari kelas yang ada. Kelas yang diperluas untuk membuat kelas yang lebih baru disebut kelas induk / kelas super. Kelas yang baru dibuat disebut anak / sub kelas.
Kelas mewarisi dari kelas lain menggunakan kata kunci 'extends'. Kelas anak mewarisi semua properti dan metode kecuali konstruktor dari kelas induk

### Mixin ###

    Mixin adalah cara menggunakan kembali kode kelas dalam banyak hierarki kelas.

Mixins in Dart bekerja dengan membuat kelas baru yang melapisi implementasi mixin di atas superclass untuk membuat kelas baru - itu bukan "di samping" tetapi "di atas" dari superclass, sehingga tidak ada ambiguitas dalam cara mengatasi pencarian.
Mixin bukan cara untuk mendapatkan banyak warisan dalam arti klasik. Mixin adalah cara untuk abstrak dan menggunakan kembali keluarga operasi dan negara. Ini mirip dengan penggunaan kembali yang Anda dapatkan dari memperluas kelas, tetapi kompatibel dengan pewarisan tunggal karena linear.
