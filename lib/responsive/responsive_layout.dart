import 'package:flutter/material.dart';


class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScreenLayout;
  final Widget webScreenLayout;
  const ResponsiveLayout({super.key, required this.mobileScreenLayout,required this.webScreenLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context , Constraints){
      if (Constraints.maxWidth > 600){
        // Web Layout
        return webScreenLayout;

      }
      return mobileScreenLayout;
    });
  }
}