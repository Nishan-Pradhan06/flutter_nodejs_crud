import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class ReadPage extends StatefulWidget {
  const ReadPage({super.key});

  @override
  State<ReadPage> createState() => _ReadPageState();
}

class _ReadPageState extends State<ReadPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.deepPurple.shade100),
          ),
          Container(child:FutureBuilder(future:fetchData() , builder: ) ),
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CupertinoButton.filled(
                    pressedOpacity: 0.8,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text("back"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
