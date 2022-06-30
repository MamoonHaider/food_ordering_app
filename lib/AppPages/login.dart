import 'dart:html';
import 'package:restaurant_user/TemplateClasses/getTemplates.dart';

import 'package:flutter/material.dart';

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
                width: 100,
                child: Image(
                  image: new AssetImage("images/logo icon.png"),
                  // pathImage: "images/fast delievery icon.png",
                ),
              ),
            ],
          ),
          Text(
            'Login',
            style: TextStyle(
                color: Color.fromARGB(255, 255, 0, 0),
                fontSize: 15,
                fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 10.0, left: 10, right: 10, bottom: 10),
            child: SizedBox(
              width: 278,
              height: 35,
              // padding: const EdgeInsets.all(10),
              child: TextField(
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                    hintStyle: TextStyle(
                        color: Color.fromARGB(255, 145, 143, 143),
                        fontSize: 13),
                    hintText: "Email",
                    fillColor: Color.fromARGB(179, 218, 218, 218)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: SizedBox(
              width: 278,
              height: 35,
              // padding: const EdgeInsets.all(10),
              child: TextField(
                textAlign: TextAlign.start,
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                    hintStyle: TextStyle(
                        color: Color.fromARGB(255, 145, 143, 143),
                        fontSize: 13),
                    hintText: "Password",
                    fillColor: Color.fromARGB(179, 218, 218, 218)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 165.0, bottom: 10),
            child: SizedBox(
              child: FlatButton(
                  onPressed: () => {}, child: Text("Forgot Password?")),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: SizedBox(
              width: 278,
              height: 35,
              child: RaisedButton(
                color: Color.fromARGB(255, 255, 0, 0),
                onPressed: () => {},
                child: Text(
                  'Login',
                  style: TextStyle(
                      // backgroundColor: Color.fromARGB(255, 255, 0, 0),
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Text(
            '- - - - - - - - - OR - - - - - - - - -',
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // getTemplates()
              //     .getIconButton(Icon(AssetImage('images/google icon.png')));
              // getTemplates().getIconButton(
              //   AssetImage("images/google icon.png"),
              // ),

              // IconButton(onPressed: ()=>{}, icon: icon)

              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: SizedBox(
                  width: 130,
                  child: RaisedButton(
                    onPressed: () => {},
                    child: SizedBox(
                        height: 20,
                        width: 20,
                        child:
                            Image(image: AssetImage('images/google icon.png'))),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 15),
                child: SizedBox(
                  width: 130,
                  child: RaisedButton(
                    onPressed: () => {},
                    child: SizedBox(
                        height: 20,
                        width: 20,
                        child: Image(image: AssetImage('images/fb icon.png'))),
                  ),
                ),
              ),
              // RaisedButton(onPressed: () => {}),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(
              'Skip & Continue',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 0, 0),
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(top: 0.0),
            child: Text(
              'Dont have an account?',
              style: TextStyle(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 0.0, top: 0),
            child: SizedBox(
              child: FlatButton(
                onPressed: () => {},
                child: Text(
                  "Signup",
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 0, 0),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
