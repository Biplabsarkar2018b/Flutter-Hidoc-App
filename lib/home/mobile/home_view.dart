import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:hidoc/api/fetch_data.dart';
import 'package:hidoc/home/mobile/article_card.dart';
import 'package:hidoc/home/mobile/bulletin_card.dart';
import 'package:hidoc/home/mobile/drop_down_container.dart';
import 'package:hidoc/home/mobile/latest_article.dart';
import 'package:hidoc/home/mobile/newscard.dart';
import 'package:hidoc/home/mobile/prizes_card.dart';
import 'package:hidoc/home/mobile/read_more_bulletin.dart';
import 'package:hidoc/home/mobile/special_network.dart';
import 'package:hidoc/home/mobile/trending_articles.dart';
import 'package:hidoc/home/mobile/trending_bulletin.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<dynamic> news = [];
  List<dynamic> trendingBulletin = [];
  List<dynamic> latestArticles = [];
  List<dynamic> exploreArticle = [];
  List<dynamic> trandingArticle = [];
  dynamic article;
  List<dynamic> bulletin = [];

  @override
  void initState() {
    super.initState();

    fetchUsers();
    // print(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(width: 1, color: Colors.black)),
                      child: const Icon(Icons.home),
                    ),
                    const Expanded(
                      child: Text(
                        'ARTICLES',
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const DropDownContainer(),
                const SizedBox(
                  height: 20,
                ),
                //  ArticleCard(title: article['articleTitle'],texts: article['articleDescription'],subtitle: article['articleImg'],image: article['articleImg'],points: article['rewardPoints'],),
                ArticleCard(
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
                const Text(
                  'Hidoc Bulletin',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                // const BulletinCard(),
                //  BulletinCard(title: bulletin[0]['articleTitle'],subtitle: bulletin[0]['articleDescription'],),
                ListView.builder(
                  itemCount: bulletin.length,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: ((context, index) {
                  return BulletinCard(
                    title: bulletin[index]['articleTitle'],
                    subtitle: bulletin[index]['articleDescription'],
                  );
                })),
                const SizedBox(
                  height: 20,
                ),
                TrendingBulletin(
                  trendingBulletinList: trendingBulletin,
                ),

                const SizedBox(
                  height: 20,
                ),
                const ReadMoreBulletin(text: 'Read More Bulletins'),
                const SizedBox(
                  height: 20,
                ),
                LatestArticl(
                  latestArticle: latestArticles,
                ),
                const SizedBox(
                  height: 20,
                ),
                TrendingArticles(
                  trendingArticles: trandingArticle,
                ),
                const SizedBox(
                  height: 20,
                ),
                const ReadMoreBulletin(
                  text: 'Explore Hidoc Dr.',
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'What\'s More on Hidoc Dr.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                // const NewsCard(),
                ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: news.length,
                    itemBuilder: (context, index) {
                      return NewsCard(
                        title: news[index]['title'],
                        description: news[index]['description'],
                        imageUrl: news[index]['urlToImage']!!,
                      );
                    }),
                const SizedBox(
                  height: 20,
                ),
                PrizesCard(),
                const SizedBox(
                  height: 20,
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
      bulletin = js['data']['bulletin'];
    });
  }
}
