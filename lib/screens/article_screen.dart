import 'package:flutter/material.dart';
import 'package:flutter_news_app/models/article_model.dart';
import 'package:flutter_news_app/widgets/image_container.dart';
import 'package:flutter_news_app/widgets/news_headline.dart';

import '../widgets/custom_tag.dart';

class ArticleScreen extends StatelessWidget {
  const ArticleScreen({Key? key}) : super(key: key);

  static const routeName = "/article";

  @override
  Widget build(BuildContext context) {
    final article = ModalRoute.of(context)!.settings.arguments as ArticleModel;
    return ImageContainer(
      width: double.infinity,
      imageUrl: article.imageUrl,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        extendBodyBehindAppBar: true,
        body: ListView(
          children: [
            NewsHeadline(
              article: article,
            ),
            Container(
              padding: const EdgeInsets.all(20.0),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0))),
              child: Column(
                children: [
                  Center(
                    child: Row(
                        children: [
                      CustomTag(
                        backgroundColor: Colors.black,
                        children: [
                          CircleAvatar(
                            radius: 10,
                            backgroundImage: NetworkImage(
                              article.authorImageUrl,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            article.author,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    fontFamily: "Poppins",
                                    color: Colors.white,
                                    height: 1.25,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(width: 5,),
                      CustomTag(
                        backgroundColor: Colors.grey.shade200,
                        children: [
                          const Icon(
                            Icons.timer,
                            color: Colors.grey,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                              "${DateTime.now().difference(article.createAt).inHours} hours ago",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                          ),
                        ],
                      ),
                    ]),
                  ),
                  const SizedBox(height: 20,),
                  Text(
                    article.title,
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Text(
                    article.body,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        height: 1.5
                    ),
                  ),
                  const SizedBox(height: 20,),
                  GridView.builder(
                    shrinkWrap: true,
                     itemCount: 1,
                     itemBuilder: (context, position) {
                       return ImageContainer(
                           width: MediaQuery.of(context).size.width * 0.42,
                           imageUrl: article.imageUrl,
                       margin: const EdgeInsets.only(right: 5,bottom: 5),);
                     },
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                      childAspectRatio: 1.25),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
