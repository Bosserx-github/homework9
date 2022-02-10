import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home';

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
   return Scaffold(
  appBar: AppBar(
    title: Text("Main Page",style: TextStyle(
        fontSize: 30.0, color: Colors.black),
    ),
    centerTitle: true,
    backgroundColor: Colors.redAccent,
  ),
     body: Container(
       //child: Image.asset('assets/images/Kyojuro_anime.png'),
       child:Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Image.asset('assets/images/Kyojuro_anime.png',width: 300),
             Padding(
               padding: const EdgeInsets.all(25.0),
               child: Container(
                 child: InkWell(
                     onTap: (){
                       Navigator.push(
                         context,
                         MaterialPageRoute(
                             builder: (context) => const LoginPage()
                         ),
                       );
                     },
                     child:Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                         Text('BACK', style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold)),
                      ],
                 ),
                 ),
                 //color:Colors.amber.withOpacity(0.5),
                 width: 80,
                 height: 60,
                 margin: EdgeInsets.all(4.0),
                 decoration: BoxDecoration(
                   color: Colors.amber,
                   shape: BoxShape.rectangle,
                   border: new Border.all(
                       color: Colors.red,
                       width: 5.0,
                       style: BorderStyle.solid
                   ),
                   borderRadius: new BorderRadius.circular(20.0),
                   boxShadow: [
                   new BoxShadow(
                   color: Colors.black,
                   offset: new Offset(10.0, 10.0),
                   blurRadius: 40.0,
                 ) // 07610641 help me to edit my border button.
                 ],
                 ),
               ),
             ),
           ],
         ),
       ),
       ),

   );


  }

}









