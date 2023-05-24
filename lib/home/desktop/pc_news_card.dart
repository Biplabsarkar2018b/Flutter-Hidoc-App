import 'package:flutter/material.dart';

class PCNewsCard extends StatelessWidget {
  const PCNewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(color: Colors.grey),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Title',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                'Line of Text 1',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 8.0),
              Text(
                'Line of Text 2',
                style: TextStyle(fontSize: 16.0),
              ),

              
            ],
          ),
          Image.network(
                'https://images.unsplash.com/photo-1684827844157-5a9085408044?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=435&q=80',
                fit: BoxFit.cover,
                width: 100,
                height: 100,
              ),
        ],
      ),
    );
  }
}