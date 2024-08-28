import 'package:flutter/material.dart';
import 'package:whatsapp/screens/mobile_chat_screen.dart';
import 'package:whatsapp/utils/colors.dart';
import 'package:whatsapp/widgets/info.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
        itemCount: info.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>const MobileChatScreen()));
                  },
                  child: ListTile(
                    title: Text(
                      info[index]["name"].toString(),
                      style: const TextStyle(fontSize: 18),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 6),
                      child: Text(
                        info[index]["message"].toString(),
                        style: const TextStyle(fontSize: 15),
                      ),
                    ),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                        info[index]["profilePic"].toString(),
                      ),
                    ),
                    trailing: Text(
                      info[index]["time"].toString(),
                      style: const TextStyle(fontSize: 13, color: Colors.grey),
                    ),
                  ),
                ),
                const Divider(color: dividerColor, indent: 70),
              ],
            ),
          );
        },
      ),
    );
  }
}
