import 'package:flutter/material.dart';
import 'package:getstarted/NewsArticle.dart';
import 'package:getstarted/NewsHelper.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, position) {
          NewsArticle article = NewsHelper.getArticle(position);

          return Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 0.5, 0.0, 0.5),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      article.categoryTitle,
                      style: TextStyle(
                          color: Colors.black38,
                          fontWeight: FontWeight.w500,
                          fontSize: 16.0),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 12.0, 0.0, 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Flexible(
                            child: Text(
                              article.title,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 22.0),
                            ),
                            flex: 3,
                          ),
                          Flexible(
                            flex: 1,
                            child: Container(
                                height: 80.0,
                                width: 80.0,
                                child: Image.asset(
                                  "images/" + article.imageAssetName,
                                  fit: BoxFit.cover,
                                )),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              article.author,
                              style: TextStyle(fontSize: 18.0),
                            ),
                            Text(
                              article.date + " . " + article.readTime,
                              style: TextStyle(
                                  color: Colors.black45,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        Icon(Icons.star_border),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: NewsHelper.articleCount,
      ),
    );
  }
}
