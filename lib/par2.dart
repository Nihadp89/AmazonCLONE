import 'package:flutter/material.dart';

class shane extends StatefulWidget {
  final String text;
  final IconData Icon;
  final void Function()? onTap;

  shane({
    super.key,
    required this.text,
    required this.Icon,
    required this.onTap,
  });

  State<shane> createState() => _shaneState();
}
class _shaneState extends State<shane> {
  Widget build(BuildContext context) {
    return InkWell(
      onTap:widget.onTap,
      child: Container(
        child: Column(
          children: [
            Icon(widget.Icon),
            Text(widget.text),
          ],
        ),
      ),
    );
  }
}
