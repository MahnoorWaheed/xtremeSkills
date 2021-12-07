import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatefulWidget {
  const SignUp({ Key? key }) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: [
         Container(
           margin: EdgeInsets.only(top: 100),
           child: Column(
             children: [
               Container(
                 margin: EdgeInsets.only(top: 120,left: 90),
                 child: Row(
                   children: [
                     Text("Ui",
                      style: GoogleFonts.lato(fontSize: 50,
                     ),
                      // TextStyle(
                    //    fontSize: 50,
                    //    fontWeight: FontWeight.bold
                    //  ),
                     ),
                     Text("Lover",
                     style: GoogleFonts.lato(fontSize: 50, color: Color(0xFF7522ac),
                     fontWeight: FontWeight.bold,
                     ),
                     ),
                 ],
                 ),
               ),
               Container(
                 
                 child: Text("A Gateway Of UI Design",
                 style: GoogleFonts.lato(fontSize: 15, color: Colors.grey)
                 ),
               ),
               Container(
                 width: 300,
                 height: 50,
                 margin: EdgeInsets.only(top: 20,left: 10),
                 child: TextFormField(
                   decoration: InputDecoration(
                labelText: 'Enter Your Name',
                 fillColor: Color(0xFFe1e0e2), filled: true,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(15),
                ),
                 focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(15),
                )),
                 ),
                ),
                 Container(
                 width: 300,
                 height: 50,
                 margin: EdgeInsets.only(top: 20,left: 10),
                 child: TextFormField(
                   decoration: InputDecoration(
                labelText: 'Enter Your Email',
                 fillColor: Color(0xFFe1e0e2), filled: true,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(15),
                ),
                 focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(15),
                )),
                 ),
                ),
                Container(
                 width: 300,
                 height: 50,
                 margin: EdgeInsets.only(top: 20,left: 10),
                 child: TextFormField(
                   decoration: InputDecoration(
                labelText: 'Enter Your Password',
                 fillColor: Color(0xFFe1e0e2), filled: true,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(15),
                ),
                 focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(15),
                )),
                 ),
                ),
                Container(
                 width: 300,
                 height: 50,
                 margin: EdgeInsets.only(top: 20,left: 10),
                 child: TextFormField(
                   decoration: InputDecoration(
                labelText: 'Re-Enter Your Password',
                 fillColor: Color(0xFFe1e0e2), filled: true,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(15),
                ),
                 focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(15),
                )),
                 ),
                ),
                Container(
                    width: 330,
                    height: 65.5,
                    margin: EdgeInsets.only(top: 15,left: 8),
                    //padding: EdgeInsets.all(10),
                    child: ElevatedButton( //Elevation Button For Get Started
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF7522ac), //background color of button
                 side: BorderSide(width:1, color:Colors.white), //border width and color
                     elevation: 3, //elevation of button
                      shape: RoundedRectangleBorder( //to set border radius to button
                     borderRadius: BorderRadius.circular(15)
                 ),
                   padding: EdgeInsets.all(20) //content padding inside button
                      ),
                      onPressed: (){
                    //     Navigator.push(
                    //         context,
                    //         MaterialPageRoute(builder: (context) => SplashScreen()),    
                    //  );
                        
                },
                
                 child: Text("Signup",
                 style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20,
                    color: Colors.white
                    ),
                 )),
                  ),
                Container(
                  margin: EdgeInsets.only(right: 100,top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                    GestureDetector(
                      child: Text("Forgetten password?", 
                      style: TextStyle(fontSize: 17, color: Color(0xFF7522ac), fontWeight: FontWeight.w900),
                      ),
                    )
                  ],),
                ),  
      ],
      ),
      ),
     
      ],
      ),

    );
  }
}