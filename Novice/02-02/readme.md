# Mengenal Widgets dan Layout #

## Widget

Widegt merupakan seluruh tampilan seperti tombol, gambar, teks, list, ikon, bahkan satu layar pada handphone tersebut merupakan sekumpulan dari banyak widget.

### Properti pada Widget
Setiap widget memiliki property, misalnya kita membuat sebuah tombol, lalu kita ingin agar warna backgroundnya itu hijau, dan warna tulisannya putih, lalu teksnya kita tebalkan.

### Widget di dalam widget
Dalam membuat aplikasi nantinya tentu kita akan menggunakan banyak widget, pada Flutter setiap Widget umumnya memiliki properti child atau anak, dari properti inilah kita bisa menggunakan widget didalamnya.

Selain child, kita juga mengenal property children yang artinya anak-anak, sesuai dengan namanya, berarti widget tersebut bisa memiliki banyak widget-widget, sebagai contoh kita ingin menampilkan daftar menu makanan, maka tentu akan banyak widget yang berfungsi untuk menampilkan keterangan nama makanan didalamnya.

### General Widget
Ada banyak sekali widget-widget yang telah disediakan pada flutter, pada kali ini kita akan membahas widget apa saja yang paling penting untuk kita pahami saat pertama kali membuat aplikasi menggunakan Flutter ini.

#### 1. Scaffold
Scaffold adalah widget utama untuk membuat sebuah halaman pada flutter, scaffold ini memiliki beberapa parameter yang biasa kita gunakan seperti appBar untuk membuat AppBar, body untuk bagian tubuhnya, atau kita juga bisa menambahkan floating action bar, maupun mengganti warna background bodynya.

    Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text('Sample Code'),
    ),
    body: Center(
      child: Text('You have pressed the button $_count times.')
    ),
    backgroundColor: Colors.blueGrey.shade200,
    floatingActionButton: FloatingActionButton(
      onPressed: () => setState(() => _count++),
      tooltip: 'Increment Counter',
      child: const Icon(Icons.add),
        ),
     );
    }
    
#### 2. Stateless

Stateless Widget adalah widget yang berfungsi untuk menampilkan hal-hal yang sifatnya statis mudahnya setelah data ditampilkan maka kita tidak akan merubahnya lagi.Untuk membuatnya kita cukup mengetikkan stl lalu akan ada pilihan untuk membuatnya.

      class MyApp extends StatelessWidget {
     @override
        Widget build(BuildContext context) {
    return MaterialApp(
      title: "Shopping Bag",
      theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.purpleAccent,
          textTheme: ThemeData.light().textTheme.copyWith(
              title: TextStyle(fontSize: 15, fontWeight: FontWeight.bold))),
      home: Home(),
          );
        }
        }
        
### 3. Statefull

Statefull Widget adalah widget yang digunakan untuk menampilkan data-data yang dinamis atau data yang kita telah tampilkan sewaktu-waktu dapat mengalami perubahan.Sedangkan untuk statefull kita cukup ketikkan stf lalu akan ada pilihan untuk membuatnya.

      class Home extends StatefulWidget {
    @override
     _HomeState createState() => _HomeState();
    }

    class _HomeState extends State<Home> {
     @override
    Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Daftar Belanjaan"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            //NANTINYA BERISI WIDGET
               ],
              ),
             ),
         );
        }
      }
      
## Layout
Untuk mengatur tata letak atau posisi widget, maka kita akan mengenal dua buah widget yaitu Row dan Column. 

#### 1.Row 

Row akan menampilkan widget-widget secara horizontal atau sebaris dari kiri ke kanan, widget Row menggunakan property children artinya widget ini bisa diisi oleh banyak widget.

      class MyHomePage extends StatelessWidget {
       @override
       Widget build(BuildContext context) {
          return Scaffold(
        appBar: AppBar(
          title: Text("Row"),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Text("Halo 1 !!!"),
              color: Colors.lime,
              padding: EdgeInsets.all(16.0),
            ),
            Container(
              child: Text("Halo 2 !!!"),
              color: Colors.purple,
              padding: EdgeInsets.all(16.0),
            ),
            Container(
              child: Text("Halo 3 !!!"),
              color: Colors.lightBlue,
              padding: EdgeInsets.all(16.0),
            ),
          ],
        ));
       }
     }
    
    https://github.com/rsramadhani/Praxis-Academy/blob/master/Novice/02-02/row.png
     
     
##### 2. Column 

Column berlaku sebaliknya widget akan mengarah secara vertikal atau dari atas kebawah, widget ini juga menggunakan property children artinya widget ini bisa diisi oleh banyak widget.

      class MyHomePage extends StatelessWidget {
        @override
      Widget build(BuildContext context) {
        return Scaffold(
        appBar: AppBar(
          title: Text("Column"),
        ),
        body: Column(
          children: <Widget>[
            Container(
              child: Text("Halo 1 !!!"),
              color: Colors.lime,
              padding: EdgeInsets.all(16.0),
            ),
            Container(
              child: Text("Halo 2 !!!"),
              color: Colors.purple,
              padding: EdgeInsets.all(16.0),
            ),
            Container(
              child: Text("Halo 3 !!!"),
              color: Colors.lightBlue,
              padding: EdgeInsets.all(16.0),
            ),
          ],
        ));
        } 
      }
      
      https://github.com/rsramadhani/Praxis-Academy/blob/master/Novice/02-02/column.png
    
#### 3.Center

Center berfungsi agar posisi widget yang kita buat berada ditengah.

      ...
       body: Center(
       child: Text("Text di tengah", 
                  style: TextStyle(
                            fontSize: 30.0, 
                            fontWeight: FontWeight.bold),
                            ),
        )
      ...

    https://github.com/rsramadhani/Praxis-Academy/blob/master/Novice/02-02/center.png
 

#### 4. Text

Text berfungsi untuk menampilkan sebuah teks biasa, atau bisa kita berikan style dengan menambahkan property style.

    ...
    body: Text('Ini Text', style: TextStyle(
                                  color: Colors.blue,
                                  backgroundColor: Colors.pink,
                                  fontSize: 20.0,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.bold
                                  ),)
     ...
     
     https://github.com/rsramadhani/Praxis-Academy/blob/master/Novice/02-02/text.png


#### 5. Icon

Widget ini untuk menggunakan icon yang telah disediakan, berikut adalah contohnya.

      ...
      body: Container(
          padding: EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Icon(Icons.access_alarm),
                  Text('Alarm')
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(Icons.phone),
                  Text('Phone')
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(Icons.book),
                  Text('Book')
                ],
              ),
            ],
          ),
        )
      ...
      
      https://github.com/rsramadhani/Praxis-Academy/blob/master/Novice/02-02/icon.png
 
