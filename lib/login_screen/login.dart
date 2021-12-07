import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:xtreme_skills/login_screen/register.dart';
import 'package:xtreme_skills/models/post_model.dart';
import 'package:xtreme_skills/widgets/action_button.dart';
import 'package:xtreme_skills/widgets/custom_buttons.dart';
import 'package:xtreme_skills/widgets/cus_text_field.dart';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/logo1.png",
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height * 0.3,
            ),
            CusTextField(label: "Enter your Email"),
            CusTextField(label: "Enter your Password"),
            ActionButton(title: "Login", onTap: () {}),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 7),
                  child: MyGestures(
                    text: "Forget Password?",
                    ontap: () {},
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            const Divider(
              color: Colors.black,
              thickness: 0.2,
              indent: 20,
              endIndent: 20,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an Account? "),
                MyGestures(
                    text: "Sign Up Here",
                    ontap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterView()));
                    })
              ],
            ),
          ],
        ),
      ),
    );
  }
}
