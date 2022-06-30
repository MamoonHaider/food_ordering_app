import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:country_code_picker/country_code_picker.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  bool termsCheckBox = false;

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
            'Signup',
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
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
            child: SizedBox(
              width: 278,
              height: 35,
              // padding: const EdgeInsets.all(10),
              child: TextField(
                textAlign: TextAlign.start,
                // obscureText: true,
                // enableSuggestions: false,
                // autocorrect: false,
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
                    hintText: "Full name",
                    fillColor: Color.fromARGB(179, 218, 218, 218)),
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 70, bottom: 10),
                child: SizedBox(
                  width: 100,
                  height: 35,

                  // padding: const EdgeInsets.all(10),
                  child: CountryCodePicker(
                    boxDecoration: BoxDecoration(
                      color: Color.fromARGB(255, 145, 143, 143),
                    ),
                    backgroundColor: Color.fromARGB(255, 145, 143, 143),

                    showDropDownButton: true,
                    // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                    initialSelection: 'PK',
                    favorite: ['+92', 'PK'],
                    // optional. Shows only country name and flag

                    showCountryOnly: false,
                    // optional. Shows only country name and flag when popup is closed.
                    showOnlyCountryWhenClosed: false,
                    // optional. aligns the flag and the Text left
                    alignLeft: false,
                    textStyle: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  ),
                  // child: TextField(
                  //   textAlign: TextAlign.start,
                  //   // obscureText: true,
                  //   // enableSuggestions: false,
                  //   // autocorrect: false,
                  //   decoration: InputDecoration(
                  //       border: OutlineInputBorder(
                  //         borderRadius: BorderRadius.circular(5.0),
                  //         borderSide: BorderSide(
                  //           width: 0,
                  //           style: BorderStyle.none,
                  //         ),
                  //       ),
                  //       filled: true,
                  //       hintStyle: TextStyle(
                  //           color: Color.fromARGB(255, 145, 143, 143),
                  //           fontSize: 13),
                  //       hintText: "",
                  //       fillColor: Color.fromARGB(179, 218, 218, 218)),
                  // ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 10),
                child: SizedBox(
                  width: 167,
                  height: 35,
                  // padding: const EdgeInsets.all(10),
                  child: TextField(
                    textAlign: TextAlign.start,
                    // obscureText: true,
                    // enableSuggestions: false,
                    // autocorrect: false,
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
                        hintText: "Mobile",
                        fillColor: Color.fromARGB(179, 218, 218, 218)),
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ], // Only numbers can be entered
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
            child: SizedBox(
              width: 278,
              height: 35,
              // padding: const EdgeInsets.all(10),
              child: TextField(
                textAlign: TextAlign.start,
                // obscureText: true,
                // enableSuggestions: false,
                // autocorrect: false,
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
                    hintText: "Referal code (Optional)",
                    fillColor: Color.fromARGB(179, 218, 218, 218)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
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
          // Padding(
          //   padding: const EdgeInsets.only(left: 165.0, bottom: 10),
          //   child: SizedBox(
          //     child: FlatButton(
          //         onPressed: () => {}, child: Text("Forgot Password?")),
          //   ),
          // ),
          Row(
            children: [
              Checkbox(
                checkColor: Color.fromARGB(255, 255, 255, 255),
                activeColor: Color.fromARGB(255, 255, 255, 255),
                value: this.termsCheckBox,

                onChanged: (val) {
                  onChanged:
                  () {
                    // radioButtonItem = 'Marked';
                    // id = 1;
                  };
                },
                // onChanged: (bool value) {
                //   setState(() {
                //     this.termsCheckBox = value;
                //   });
                // },
                // onChanged: () => {},
              ),
              Text('I accept the terms and conditions'),
            ],
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
                  'Signup',
                  style: TextStyle(
                      // backgroundColor: Color.fromARGB(255, 255, 0, 0),
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
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
              'Already have an account?',
              style: TextStyle(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 0.0, top: 0),
            child: SizedBox(
              child: FlatButton(
                onPressed: () => {Navigator.pushNamed(context, '/login')},
                child: Text(
                  "Login",
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
