import 'package:flutter/material.dart';

class Comment extends StatelessWidget {
  const Comment({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage("https://randomuser.me/api/portraits/women/58.jpg"),
          ),
          SizedBox(width: 16,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Nama User", style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 8,),
              Text("Isi commentsdfsadfasdfsdf sdafasdf",),
            ],
          )
        ],
      ),
    );
  }
}