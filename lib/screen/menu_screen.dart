import 'package:flutter/material.dart';
import '../ui/menu_item.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  void goTo(BuildContext context, String path) {
    Navigator.of(context).pushNamed(path);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: GridView.count(crossAxisCount: 3,
        children: [
          MenuItem(
            label: "User",
            icon: Icons.people,
            color: Colors.lightBlue.shade800,
            onPress: () => goTo(context, '/login'),
          ),
          MenuItem(
            label: "Todo",
            icon: Icons.list,
            color: Color.fromARGB(255, 167, 150, 0),
          ),
          MenuItem(
            label: "Photo",
            icon: Icons.camera,
            color: Color.fromARGB(255, 255, 32, 32),
          ),
          MenuItem(
            label: "Album",
            icon: Icons.image,
            color: Color.fromARGB(255, 30, 182, 0),
          ),
          MenuItem(
            label: "Comment",
            icon: Icons.comment,
            color: Color.fromARGB(255, 153, 202, 39),
          ),
          MenuItem(
            label: "Post",
            icon: Icons.post_add,
            color: Color.fromARGB(255, 40, 0, 151),
            onPress: () => goTo(context, '/post'),
          ),
        ],
      ),
    );
  }
}