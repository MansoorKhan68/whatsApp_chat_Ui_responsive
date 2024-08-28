import 'package:flutter/material.dart';
import 'package:whatsapp/utils/colors.dart';

class WebSearchBar extends StatelessWidget {
  const WebSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.08,
      width: MediaQuery.of(context).size.width * 0.30,
      padding: const EdgeInsets.all(10.0),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: dividerColor),
        ),
      ),
      child: TextField(decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 10),
        filled: true,
        fillColor: searchBarColor,
        
        hintStyle: const TextStyle(fontSize: 14),
        prefixIcon:const Icon(Icons.search),
        hintText: "search or start new chat",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide:const  BorderSide(
            width:0,
            style: BorderStyle.none
          ),
        ),
      ),),
      
    );
  }
}
