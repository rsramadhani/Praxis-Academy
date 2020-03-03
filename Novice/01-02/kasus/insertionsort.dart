main() {
    var angka = [99, 11, 52, 16, 70, 43, 94, 6, 19, 12] ;

    for (var i = 0; i < angka.length; i++) {
        var key = angka[i];
        var j = i;
        while (j>0 &&angka[j-1] > key) {
            angka[j] = angka [j-1];
            j = j-1;
        }
        angka[j] = key;
    }
    print(angka);
}