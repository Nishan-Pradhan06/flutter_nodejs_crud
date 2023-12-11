import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreatePage extends StatefulWidget {
  const CreatePage({super.key});

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.deepPurple.shade100),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 100, horizontal: 50),
            child: Material(
              elevation: 25,
              borderRadius: BorderRadius.circular(30),
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.deepPurple.shade200,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
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
