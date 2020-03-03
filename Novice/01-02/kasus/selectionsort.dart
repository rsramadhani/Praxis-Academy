main() {
  var a =  [99, 11, 52, 16, 70, 43, 94, 6, 19, 12] ;
  
  for(var i = a.length-1; i >= 0; i--) {
    var min = 0, tmp;
    
    for(var j=1; j <= i; j++) {
      if(a[j] > a[min])
        min = j;
    }
    tmp = a[min];
    a[min] = a[i];
    a[i] = tmp;
  }
  print(a);
}