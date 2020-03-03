main() {
    var angka = [99, 11, 52, 16, 70, 43, 94, 6, 19, 12] ;
    var i;
    for (i = angka.length - 1 ; i >=0 ; i--) {
        var key = angka[i];
        var j = i + 1;
        while (j < angka.length && key > angka[j]) {
          angka [j-1] = angka[j];
            j = j+1;
        }
        angka[j-1] = key;
    }
    print(angka);
}