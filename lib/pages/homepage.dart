import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: const Text( "My First App"),
      ),
      body: ListView(
        children :[
          profile(),
          firstname(),
          birthday(),
          telephone(),
          
        ] ,
      ),
    );
  }

  CircleAvatar profile() => const CircleAvatar(
                radius: 150.0,
                backgroundImage:
                    NetworkImage('https://scontent.fhdy2-1.fna.fbcdn.net/v/t39.30808-6/241438482_994640744653310_6682229638160222983_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeHYE7q4-vHTJHywLFc8LOFIglEZ0xxOvIOCURnTHE68g36HW1ip9ZqZf6R4uGpjB9_Gytj87F6g5K2ky2WloeD7&_nc_ohc=yNnY_WyPBFQAX8JIQ7c&_nc_zt=23&_nc_ht=scontent.fhdy2-1.fna&oh=00_AT-_tTFDS4v6VAYxPaM2qYT7m66T2UAVYwH_-3aiE64T5A&oe=61C147BC'),
                backgroundColor: Colors.transparent,
              );

  Card birthday() {
    return Card(
      color: Colors.pink[200],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          const FaIcon(FontAwesomeIcons.birthdayCake),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "18 กุมภาพันธ์ 2564",
              style: GoogleFonts.mali(
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Row firstname() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
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
  Row telephone() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const FaIcon(FontAwesomeIcons.phoneSquareAlt),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            "062-2266723",
            style: GoogleFonts.mali(
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}