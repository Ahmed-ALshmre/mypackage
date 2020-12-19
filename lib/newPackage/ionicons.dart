import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';


class IconsPackage extends StatefulWidget {
  @override
  _IconsPackageState createState() => _IconsPackageState();
}

class _IconsPackageState extends State<IconsPackage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Icon(Ionicons.pint),
      ),
    );
  }
}
