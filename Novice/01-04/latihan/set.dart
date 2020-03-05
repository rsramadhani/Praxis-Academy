main () {
    Set a = Set();
    a.add (11);
    a.add (16);
    a.add (67);
    a.add (70);
    a.add (99);
    print(a);

    Set b = new Set.from([12,13,14]); 
    for(var no in b) { 
    print(no); 
   } 
}