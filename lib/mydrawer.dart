import 'package:flutter/material.dart';

const TextStyle myTextStyle = TextStyle(fontSize: 20);
Drawer myDrawer() {
  final navNames = [
    "My Progress",
    "Rate the App",
    "My Langauge",
    "English",
    "Hindi",
    "Profile Details",
    "Invite Your Friends",
    "Contribute your Article",
    "Join Community",
    "Follow us on Instagram",
    "v 1.1.5"
  ];
  final navIcon = [
    Icon(Icons.signal_cellular_4_bar, color: Colors.purple[800]),
    Icon(Icons.star, color: Colors.purple[800]),
    Icon(Icons.cloud_circle, color: Colors.purple[800]),
    Icon(Icons.done, color: Colors.purple[800]),
    Icon(Icons.check_box_outline_blank, color: Colors.purple[800]),
    Icon(Icons.person, color: Colors.purple[800]),
    Icon(Icons.child_friendly, color: Colors.purple[800]),
    Icon(Icons.add_to_photos, color: Colors.purple[800]),
    Icon(Icons.shopping_basket, color: Colors.purple[800]),
    Icon(Icons.view_agenda, color: Colors.purple[800]),
    Icon(Icons.verified_user, color: Colors.purple[800])
  ];
  return Drawer(
    child: ListView.separated(
      separatorBuilder: (context, index) => Divider(
        height: 8,
        color: Colors.black,
      ),
      itemCount: 11,
      itemBuilder: (context, index) => ListTile(
        leading: navIcon[index],
        title: Text(
          navNames[index],
          style: myTextStyle,
        ),
      ),
    ),
  );
}
