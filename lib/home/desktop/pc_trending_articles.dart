import 'package:flutter/material.dart';
import 'package:hidoc/home/desktop/pcimageandtext.dart';

class PCTrendingArticles extends StatelessWidget {
  const PCTrendingArticles({super.key});

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
            'Trending Articles',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.0),
          Image.network(
            width: 100,
            'https://images.unsplash.com/photo-1684827844157-5a9085408044?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=435&q=80',
            height: 100,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 8.0),
          Text('some texts here'),
          Container(
            height: 1.0,
            color: Colors.grey,
          ),
          SizedBox(height: 16.0),
          PCImageAndText(),
          SizedBox(height: 8.0),
          Container(
            height: 1.0,
            color: Colors.grey,
          ),
          SizedBox(height: 8.0),
          PCImageAndText(),
          SizedBox(height: 8.0),
          Container(
            height: 1.0,
            color: Colors.grey,
          ),
          SizedBox(height: 8.0),
          PCImageAndText(),
        ],
      ),
    );
  }
}
