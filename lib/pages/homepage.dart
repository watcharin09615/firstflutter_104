import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: const Text( "My First App"),
      ),
      body: ListView(
        children :[
          firstname(),

        ] ,
      ),
    );
  }

  Row firstname() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            "นายวัชรินทร์ โรจเรณุมาศ",
            style: GoogleFonts.mali(
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}