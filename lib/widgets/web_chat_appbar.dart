import 'package:flutter/material.dart';
import 'package:whatsapp/utils/colors.dart';
import 'package:whatsapp/widgets/info.dart';

class WebChatAppbar extends StatelessWidget {
  const WebChatAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.077,
      width: MediaQuery.of(context).size.width * 0.7,
      padding: const EdgeInsets.all(10),
      color: webAppBarColor,
      child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
           
            children: [
              const CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://www.socialketchup.in/wp-content/uploads/2020/05/fi-vill-JOHN-DOE.jpg'),
                    radius: 30,
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.01,),
              Text(info[1]["name"].toString(),style: const TextStyle(fontSize: 18),),
            ],
          ),
          Row(children: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.search,color: Colors.grey,)),
            IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert,color: Colors.grey,)),
          ],)
        ],
      ),
    );
  }
}
