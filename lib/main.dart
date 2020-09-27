import 'package:flutter/material.dart';
import 'package:zipcare_clone/zipcare_body.dart';

import 'mydrawer.dart';

void main() => runApp(ZipCareHome());

class ZipCareHome extends StatelessWidget {
  const ZipCareHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        //primarySwatch: Colors.white,
      ),
      title: "Zipcare Clone",
      home: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.purple[800]),
          actions: [
            IconButton(
                icon: Icon(
                  Icons.bookmark,
                ),
                onPressed: () {
                  debugPrint("Bookmark Clicked");
                })
          ],
          title: Center(
            child: Text(
              "Self Development",
              style: TextStyle(
                  color: Colors.purple[800],
                  fontSize: 25,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ),
        body: ZipCareBody(),
        drawer: myDrawer(),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.video_label,
                color: Colors.black45,
                size: 30,
              ),
              title: Text("data"),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.save,
                color: Colors.black45,
                size: 30,
              ),
              title: Text("data"),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.threesixty,
                color: Colors.black45,
                size: 30,
              ),
              title: Text("data"),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.queue_music,
                color: Colors.black45,
                size: 30,
              ),
              title: Text("data"),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.share,
                color: Colors.black45,
                size: 30,
              ),
              title: Text("data"),
            ),
          ],
        ),
      ),
    );
  }
}
