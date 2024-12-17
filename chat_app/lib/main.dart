import 'package:flutter/material.dart' ;

void main () =>  runApp(MyApp())  ;

class MyApp extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title : "Temel Mesajlaşma Uygulaması",
      home : Iskele (),
    ); 
  }
}

class Iskele extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
appBar:AppBar(title: Text("Mesajlaşma uygulaması arayüzü"),),
body : AnaEkran (),
    );
  }
}




class AnaEkran extends StatefulWidget {

  @override
  State<AnaEkran> createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
 
 TextEditingController t1 = TextEditingController() ;
 List messageList = [];
 
 addMessage(String message ){
  setState(() {
  
    messageList.insert(0,message); // sondan başa 
    t1.clear() ;

  });
 }
 
 
  @override
  Widget build(BuildContext context) {
    return Container ( // textfield metin gitriş alanı + buton lazım 
margin:EdgeInsets.all(50),
child: Column(
  children:<Widget> [
    Flexible (
  child: ListView.builder(
    reverse: true,
   itemCount:messageList.length ,
    itemBuilder:// kaydrılabilir tek süütnlu liste oluşturulacak
    (context,  indeksnumber) => ListTile(
                title: Text(messageList[indeksnumber]) , ),
     ),
     ),

Row(
  children:<Widget> [
    Flexible(child: TextField( 
      onSubmitted: addMessage,
   controller: t1,
   ), ),
 

 
ElevatedButton(
  onPressed:addMessage(t1.text) , 
  child: Text ("gönder"),
),
  ], ),
  

  
  ],
    
),);
    
  }
}
