import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:hidoc/home/desktop/article_card_pc.dart';
import 'package:hidoc/home/desktop/hidocBulletin.dart';
import 'package:hidoc/home/desktop/pc_latest_articles.dart';
import 'package:hidoc/home/desktop/pc_news_card.dart';
import 'package:hidoc/home/desktop/pc_prizes_card.dart';
import 'package:hidoc/home/desktop/pc_trending_articles.dart';
import 'package:hidoc/home/desktop/trendinghidocbulletin.dart';
import 'package:hidoc/home/mobile/bulletin_card.dart';
import 'package:hidoc/home/mobile/read_more_bulletin.dart';
import 'package:hidoc/home/mobile/special_network.dart';

import '../mobile/article_card.dart';
import '../mobile/drop_down_container.dart';

class PCHomeView extends StatefulWidget {
  const PCHomeView({super.key});

  @override
  State<PCHomeView> createState() => _PCHomeViewState();
}

class _PCHomeViewState extends State<PCHomeView> {
  List<dynamic> news = [];
  List<dynamic> trendingBulletin = [];
  List<dynamic> latestArticles = [];
  List<dynamic> exploreArticle = [];
  List<dynamic> trandingArticle = [];
  dynamic article;
  List<dynamic> bulletin = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'ARTICLES',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const DropDownContainer(),
                const SizedBox(
                  height: 20,
                ),
                //  ArticleCardPC(),
                ArticleCardPC(
                  title: article != null ? article['articleTitle'] : 'Loading',
                  texts: article != null
                      ? article['articleDescription']
                      : 'Loading',
                  subtitle: article != null ? article['articleImg'] : 'Loading',
                  image: article != null ? article['articleImg'] : 'Loading',
                  points: article != null ? article['rewardPoints'] : 0,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(child: const HidocBulletin()),
                    Expanded(child: TrendingHidocBulletin())
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                const ReadMoreBulletin(text: 'Read more Bulletins'),
                SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(child: PCLatestArticles()),
                    Expanded(child: PCTrendingArticles()),
                    Expanded(child: PCLatestArticles()),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'What\'s More on Hidoc Dr.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: PCNewsCard(),
                    ),
                    PCPrizesCard(),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                const SpecialNetwork(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void fetchUsers() async {
    const url =
        'http://devapi.hidoc.co:8080/HidocWebApp/api/getArticlesByUid?sId=500&uuId=&userId=423914';
    final uri = Uri.parse(url);
    final response = await http.post(uri);
    final body = response.body;
    final js = jsonDecode(body.toString());

    // setState(() {
    //   data = js['data']['news'];
    // });
    // print(js['data']['news'][0]['title']);
    setState(() {
      news = js['data']['news'];
      trendingBulletin = js['data']['trandingBulletin'];
      latestArticles = js['data']['latestArticle'];
      // exploreArticle = js['data']['exploreArticle'];
      trandingArticle = js['data']['trandingArticle'];
      article = js['data']['article'];
      print(js['data']['article']);
      bulletin = js['data']['bulletin'];
    });
  }
}
