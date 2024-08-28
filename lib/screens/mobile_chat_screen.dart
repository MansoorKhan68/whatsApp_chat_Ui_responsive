import 'package:flutter/material.dart';
import 'package:whatsapp/utils/colors.dart';
import 'package:whatsapp/widgets/chat_list.dart';
import 'package:whatsapp/widgets/info.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(info[0]["name"].toString()),
        actions: [
          IconButton(onPressed: (){}, icon:const Icon(Icons.video_call),),
          IconButton(onPressed: (){}, icon:const Icon(Icons.call),),
          IconButton(onPressed: (){}, icon:const Icon(Icons.more_vert),),
        ],
      ),
      body: Column(children: [
        // chat list
        Expanded(child: ChatList()),
        // Message input box
                  Container(
                    height: MediaQuery.of(context).size.height * 0.07,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: dividerColor,
                        ),
                      ),
                      color: chatBarMessage,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.emoji_emotions_outlined,
                            color: Colors.grey,
                          ),
                          iconSize: 20, // Adjust icon size as needed
                        ),
                        const SizedBox(width: 10), // Space between icons
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.attach_file,
                            color: Colors.grey,
                          ),
                          iconSize: 20, // Adjust icon size as needed
                        ),
                        Expanded(
                          child: Container(
                            constraints: BoxConstraints(
                              maxWidth: MediaQuery.of(context).size.width * 0.5, // Adjust as needed
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: TextField(
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10), // Reduced vertical padding
                                  filled: true,
                                  fillColor: searchBarColor,
                                  hintText: "Type a message",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: const BorderSide(width: 0, style: BorderStyle.none),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.mic,
                            color: Colors.grey,
                          ),
                          iconSize: 20, // Adjust icon size as needed
                        ),
                      ],
                    ),
                  ),
                ],
              ));
       
    
  }
}