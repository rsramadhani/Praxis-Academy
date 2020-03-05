import 'dart:collection'; 
main() { 

  //collection-hashset
   Set numberSet = new  HashSet(); 
   numberSet.add(100); 
   numberSet.add(20); 
   numberSet.add(5); 
   numberSet.add(60); 
   numberSet.add(70); 
   print("Default implementation :${numberSet.runtimeType}"); 
   for(var no in numberSet){ 
      print(no); 
   } 

   //collection-hashmap
    var accounts = new HashMap(); 
   accounts['dept']='Mobile App'; 
   accounts['name']='Rosi Ramadhani'; 
   accounts['email']='ocictk@xyz.com'; 
   print('Map after adding  entries :${accounts}');
}