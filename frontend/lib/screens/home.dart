import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_crud/screens/pages/createpage.dart';
import 'package:flutter_crud/screens/pages/deletepage.dart';
import 'package:flutter_crud/screens/pages/readpage.dart';
import 'package:flutter_crud/screens/pages/updatepage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(padding: EdgeInsets.only(top: 70)),
                CupertinoButton.filled(
                  pressedOpacity: 0.8,
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const CreatePage(),
                      ),
                    );
                  },
                  child: const Text("Create"),
                ),
                const Padding(padding: EdgeInsets.only(top: 70)),
                CupertinoButton.filled(
                  pressedOpacity: 0.8,
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const ReadPage(),
                      ),
                    );
                  },
                  child: const Text("Read"),
                ),
                const Padding(padding: EdgeInsets.only(top: 70)),
                CupertinoButton.filled(
                  pressedOpacity: 0.8,
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const UpdatePage(),
                      ),
                    );
                  },
                  child: const Text("Update"),
                ),
                const Padding(padding: EdgeInsets.only(top: 70)),
                CupertinoButton.filled(
                  pressedOpacity: 0.8,
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const DeletePage(),
                      ),
                    );
                  },
                  child: const Text("Delete"),
                ),
                const Padding(padding: EdgeInsets.only(top: 70)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
