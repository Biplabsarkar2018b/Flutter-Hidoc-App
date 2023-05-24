import 'package:flutter/material.dart';

class ArticleCardPC extends StatelessWidget {
  final String image, title, subtitle, texts;
  final int points;
  const ArticleCardPC(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.texts,
      required this.points});

  @override
  Widget build(BuildContext context) {
    // print(image);
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
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            image,
            // width: double.infinity,
            height: 200.0,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) => Image.network(
              'https://demofree.sirv.com/nope-not-here.jpg',
            ),
          ),
          const SizedBox(height: 16.0),
          Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
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
                      style: const TextStyle(fontSize: 16.0),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
