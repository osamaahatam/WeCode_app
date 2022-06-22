
import 'package:flutter/material.dart';
// import 'package:wecode/src/my_app.dart';

void main() {
  runApp( const MaterialApp(
    debugShowCheckedModeBanner: false,
    title:'We Code',
    home: Home(),
  ));
}


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}
List<String> _images=[
'assets/image1.jpg',
'assets/image2.jpg' , 
'assets/image3.jpg',
];
String _temp=_images[0];

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:const  Color.fromARGB(255, 68, 68, 68),
      appBar: AppBar(
        title:const  Text('WE CODE'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 68, 68, 68),
      ),
      body: Center(
        child: Column(
          //to center the colunm in the body
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
            const SizedBox(height: 40.0,),
             const Text(
              'Choose The city',
              style: TextStyle(
                fontSize:30.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
             ),
             ClipRRect(
              //the main image 
              child:Image.asset(
                _temp,
                height: 250,
                width: 350,
                ),
              // borderRadius: BorderRadius.all(),
             ),
             Row(
              children: [
                const SizedBox(width: 25.0,height: 150.0,),
                GestureDetector (
                  child: Image.asset(
                    _images[0],
                    width: 100,
                    height: 100,
                    ), 
                   onTap: (){
                    setState(() {
                      _temp=_images[0];
                    });
                  },
                ),
                const SizedBox(width: 5.0,),
                GestureDetector (
                  child: Image.asset(
                    _images[1],
                    width: 135,
                    height: 100,
                    ), 
                   onTap: (){
                    setState(() {
                      _temp=_images[1];
                    });
                  },
                ),
              const SizedBox(width: 5.0,),
                GestureDetector (
                  child: Image.asset(
                    _images[2],
                    width: 100,
                    height: 120,
                    ), 
                   onTap: (){
                    setState(() {
                      _temp=_images[2];
                    });
                  },
                ),
              ],
             ),
           ],
          ),
        ),
          );
  }
}

