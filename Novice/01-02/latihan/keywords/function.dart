import 'dart:io';

// membuat fungsi luas persegi
int luasPersegi(int sisi){
  return sisi * sisi;
}

main(){
  print("-------Program luas persegi-------");
  stdout.write("Masukkan panjang sisi persegi: ");
  int s = int.parse(stdin.readLineSync());

  // Memanggil fungsi
  int hasil = luasPersegi(s);

  print("Luas: $hasil");
}