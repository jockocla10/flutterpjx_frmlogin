import 'package:flutter/material.dart';
import 'package:jmpjx001h/widgets/article2.dart';
import 'package:jmpjx001h/widgets/article_card_widget.dart';

class ListNewsScreen extends StatefulWidget {
  const ListNewsScreen({super.key});

  @override
  State<ListNewsScreen> createState() => _ListNewsScreenState();
}

class _ListNewsScreenState extends State<ListNewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("News")),

      body: ListView(
        padding: EdgeInsets.all(8),
        children: [
          ArticleCardWidget(),
          Article2(),
          ArticleCardWidget(),
          Article2(),
          ArticleCardWidget(),
          Article2(),
          ArticleCardWidget(),
          Article2(),
          ArticleCardWidget(),
          Article2(),
          ArticleCardWidget(),
          Article2(),
        ],
      ),
    );
  }
}
