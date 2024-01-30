import 'package:flutter/material.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.red,
      height: 100,
      width: 200,
      child: Container(color: Colors.black12,),
    );
  }
}