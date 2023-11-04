import 'package:argrostation/screens/Detail_Screen.dart';
import 'package:argrostation/screens/Homi.dart';
import 'package:argrostation/screens/Itempage.dart';
import 'package:argrostation/screens/category_page.dart';
import 'package:argrostation/screens/home.dart';
import 'package:argrostation/screens/phone.dart';
import 'package:argrostation/screens/profile.dart';
import 'package:argrostation/screens/splash.dart';
import 'package:argrostation/screens/upipayment.dart';
import 'package:argrostation/screens/verify.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: 'splash',
    debugShowCheckedModeBanner: false,
    routes: {
      'upi':(context)=> UPI(),
      'home':(context)=>HomeScreen(),
      'detail':(context)=>DetailPage(),
      'splash':(context) => Splash(),
      'phone': (context) => MyPhone(),
      'verify': (context) => MyVerify(),
      'profile':(context)=>Profile(),
      'category':(context)=>CategoryScreen(),
      'homi':(context)=>Home(),
      'itempage':(context)=>Itempage()

    },
  ));
}

