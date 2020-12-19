import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IconButton(
          // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
            icon:FaIcon(FontAwesomeIcons.search,color: Colors.black,),
            onPressed: () { print("Pressed"); }
        ),
      ),
    );
  }
}