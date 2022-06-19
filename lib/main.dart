import 'package:flutter/material.dart';
// import 'package:wecode/src/my_app.dart';

void main() {
  runApp( const MaterialApp(
    debugShowCheckedModeBanner: false,
    title:'We Code',
    home: Home(),
  ));
}


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:const  Color.fromARGB(255, 68, 68, 68),
      appBar: AppBar(
        title: const Center(child: Text('WE CODE')),
        backgroundColor: const Color.fromARGB(255, 68, 68, 68),
      ),
      body: Center(
        child: Column(
          //to center the colunm in the body
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.network(
                "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/53ad14af-0dd4-4715-882a-da418cc0e544/d7qpsq5-12eb78c3-6b19-430b-92e2-07000b4b5db0.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwic3ViIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsImF1ZCI6WyJ1cm46c2VydmljZTpmaWxlLmRvd25sb2FkIl0sIm9iaiI6W1t7InBhdGgiOiIvZi81M2FkMTRhZi0wZGQ0LTQ3MTUtODgyYS1kYTQxOGNjMGU1NDQvZDdxcHNxNS0xMmViNzhjMy02YjE5LTQzMGItOTJlMi0wNzAwMGI0YjVkYjAuanBnIn1dXX0.QpQ8CRU0nXPIOZ8Y5V9jOji3dseNr0NiDzKHnRw56mU",
                width: 300.0,
                height: 250.0,
                ),
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Hello Kurdistan',
               style: TextStyle(
                shadows: [
                  Shadow(
                   blurRadius: 10.0,
                   offset: Offset(5, 5)
                  ),
                ],
               fontSize: 30.0,
               color: Colors.white,
               ),
             ),
          ],
        ),
          ),
    );
  }
}

