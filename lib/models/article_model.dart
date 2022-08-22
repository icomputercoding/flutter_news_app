import 'package:equatable/equatable.dart';

class ArticleModel extends Equatable {
  final String id;
  final String title;
  final String subtitle;
  final String body;
  final String author;
  final String authorImageUrl;
  final String category;
  final String imageUrl;
  final DateTime createAt;

  const ArticleModel({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.body,
    required this.author,
    required this.authorImageUrl,
    required this.category,
    required this.imageUrl,
    required this.createAt,
  });

  static List<ArticleModel> articles = [
    ArticleModel(
      id: "1",
      title: "Why edge computing matters for modern software development",
      subtitle: "The next stage of cloud computing brings computing power closer to users, paving the way to better user experiences and more intelligent applications.",
      body: "Businesses are always trying to improve the reliability and performance of their software for users, while at the same time trying to reduce their own costs. One strategy that accomplishes both of these goals at the same time is edge computing.According to Gartner only 10% of data today is being created and processed outside of traditional data centers. By 2025, that number is projected to increase to 75% due to the rapid expansion of the internet of things (IoT) and more processing power being available on embedded and mobile devices. McKinsey has identified more than 100 different use cases, and projects around \$200 billion in hardware value for edge computing being created over the next five to seven years.",
      author: "Sam Dillard",
      authorImageUrl: "https://images.idgesg.net/images/article/2019/05/newtechforum_icon-100796826-small.jpg?auto=webp&quality=85,70",
      category: "Technology",
      imageUrl: "https://images.idgesg.net/images/article/2021/10/edge-computing-100908672-large.jpg?auto=webp&quality=85,70",
      createAt: DateTime.now().subtract(const Duration(hours: 5)),
    ),
    ArticleModel(
      id: "2",
      title: "Why edge computing matters for modern software development",
      subtitle: "The next stage of cloud computing brings computing power closer to users, paving the way to better user experiences and more intelligent applications.",
      body: "Businesses are always trying to improve the reliability and performance of their software for users, while at the same time trying to reduce their own costs. One strategy that accomplishes both of these goals at the same time is edge computing.According to Gartner only 10% of data today is being created and processed outside of traditional data centers. By 2025, that number is projected to increase to 75% due to the rapid expansion of the internet of things (IoT) and more processing power being available on embedded and mobile devices. McKinsey has identified more than 100 different use cases, and projects around \$200 billion in hardware value for edge computing being created over the next five to seven years.",
      author: "Sam Dillard",
      authorImageUrl: "https://images.idgesg.net/images/article/2019/05/newtechforum_icon-100796826-small.jpg?auto=webp&quality=85,70",
      category: "Technology",
      imageUrl: "https://images.idgesg.net/images/article/2021/10/edge-computing-100908672-large.jpg?auto=webp&quality=85,70",
      createAt: DateTime.now().subtract(const Duration(hours: 5)),
    ),
    ArticleModel(
      id: "3",
      title: "5 years of Kotlin on Android — the extended interviews",
      subtitle: "We’ve published a celebration post on our blog to recognize the 5 year anniversary of official support for Kotlin on Android.",
      body: "In the making of that post, I had the chance to interview some great people who were involved in the Kotlin story, and the blog post could only include small bits of what they had to say on the topic. Hence, this post includes some interview material that would otherwise be left on the cutting room floor.Jeffrey van GoghJeffrey leads a team of engineers at Google working on Kotlin tooling, and he was involved in the discussions around the language from the very early days. He’s also a member of the Kotlin Foundation, a joint effort between Google and JetBrains which safeguards the evolution of the language.He recalled this about Google’s initial encounters of Kotlin:We started looking at Kotlin about 6.5 years ago for various reasons. Of course we’re all language geeks who want to learn new languages. We also heard from our customers that they’re starting to use Kotlin even without Google officially endorsing it. We played with it for quite a bit and we were like “Hey, this is actually really neat!”He also expanded on the cooperation between the two companies.A few months before I/O 2017 we started talking to the folks at JetBrains about making Kotlin on Android a reality. We wanted to make sure that if we make this a recommended language for Android, it’s supported well. At the same time, JetBrains doesn’t want to see Kotlin becoming only an Android language.Many other languages have a foundation, and we thought that was a good path for us to take as well. We had to figure out what we wanted to put in the Foundation. We tried to protect the things that we really care about protecting, like making sure that the language ages well. But we have a single person in charge of the language design, appointed by the Foundation, so that we are not designing every language feature by committee.I’m on the Kotlin Language Committee where we ensure that every time we have to make a breaking change or deprecate something, we do it with extreme care. We want the language to move forward but also to age well. We meet with JetBrains every couple months, look at the issues, and have deep technical discussions.",
      author: "Android Developer",
      authorImageUrl: "https://medium.com/@AndroidDev?source=post_page-----a7dcd17480a9--------------------------------",
      category: "Technology",
      imageUrl: "https://miro.medium.com/max/1400/1*CDq4uk7-5PeQkTQpgug8Rw.png",
      createAt: DateTime.now().subtract(const Duration(hours: 3)),
    ),
  ];

  @override
  List<Object?> get props =>
      [
        id,
        title,
        subtitle,
        body,
        author,
        authorImageUrl,
        category,
        imageUrl,
        createAt
      ];
}
