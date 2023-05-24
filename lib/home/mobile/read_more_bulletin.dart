import 'package:flutter/material.dart';

class ReadMoreBulletin extends StatelessWidget {
  final String text;
  const ReadMoreBulletin({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      // width:double.infinity,
      decoration: BoxDecoration(color: Colors.orange[700]),
      child: Text(
        text,
        style: TextStyle(fontSize: 24, color: Colors.white),
      ),
    );
  }
}
