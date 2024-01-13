import 'package:flutter/material.dart';
import 'package:instagram/widget/bottombar_widget.dart';
import 'package:instagram/widget/post_widget.dart';
import 'package:instagram/widget/story.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.camera_alt_outlined,
          size: 30,
          color: Colors.grey[600],
        ),
        titleSpacing: 3,
        title: Text(
          'Instagram',
          style: TextStyle(
            decoration: TextDecoration.none,
            fontFamily: 'Billabong',
            fontSize: 32,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.favorite_border_outlined,
              size: 35,
            ),
            onPressed: () {},
          ),
          IconButton(
              icon: Image.asset('assets/images/messenger.png'),
              onPressed: () {})
        ],
      ),
      body: Column(children: [
        StoryWidget(),
        Divider(
          color: Colors.grey,
        ),
        Expanded(child: PostWidget())
      ]),
      bottomNavigationBar: BottombarWidget(),
    );
  }
}
