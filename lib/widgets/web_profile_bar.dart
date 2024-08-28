import 'package:flutter/material.dart';
import 'package:whatsapp/utils/colors.dart';

class WebProfileBar extends StatelessWidget {
  const WebProfileBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.077,
      width: MediaQuery.of(context).size.width * 0.30,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: const BoxDecoration(
        border: Border(
          right: BorderSide(
            color: dividerColor,
          ),
        ),
        color: webAppBarColor,
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          // Calculate a minimum size for the CircleAvatar
          double avatarRadius = constraints.maxHeight * 0.3;
          double minAvatarRadius = 15; // Set a minimum radius
          double finalAvatarRadius = avatarRadius < minAvatarRadius ? minAvatarRadius : avatarRadius;

          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundImage: const NetworkImage(
                  "https://upload.wikimedia.org/wikipedia/commons/8/85/Elon_Musk_Royal_Society_%28crop1%29.jpg",
                ),
                radius: finalAvatarRadius,
              ),
              Expanded(
                // Use Expanded instead of Flexible
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end, // Align icons to the end within the expanded space
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.comment,
                        color: Colors.grey,
                      ),
                      iconSize: constraints.maxHeight * 0.4, // Adjust icon size dynamically
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.more_vert,
                        color: Colors.grey,
                      ),
                      iconSize: constraints.maxHeight * 0.4, // Adjust icon size dynamically
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
