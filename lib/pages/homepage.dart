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
        title: const Text( "My App"),
      ),
      body: ListView(
        children :[
          img(120.0,'https://scontent.fhdy2-1.fna.fbcdn.net/v/t39.30808-6/241438482_994640744653310_6682229638160222983_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeHYE7q4-vHTJHywLFc8LOFIglEZ0xxOvIOCURnTHE68g36HW1ip9ZqZf6R4uGpjB9_Gytj87F6g5K2ky2WloeD7&_nc_ohc=yNnY_WyPBFQAX8JIQ7c&_nc_zt=23&_nc_ht=scontent.fhdy2-1.fna&oh=00_AT-_tTFDS4v6VAYxPaM2qYT7m66T2UAVYwH_-3aiE64T5A&oe=61C147BC'), 
          linetext('My profile'),
          card(FontAwesomeIcons.userCircle,'นายวัชรินทร์ โรจเรณุมาศ',Colors.grey[350]),
          card(FontAwesomeIcons.userCircle,'ชื่อเล่น ฟิล์ม',Colors.grey[400]),
          icotex(FontAwesomeIcons.phoneSquareAlt,'062-2266723'),
          icotex(FontAwesomeIcons.envelopeSquare,'filmm09615@gmail.com'),
          card(FontAwesomeIcons.birthdayCake,'18 กุมภาพันธ์ 2544',Colors.pink[200]),
          linetext('Education'),
          img(60.0,'https://scontent.furt2-1.fna.fbcdn.net/v/t1.18169-9/16996185_218527325281069_1590992169471332953_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeEkqTvMVRCtyDdoYr3qUs8WLFsKElCkpJIsWwoSUKSkkk-XbJWAaRVy9UL1aV2PS7_RGx5x2-Tk2j9_9yJIEKBe&_nc_ohc=hdrRrh3WPDkAX_Nkxpq&_nc_ht=scontent.furt2-1.fna&oh=00_AT-PacE3QGds1ELLT9Xsft1F87Z-IG__bN0SrSr1Kyq8Gw&oe=61DFF4B6'),
          icotex(FontAwesomeIcons.school,'โรงเรียนสหมิตรบำรุง'),
          img(60.0,'http://jaroenwit.ac.th/home/wp-content/uploads/2020/04/JW_logo.png'),
          icotex(FontAwesomeIcons.school,'โรงเรียนเจริญวิทย์'),
          img(60.0,'https://scontent.furt2-1.fna.fbcdn.net/v/t31.18172-8/10348808_704187429626788_6694660885796906751_o.jpg?_nc_cat=100&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeEnCYaXk33ticcB8Xx3y_nvYYerxq0CqLZhh6vGrQKotvkAbd5tM99NNtbOF1iwOGaZAzntf4mCu2fQH2tt-MHI&_nc_ohc=Q8awDDx_dPUAX9rHUY8&_nc_ht=scontent.furt2-1.fna&oh=00_AT8JAWURFHYuQ-_0raWNJWluPBwp2pmRkxoEiVHr9wxOxg&oe=61E2CFAF'),
          icotex(FontAwesomeIcons.school,'โรงเรียนนาบอน'),
          img(60.0,'https://campus.campus-star.com/app/uploads/2015/06/%E0%B8%95%E0%B8%A3%E0%B8%B2%E0%B8%A1%E0%B8%AB%E0%B8%B2%E0%B8%A7%E0%B8%B4%E0%B8%97%E0%B8%A2%E0%B8%B2%E0%B8%A5%E0%B8%B1%E0%B8%A2%E0%B8%97%E0%B8%B1%E0%B8%81%E0%B8%A9%E0%B8%B4%E0%B8%93.jpg'),
          icotex(FontAwesomeIcons.university,'มหาวิทยาลัยทักษิณ วิทยาเขตพัทลุง'),
          linetext('Contact'), 
          icotex(FontAwesomeIcons.facebook,'Watcharin Rotjaranumas'),
          icotex(FontAwesomeIcons.instagram,'watcharin_02418'),
        ] ,
      ),
    );
  }

  Row linetext(tex){
    return Row(
      children: [
        divider(),
        Text(tex),
        divider()
      ],
    );
  }

  Expanded divider() => Expanded(
        child: Container(
          margin: const EdgeInsets.only(left: 10,right: 20),
          child: const Divider(
            thickness: 3,
          )
      ),
    );
  

  CircleAvatar img(ra,ur) {
    return CircleAvatar(
      radius: ra,
      backgroundImage:
          NetworkImage(ur),
      backgroundColor: Colors.transparent,
    );
  }
  

  Card card(ico,tex,col) => Card(
      color: col,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          FaIcon(ico),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              tex,
              style: GoogleFonts.mali(
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );

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
  Row icotex(ico,tex) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(ico),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            tex,
            style: GoogleFonts.mali(
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}