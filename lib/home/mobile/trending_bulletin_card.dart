import 'package:flutter/material.dart';

class TrendingBulletinCard extends StatelessWidget {
  final String title, subtitle, readmore;
  const TrendingBulletinCard({super.key, required this.title, required this.subtitle, required this.readmore});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            subtitle,
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.black,
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
