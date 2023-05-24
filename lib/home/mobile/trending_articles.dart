import 'package:flutter/material.dart';
import 'package:hidoc/home/mobile/imageandtext.dart';

class TrendingArticles extends StatelessWidget {
  final List<dynamic> trendingArticles;
  const TrendingArticles({super.key, required this.trendingArticles});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
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
          const Text(
            'Trending Articles',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8.0),
          // Image.network(
          //   width: double.infinity,
          //   trendingArticles[0].articleImg,
          //   height: 100,
          //   fit: BoxFit.cover,
          // ),
          // const SizedBox(height: 8.0),
          // Text(trendingArticles[0]['articleDescription']),
          Container(
            height: 1.0,
            color: Colors.grey,
          ),
          ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: trendingArticles.length,
              itemBuilder: (context, index) {
                return ImageAndText(
                  image: trendingArticles[index]['articleImg'],
                  text: trendingArticles[index]['articleDescription'],
                );
              })
        ],
      ),
    );
  }
}
