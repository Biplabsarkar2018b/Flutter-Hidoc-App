import 'package:flutter/material.dart';

class LatestArticl extends StatelessWidget {
  final List<dynamic> latestArticle;
  const LatestArticl({super.key, required this.latestArticle});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        // borderRadius: BorderRadius.circular(8.0),
        border: Border.all(width: 1, color: Colors.grey),
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
          const Text(
            'Latest Articles',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: latestArticle.length,
              itemBuilder: (context, index) {
                return Text(
                  latestArticle[index]['title'],
                  style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                );
              })
        ],
      ),
    );
  }
}
