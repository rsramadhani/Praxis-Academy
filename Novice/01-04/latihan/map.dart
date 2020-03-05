void main (){

    var a = {'Name' : 'Rosi Ramadhani','Callname' : 'Ociii', 'Adress' : 'Yogyakarta', 'Age' : '20'};
    a['hobby'] = 'drawing';
  
    print(a);
  
    var b = Map() ;
    b['name'] = 'Rosi Ramadhani';
    b['callname'] = 'Ociii';
    b['Adress'] = 'Yogyakarta';
    b['age'] = '20';
    b['hobby'] = 'drawing';
    print(b);

    //function name of addall
    Map c = {'name':'Rosi Ramadhani','callname' : 'oci','Id':'ocictk01'}; 
    print('Map :${c}'); 
   
    c.addAll({'dept':'Mobile App Dev','email':'ocictk@xyz.com'}); 
    print('Map after adding  entries :${c}'); 

    //function name of remove
    Map d = {'name':'Rosi','Id':'ocictk001'}; 
    print('Map :${d}'); 
   
    dynamic res = d.remove('name'); 
    print('Value popped from the Map :${res}'); 

    //function of foreach
    var usrMap = {"name": "Rosi Ramadhani", 'Email': 'ocictk@xyz.com'}; 
    usrMap.forEach((k,v) => print('${k}: ${v}')); 

    //function of clear
    Map e = {'name':'Rosi Ramadhani','Id':'ocicitk001'}; 
    print('Map :${e}'); 
   
    e.clear(); 
    print('Map after invoking clear()  :${e}'); 
} 
  }
