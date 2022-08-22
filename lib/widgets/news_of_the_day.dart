import 'package:flutter/material.dart';
import 'package:flutter_news_app/models/article_model.dart';

import 'custom_tag.dart';
import 'image_container.dart';

class NewsOfTheDay extends StatelessWidget {

  ArticleModel article = ArticleModel.articles[0];

  NewsOfTheDay({ required this.article,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImageContainer(
        padding: const EdgeInsets.all(20),
        width: double.infinity,
        imageUrl: article.imageUrl,
        height: MediaQuery.of(context).size.height * 0.45,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTag(
              backgroundColor: Colors.grey.withAlpha(150),
              children: [
                Text(
                  "News of the Day",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontFamily: "Poppins",
                      color: Colors.white,
                      height: 1.25,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              article.title,
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  fontFamily: "Poppins",
                  color: Colors.white,
                  height: 1.25,
                  fontWeight: FontWeight.bold),
            ),
            TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(padding: EdgeInsets.zero),
                child: Row(
                  children: [
                    Text(
                      "Learn More",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: Colors.white),
                    ),
                    const SizedBox(width: 10),
                    const Icon(
                      Icons.arrow_right_alt_outlined,
                      color: Colors.white,
                    )
                  ],
                ))
          ],
        ));
  }
}
