import 'package:flutter/material.dart';
import 'package:flutter_news_app/widgets/category_news.dart';
import 'package:flutter_news_app/widgets/discover_news.dart';
import '../widgets/bottom_nav_bar.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({Key? key}) : super(key: key);

  static const routeName = "/discover";

  @override
  Widget build(BuildContext context) {

    List<String> tabs = ['Technology','Android','Flutter','Coding','Developer'];

    return DefaultTabController(
      initialIndex: 0,
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
            color: Colors.black,
          ),
        ),
        bottomNavigationBar: const BottomNavBar(index: 1),
        body: ListView(
          padding: const EdgeInsets.all(20.0),
          children: [
           const DiscoverNews(),
            CategoryNews(tabs: tabs,)
          ],
        ),
      ),
    );
  }
}
