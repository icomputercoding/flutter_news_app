import 'package:flutter/material.dart';
import 'package:flutter_news_app/models/article_model.dart';
import 'package:flutter_news_app/screens/article_screen.dart';
import 'package:flutter_news_app/widgets/image_container.dart';

class CategoryNews extends StatelessWidget {
  final List<String> tabs;

  const CategoryNews({required this.tabs, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final articles = ArticleModel.articles;
    return Column(
      children: [
        TabBar(
            isScrollable: true,
            indicatorColor: Colors.black,
            tabs: tabs
                .map(
                  (tab) => Tab(
                    icon: Text(
                      tab,
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                )
                .toList()),
        SizedBox(
            height: MediaQuery.of(context).size.height,
            child: TabBarView(
              children: tabs
                  .map(
                    (tab) => ListView.builder(
                      itemCount: articles.length,
                      shrinkWrap: true,
                      itemBuilder: ((context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              ArticleScreen.routeName,
                              arguments: articles[index],
                            );
                          },
                          child: Row(
                            children: [
                              ImageContainer(
                                  width: 80,
                                  height: 80,
                                  margin: const EdgeInsets.all(10),
                                  borderRadius: 5,
                                  imageUrl: articles[index].imageUrl),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      articles[index].title,
                                      maxLines: 2,
                                      overflow: TextOverflow.clip,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge!
                                          .copyWith(
                                              fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.schedule,
                                          size: 18,
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "${DateTime.now().difference(articles[index].createAt).inHours} hours ago",
                                          style: const TextStyle(fontSize: 12),
                                        ),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      }),
                    ),
                  )
                  .toList(),
            ))
      ],
    );
  }
}
