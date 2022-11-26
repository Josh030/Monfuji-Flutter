import 'package:flutter/material.dart';

class GendenPage extends StatefulWidget {
  const GendenPage({super.key, required this.title});
  final String title;

  @override
  State<GendenPage> createState() => GendenPageState();
}

class GendenPageState extends State<GendenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://designshop-6aa0.kxcdn.com/photos/hello-cartoons-comic-send-greeting-card-online-2526_2.jpg"),
                fit: BoxFit.contain)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hello'),
            Text('World'),
          ],
        ),
      )),
    );
  }
}
