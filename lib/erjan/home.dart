import 'package:flutter/material.dart';

class ErjanPage extends StatefulWidget {
  const ErjanPage({super.key, required this.title});
  final String title;

  @override
  State<ErjanPage> createState() => ErjanPageState();
}

class ErjanPageState extends State<ErjanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                      width: 3,
                      style: BorderStyle.solid,
                      color: const Color.fromARGB(255, 116, 115, 115))),
              child: Image.network(
                  'https://swebtoon-phinf.pstatic.net/20210416_246/1618538712453qwxwn_JPEG/772eb55e-5b4f-408b-8072-311ce916f5d9.jpg'))),
    );
  }
}
