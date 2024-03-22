import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});


  @override
  Widget build(BuildContext context) {
    var listText = [
      Text("sdfsdfs"),
      Text("test"),
      Text("test2"),
      Text("test3"),
      Text("test3"),
      Text("test3"),
      Text("test3"),
      Text("test3"),
      Text("test3"),
      Text("test3"),
      Text("test3"),
      Text("test3"),
      Text("test3"),
      Text("test3"),
      Text("test3"),
      Text("test3"),
      Text("test3"),
      Text("test3"),
      Text("test3"),
      Text("test3"),
    ];

    return Scaffold(
      appBar: AppBar(title: Text("Page Test"),),
      body: Container(
        color: Colors.amber[100],
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      color: Colors.greenAccent,
                      width: 100,
                      height: 10,
                      child: Text("Box 1"),
                    ),
                    SizedBox(width: 50, height: 50,),
                    Container(
                      color: Colors.redAccent,
                      width: 200,
                      height: 200,
                      child: Text("Box 2"),
                    ),
                    Padding(
                      // padding: const EdgeInsets.all(8.0),     //paading atas bawah kiri kanan
                      // padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),     //pading atas bawah = 8, kiri kanan = 16
                      padding: const EdgeInsets.only(top: 32, left: 16, bottom: 8, right: 1),     //pading atas bawah = 8, kiri kanan = 16
                      child: Container(
                        color: Colors.blueAccent[700],
                        width: 300,
                        height: 50,
                        child: ListView(
                          children: listText,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 3),
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.blueAccent[100],
                      ),
                      width: 150,
                      height: 300,
                      child: Text("Box 4"),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.greenAccent,
                width: 100,
                height: 150,
                child: Text("Box 1"),
              ),
              SizedBox(width: 50, height: 50,),
              Container(
                color: Colors.redAccent,
                width: 200,
                height: 200,
                child: Text("Box 2"),
              ),
              Padding(
                // padding: const EdgeInsets.all(8.0),     //paading atas bawah kiri kanan
                // padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),     //pading atas bawah = 8, kiri kanan = 16
                padding: const EdgeInsets.only(top: 32, left: 16, bottom: 8, right: 1),     //pading atas bawah = 8, kiri kanan = 16
                child: Container(
                  color: Colors.blueAccent[700],
                  width: 300,
                  height: 200,
                  child: Column(
                    children: [
                      Text("Box 3"),
                      Text("Box 3.1"),
                      Text("Box 3.2"),
                      Text("Box 3.3"),
                      Expanded(
                        child: Container(color: Colors.lightGreen,)
                      )

                    ],
                  )
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 3),
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.blueAccent[100],
                ),
                width: 150,
                height: 40,
                child: ListView(
                  children: listText,
                ),
              ),
              Text("text 1"),
              Text("Text 2"),
              Text("Text 2"),
              Text("Text 2"),
            ],
          ),
        ),
      ),
    );
  }
}
