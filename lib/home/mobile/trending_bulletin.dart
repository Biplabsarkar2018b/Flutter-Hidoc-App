// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:hidoc/home/mobile/bulletin_card.dart';
import 'package:hidoc/home/mobile/trending_bulletin_card.dart';

class TrendingBulletin extends StatelessWidget {
  // final String title, subtitle, readmore;
  final List<dynamic> trendingBulletinList;
  const TrendingBulletin({
    Key? key,
    required this.trendingBulletinList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(30.0),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 95, 183, 173),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Trending Hidoc Bulletin',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 8.0),
          ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: trendingBulletinList.length,
              itemBuilder: (context, index) {
                return TrendingBulletinCard(
                    title: trendingBulletinList[index]['articleTitle'],
                    subtitle: trendingBulletinList[index]['articleDescription'],
                    readmore: '');
              })
        ],
      ),
    );
  }
}
