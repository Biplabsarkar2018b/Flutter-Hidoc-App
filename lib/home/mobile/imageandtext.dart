import 'package:flutter/material.dart';

class ImageAndText extends StatelessWidget {
  final String image, text;
  const ImageAndText({super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    // if(text.length>70) text =
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Image.network(
            image,
            width: 100.0,
            height: 100.0,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Image.network(
                  'https://demofree.sirv.com/nope-not-here.jpg');
            },
          ),
          // SizedBox(width: 16.0),
          Flexible(
            child: Text(
              text,
              maxLines: 6,
              overflow: TextOverflow.ellipsis,
              // style: TextStyle(fontSize: 18.0),
            ),
          ),
        ],
      ),
    );
  }
}
