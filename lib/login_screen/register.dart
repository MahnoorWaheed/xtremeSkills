import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:xtreme_skills/login_screen/login.dart';
import 'package:xtreme_skills/widgets/action_button.dart';
import 'package:xtreme_skills/widgets/cus_text_field.dart';
import 'package:xtreme_skills/widgets/custom_buttons.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  _RegisterViewState createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Ui", style: GoogleFonts.lato(fontSize: 50)),
                  Text("Lover",
                      style: GoogleFonts.lato(
                          fontSize: 50,
                          color: Color(0xFF7522ac),
                          fontWeight: FontWeight.bold)),
                ],
              ),
              Text("A Gateway Of UI Design",
                  style: GoogleFonts.lato(fontSize: 15, color: Colors.grey)),
              CusTextField(label: 'Enter your name'),
              CusTextField(label: 'Enter your email'),
              CusTextField(label: 'Enter your password'),
              CusTextField(label: 'Re-enter your password'),
              ActionButton(
                onTap: () {},
                title: 'Sign Up',
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an Account? "),
                  MyGestures(
                      text: "Login Here",
                      ontap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login()),
                        );
                      })
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
