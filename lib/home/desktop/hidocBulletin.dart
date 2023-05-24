import 'package:flutter/material.dart';

class HidocBulletin extends StatelessWidget {
  const HidocBulletin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      // width: ,
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 3.0,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hidoc Bulletin',
            style: TextStyle(fontSize: 30),
          ),
          Container(
            height: 5,
            width: 90,
            decoration: BoxDecoration(color: Colors.blueAccent),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Title',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            'Subtitle',
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 16.0),
          Text(
            'Read More',
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.blue,
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    );
  }
}
