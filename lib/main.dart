import 'dart:js';

import 'package:flutter/material.dart';
import 'package:restaurant_user/AppPages/homePage.dart';
import 'package:restaurant_user/AppPages/login.dart';
import 'AppPages/Welcome.dart';
import 'package:restaurant_user/AppPages/categories.dart';
import 'package:restaurant_user/AppPages/login.dart';
import 'package:restaurant_user/AppPages/signup.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/Welcome', //Initial route or page for our web
      routes: {
        //paths/Routes for our web pages
        '/Welcome': (Context) => WelcomeScreen(),
        '/homePage': (Context) => homePage(),
        '/categories': (context) => categoriesPage(),
        '/login': (context) => loginPage(),
        '/signup': (context) => SignupPage(),
      },
      // '/Welcome': (context) => Welcome(),
    ));
