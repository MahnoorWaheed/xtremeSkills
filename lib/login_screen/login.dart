import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:xtreme_skills/models/post_model.dart';
import 'package:xtreme_skills/widgets/action_button.dart';
import 'package:xtreme_skills/widgets/custom_buttons.dart';
import 'package:xtreme_skills/widgets/login_text_field.dart';
import 'package:http/http.dart' as http;
class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

List<PostModel> postlist=[];

Future<List<PostModel>> getPostApi() async{
  final response =await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
  var data= jsonDecode(response.body.toString());
  if(response.statusCode==200){
   postlist.clear();
  for(Map i in data){
    postlist.add(PostModel.fromJson(i));
  }
  return postlist;
  }else
  {
return postlist;
  }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color(0xffFFFFFF),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: FutureBuilder(
              future: getPostApi(),
              builder: (context, snapshot){
                if(!snapshot.hasData)
                {
                  return Text("reloading");
                }else
                {
                  return ListView.builder(
                    itemCount: postlist.length,
                    itemBuilder: (ctx,index){
                    return   Column(
                      children: [
                        Image.asset("assets/images/logo.png", 
         fit: BoxFit.cover,
         width: MediaQuery.of(context).size.width*0.5,
         height: MediaQuery.of(context).size.height*0.3,
         
         ),     
         MyTextField(
           label: "Enter your Email",
         ),
          MyTextField(
            label: "Enter your Password",
          ),
          ActionButton(
            text: "Login",
            ontap: () {
              
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              child: MyGestures(
                text: "Forget Password?",
                ontap: (){

                },
              ),
            ),
          ],),
          Divider(
                  color: Colors.black,
                  height: 10,
                  thickness: 0.2,
                  indent: 20,
                  endIndent: 20,
                ),
        //  
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text("Don't have an Account? "),
                ),
              MyGestures(
                text: "Sign Up Here",
              ontap: (){

              },
              ),

            ],),]);
                  });
                }
              }
              ),
          )
        
        
      ],
      ),
    );
  }
}

