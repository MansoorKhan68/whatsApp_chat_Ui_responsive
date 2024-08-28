import 'package:flutter/material.dart';
import 'package:whatsapp/utils/colors.dart';
import 'package:whatsapp/widgets/chat_list.dart';
import 'package:whatsapp/widgets/contacts_list.dart';
import 'package:whatsapp/widgets/web_chat_appbar.dart';
import 'package:whatsapp/widgets/web_profile_bar.dart';
import 'package:whatsapp/widgets/web_search_bar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Left panel (profile and contacts)
          const Flexible(
            flex: 3,
            child: Column(
              children: [
                WebProfileBar(), // Profile bar at the top
                WebSearchBar(), // Search bar below the profile bar

                Expanded(
                  child: ContactsList(), // List of contacts takes remaining space
                ),
              ],
            ),
          ),
          // Right panel (chat content area)
          Expanded(
            flex: 7,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/background_image.png"),
                    fit: BoxFit.cover),
              ),
              child: Column(
                children: [
                  const WebChatAppbar(), // Chat app bar at the top

                  const Expanded(child: ChatList()), // Chat list takes remaining space

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
              ),
            ),
          ),
        ],
      ),
    );
  }
}
