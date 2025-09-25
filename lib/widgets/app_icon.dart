import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {
  final String assetName;
  final double? size;
  final Color? color;

  const AppIcon(
      this.assetName, {
        super.key,
        this.size,
        this.color,
      });

  @override
  Widget build(BuildContext context) {
    // The base image widget
    Widget image = Image.asset(
      assetName,
      width: size,
      height: size,
      fit: BoxFit.contain,
    );

    // This is the tinting logic, now safely inside our widget.
    // It only runs if a color is passed in.
    if (color != null) {
      image = ColorFiltered(
        colorFilter: ColorFilter.mode(color!, BlendMode.srcIn),
        child: image,
      );
    }

    return image;
  }
}