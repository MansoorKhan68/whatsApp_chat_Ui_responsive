import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/info.dart';
import 'package:whatsapp/widgets/my_message_card.dart';
import 'package:whatsapp/widgets/sender_messege_card.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        if (messages[index]["isMe"] == true) {
          // MyMessage => card
          return MyMessageCard(
            message: messages[index]["text"].toString(),
            date: messages[index]["time"].toString(),
          );
        }
        return // SenderMessage => card
        SenderMessageCard(
          message: messages[index]["text"].toString(),
          date: messages[index]["time"].toString(),
        );
        
      },
      
    );
  }
}
