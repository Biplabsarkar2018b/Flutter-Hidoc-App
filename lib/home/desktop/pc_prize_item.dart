import 'package:flutter/material.dart';

class PCPrizeItem extends StatelessWidget {
  final String text1;
  const PCPrizeItem({super.key, required this.text1});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(width: 1, color: Colors.black))),
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.st,
        children: [
          Container(
            width: 80.0,
            height: 80.0,
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.blue[100],
              image: DecorationImage(
                image: NetworkImage(
                  'https://images.unsplash.com/photo-1684827844157-5a9085408044?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=435&q=80',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 16.0),
          Text(
            text1,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(width: 8.0),
          // Text(
          //   text2,
          //   overflow: TextOverflow.clip,
          // ),
        ],
      ),
    );
  }
}
