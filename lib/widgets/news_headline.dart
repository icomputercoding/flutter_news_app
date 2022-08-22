import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_news_app/models/article_model.dart';

import 'custom_tag.dart';

class NewsHeadline extends StatelessWidget {

  final ArticleModel article;

  const NewsHeadline({required this.article,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.15,),
          CustomTag(
            backgroundColor: Colors.grey.withAlpha(150),
            children: [
              Text(
                article.category,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontFamily: "Poppins",
                    color: Colors.white,
                    height: 1.25,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Text(
            article.title,
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              height: 1.25
            ),
          ),
          const SizedBox(height: 10,),
          Text(
            article.subtitle,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
