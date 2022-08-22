import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_news_app/models/article_model.dart';
import 'package:flutter_news_app/widgets/bottom_nav_bar.dart';
import 'package:flutter_news_app/widgets/breaking_news.dart';
import 'package:flutter_news_app/widgets/image_container.dart';
import 'package:flutter_news_app/widgets/news_of_the_day.dart';

import '../widgets/custom_tag.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const routeName = "/";

  @override
  Widget build(BuildContext context) {
    ArticleModel article = ArticleModel.articles[0];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: const BottomNavBar(index: 0),
      extendBodyBehindAppBar: true,
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          //News Of the Day
          NewsOfTheDay(article: article),
          //Breaking News
          BreakingNews(articles: ArticleModel.articles)
        ],
      ),
    );
  }
}
