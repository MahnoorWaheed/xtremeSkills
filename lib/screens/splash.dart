import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:xtreme_skills/models/post_model.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  List<PostModel> postlist = [];
  Future<List<PostModel>> getPostApi() async {
    final response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map i in data) {
        postlist.add(PostModel.fromJson(i));
      }
      return postlist;
    } else {
      return postlist;
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getPostApi();
  }

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
                  itemCount: postlist.length,
                  itemBuilder: (context, index) {
                    return Card(
                        child: Padding(
                      padding:
                          const EdgeInsets.only(top: 32, bottom: 32, left: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(postlist[index].title!),
                          Text('${postlist[index].id}'),
                        ],
                      ),
                    ));
                    // return ListTile(
                    //   onTap: () {},
                    //   title: Text('${dummyData[index]['title']}'),
                    //   subtitle: Text('${dummyData[index]['description']}'),
                    //   leading: Icon(Icons.design_services),
                    //   trailing: Icon(Icons.add),
                    // );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
