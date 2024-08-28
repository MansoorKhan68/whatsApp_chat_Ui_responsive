import 'package:flutter/material.dart';

import 'package:whatsapp/utils/colors.dart';
import 'package:whatsapp/widgets/contacts_list.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: appBarColor,
          elevation: 0,
          title: const Text(
            "WhatsApp",
            style: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: Colors.grey,
              ),
            ),
          ],
          // tabs
          bottom: const TabBar(
              indicatorColor: tabColor,
              indicatorWeight: 3,
              labelColor: tabColor,
              unselectedLabelColor: Colors.grey,
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              tabs: [
                Tab(
                  text: "Chat",
                ),
                Tab(
                  text: "Status",
                ),
                Tab(
                  text: "Calls",
                ),
              ]),
        ),
        body: const TabBarView(
          children: [
            ContactsList(), // For Chat tab
            Center(child: Text('Status')), // Placeholder for Status tab
            Center(child: Text('Calls')), // Placeholder for Calls tab
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: tabColor,
          child: Icon(
            Icons.comment,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
