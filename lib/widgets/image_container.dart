import 'package:flutter/cupertino.dart';

import '../models/article_model.dart';

class ImageContainer extends StatelessWidget {
  final double width;
  final double height;
  final String imageUrl;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final double borderRadius;
  final Widget? child;

  const ImageContainer(
      {required this.width,
      required this.imageUrl,
      this.borderRadius = 20,
      this.height = 125,
      this.padding,
      this.margin,
      this.child,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          image: DecorationImage(
              image: NetworkImage(imageUrl),
              fit: BoxFit.cover)),
      child: child,
    );
  }
}
