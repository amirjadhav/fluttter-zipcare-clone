import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
//import 'package:search_widget/search_widget.dart';

class ZipCareBody extends StatefulWidget {
  ZipCareBody({Key key}) : super(key: key);

  @override
  _ZipCareBodyState createState() => _ZipCareBodyState();
}

class _ZipCareBodyState extends State<ZipCareBody> {
  TextStyle mystyle = TextStyle(fontSize: 16);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                hintText: "Search",
                hintStyle: TextStyle(fontSize: 20)),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              MaterialButton(
                color: Colors.deepPurple[300],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Text(
                  "All",
                  style: TextStyle(color: Colors.white70, fontSize: 16),
                ),
                onPressed: () {},
              ),
              myMaterialButton("Meditation"),
              myMaterialButton("Career"),
              myMaterialButton("Education"),
              myMaterialButton("Sport"),
            ],
          ),
        ),

        //? Create card here...
      ],
    );
  }

  myMaterialButton(String txt) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      child: Text(
        txt,
        style: mystyle,
      ),
      onPressed: () {},
    );
  }
}
