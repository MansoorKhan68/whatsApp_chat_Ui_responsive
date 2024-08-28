import 'package:flutter/material.dart';
import 'package:whatsapp/responsive/responsive_layout.dart';
import 'package:whatsapp/screens/mobile_screen_layout.dart';
import 'package:whatsapp/screens/web_screen_layout.dart';
import 'package:whatsapp/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "WhatsApp UI",
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: backgroundColor),
        
      
      home:const ResponsiveLayout(
        mobileScreenLayout: MobileScreenLayout(),
         webScreenLayout: WebScreenLayout())
    );
  }
}
