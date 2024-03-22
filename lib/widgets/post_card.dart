import 'package:flutter/material.dart';
import 'package:tutorial_flutter/widgets/comment.dart';

class PostCard extends StatelessWidget {
  const PostCard({
    super.key,
  });

  showComment(context){
    showBottomSheet(context: context, builder: (builder) {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all()
        ),
        height: MediaQuery.of(context).size.height * 0.6,
        child: ListView(
          children: [
            Comment(),
            Comment(),
            Comment(),
            Comment(),
            Comment(),
            Comment(),
          ],
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {

    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage("https://randomuser.me/api/portraits/women/58.jpg"),
                ),
                SizedBox(width: 16,),
                Text("Nama User", style: TextStyle(fontWeight: FontWeight.bold),)
              ],
            ),
          ),
          SizedBox(height: 8,),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.6,
            child: Image.network("https://img.dummyapi.io/photo-1564694202779-bc908c327862.jpg", fit: BoxFit.cover,),
          ),
          SizedBox(height: 8,),
          IconButton(onPressed: (){ showComment(context); }, icon: Icon(Icons.chat_bubble_outline_rounded)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("adult Labrador retriever"),
          )
        ],
      ),
    );
  }
}

