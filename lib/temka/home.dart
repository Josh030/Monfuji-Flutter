import 'package:flutter/material.dart';

class TemkaPage extends StatefulWidget {
  const TemkaPage({super.key, required this.title});
  final String title;

  @override
  State<TemkaPage> createState() => TemkaPageState();
}

class TemkaPageState extends State<TemkaPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter = _counter + 2;
    });
    print('stateiin utga: $_counter');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            const CircleAvatar(
              radius: 50.0,
              backgroundImage:
                  NetworkImage("https://picsum.photos/250?image=9", scale: 1),
              backgroundColor: Colors.transparent,
            ),
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.red),
                  color: Color(0xffFFA500),
                  borderRadius: BorderRadius.circular(5)),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      'https://picsum.photos/250?image=9',
                      fit: BoxFit.fitHeight,
                    ),
                  ]),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
