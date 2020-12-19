import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:octo_image/octo_image.dart';

class ImageError extends StatefulWidget {
  @override
  _ImageErrorState createState() => _ImageErrorState();
}

class _ImageErrorState extends State<ImageError> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: OctoImage.fromSet(
          fit: BoxFit.cover,
          image: CachedNetworkImageProvider(
            'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4e/Macaca_nigra_self-portrait_large.jpg/1024px-Macaca_nigra_self-portrait_large.jpg',
          ),
          octoSet: OctoSet.circleAvatar(
            backgroundColor: Colors.red,
            text: Text("M"),
          ),
        ),
      ),
    );
  }
}
