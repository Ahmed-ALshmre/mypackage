import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';


class ErrorImageSaved extends StatefulWidget {
  @override
  _ErrorImageSavedState createState() => _ErrorImageSavedState();
}

class _ErrorImageSavedState extends State<ErrorImageSaved> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: CachedNetworkImage(
          imageUrl: "http://via.placeholder.com/200x150",
          imageBuilder: (context, imageProvider) => Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover,
                  colorFilter:
                  ColorFilter.mode(Colors.red, BlendMode.colorBurn)),
            ),
          ),
          placeholder: (context, url) => CircularProgressIndicator(),
          errorWidget: (context, url, error) => Icon(Icons.error),
        ),
      ) ,
    );
  }
}
