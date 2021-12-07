import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  body: ListView(
      //   padding: EdgeInsets.all(20.0),
      //   children: <Widget>[
      //     ClipPath(
      //       clipper: WaveClipperOne(flip: true,reverse: true),
      //       child: Container(
      //         height: 120,
      //         color: Colors.orange,
      //         child: Center(child: Text("WaveClipperTwo(flip: true,reverse: true)")),
      //       ),
      //     ),
      //   ],
      //  ),
      //backgroundColor: Colors.deepPurple,
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
               gradient: LinearGradient(
                 begin: Alignment.topRight,
                end: Alignment.bottomRight,
                 colors: [
                   Color(0xFFc895ea),
                   
                    Color(0xFF603fac),
                    ],),
                    ),
          child: Column(
            
             children: [
               Center(
                 child: Container(
                   margin: EdgeInsets.only(top: 180),
                   child: Text("Wellcome",
                   style: GoogleFonts.lato(fontSize: 50, color: Colors.white),
                   ),
                 ),
               ),
               Center(
                 child: Container(
                   margin: EdgeInsets.only(top: 10),
                   child: Text("Download Free source",style: GoogleFonts.lato(fontSize: 15, color: Colors.white),),
                 ),
               ),
               Center(
                 child: Container(
                  margin: EdgeInsets.only(top: 10),
                   child: Text("From UiLover channel",style: GoogleFonts.lato(fontSize: 15, color: Colors.white),),
                 ),
               ),
               
             ],
             ),
        ),
      ),
    );
  }
}