import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  const NewsCard(
      {super.key,
      required this.title,
      required this.description,
      required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(color: Colors.grey),
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
            description,
            style: TextStyle(fontSize: 16.0),
          ),
          SizedBox(height: 8.0),
          Text(
            'Line of Text 2',
            style: TextStyle(fontSize: 16.0),
          ),
          SizedBox(height: 16.0),
          Image.network(
            imageUrl,
            fit: BoxFit.cover,
            width: double.infinity,
            height: 200,
            errorBuilder: (BuildContext context, Object exception,
                StackTrace? stackTrace) {
              // Return a widget to display when the image fails to load
              return Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdOnx5oUQRjKBtMJliCo4e4zLjvwjmyUsd82xAMZcW&s',
              fit: BoxFit.cover,width: double.infinity,height: 200,); // Or any other widget you want to display instead of the image
            },
          ),
        ],
      ),
    );
  }
}
