import 'package:flutter/material.dart';

class PCImageAndText extends StatelessWidget {
  const PCImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Row(
        children: [
          Image.network(
            'https://images.unsplash.com/photo-1684827844157-5a9085408044?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=435&q=80',
            width: 100.0,
            height: 100.0,
            fit: BoxFit.cover,
          ),
          // SizedBox(width: 16.0),
          Text(
            'Your Text',
            // style: TextStyle(fontSize: 18.0),
          ),
        ],
      ),
    );
  }
}