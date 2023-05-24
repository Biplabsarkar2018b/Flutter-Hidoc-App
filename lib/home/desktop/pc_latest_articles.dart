import 'package:flutter/material.dart';

class PCLatestArticles extends StatelessWidget {
  const PCLatestArticles({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        // borderRadius: BorderRadius.circular(8.0),
        border: Border.all(width: 1, color: Colors.grey),
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
            'Latest Articles',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.0),
          Container(
            height: 1.0,
            color: Colors.grey,
          ),
          SizedBox(height: 16.0),
          Text(
            'Article 1',
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
          SizedBox(height: 8.0),
          Container(
            height: 1.0,
            color: Colors.grey,
          ),
          SizedBox(height: 8.0),
          Text(
            'Article 2',
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
          SizedBox(height: 8.0),
          Container(
            height: 1.0,
            color: Colors.grey,
          ),
          SizedBox(height: 8.0),
          Text(
            'Article 3',
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}