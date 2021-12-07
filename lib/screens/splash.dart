import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  List<Map<String, dynamic>> dummyData = [
    {
      "title": "Auth",
      "description": "Authentication",
    },
    {
      "title": "Json",
      "description": "Json Data",
    },
    {
      "title": "User Interface",
      "description": "UserInterface application",
    },
    {
      "title": "Social Accounts",
      "description": "Google, Facebook, Firebase",
    },
    {
      "title": "API Integration",
      "description": "API Integration",
    },
    {
      "title": "Serialization",
      "description": "Serialization data",
    },
    {
      "title": "FAB",
      "description": "Floating Action Button",
    },
    {
      "title": "Elevated Button",
      "description": "notify",
    },
    {
      "title": "Listview",
      "description": "notify",
    },
  ];
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
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFFc895ea),
                    Color(0xFF603fac),
                  ],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Wellcome",
                    style: GoogleFonts.lato(fontSize: 50, color: Colors.white),
                  ),
                  Text(
                    "Download Free source",
                    style: GoogleFonts.lato(fontSize: 15, color: Colors.white),
                  ),
                  Text(
                    "From UiLover channel",
                    style: GoogleFonts.lato(fontSize: 15, color: Colors.white),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height -
                  MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width,
              color: Colors.purple[50],
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: dummyData.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () {},
                      title: Text('${dummyData[index]['title']}'),
                      subtitle: Text('${dummyData[index]['description']}'),
                      leading: Icon(Icons.design_services),
                      trailing: Icon(Icons.add),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
