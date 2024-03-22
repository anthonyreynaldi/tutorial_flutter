import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../widgets/post_card.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Feed"),),
      body: ListView(
        children: [
          PostCard(),
          PostCard(),
          PostCard(),
          PostCard(),
          PostCard(),
          PostCard(),
          PostCard(),
          PostCard(),
          PostCard(),
          PostCard(),
          PostCard(),
        ],
      ),
    );
  }
}
