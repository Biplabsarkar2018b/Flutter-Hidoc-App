import 'package:flutter/material.dart';

class ArticleCard extends StatelessWidget {
  final String title, subtitle, texts, image;
  final int points;
  const ArticleCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.texts,
    required this.points,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 3.0,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            image,
            width: double.infinity,
            height: 200.0,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) => Image.network(
              'https://demofree.sirv.com/nope-not-here.jpg',
            ),
          ),
          const SizedBox(height: 16.0),
          Text(
            title,
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            subtitle,
            style: const TextStyle(
              fontSize: 16.0,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                texts,
                style: const TextStyle(fontSize: 16.0),
              ),
              const SizedBox(width: 8.0),
              TextButton(
                onPressed: () {
                  // Add your button action here
                },
                child: Text(
                  points.toString(),
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
