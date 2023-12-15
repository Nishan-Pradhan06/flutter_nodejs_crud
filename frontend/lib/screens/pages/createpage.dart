import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_crud/services/api.dart';

class CreatePage extends StatefulWidget {
  const CreatePage({super.key});

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  var namecontroller = TextEditingController();
  var phonecontroller = TextEditingController();
  var agecontroller = TextEditingController();

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
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  margin: const EdgeInsets.only(bottom: 60),
                  child: const Text(
                    'Create User Detail',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 60, right: 60),
                child: TextField(
                  controller: namecontroller,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter Name",
                    hintStyle: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 20)),
              Container(
                margin: const EdgeInsets.only(left: 60, right: 60),
                child: TextField(
                  controller: phonecontroller,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter Phone Number",
                    hintStyle: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 20)),
              Container(
                margin: const EdgeInsets.only(left: 60, right: 60),
                child: TextField(
                  controller: agecontroller,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter your Age",
                    hintStyle: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 40),
                child: CupertinoButton.filled(
                  pressedOpacity: 0.8,
                  onPressed: () {
                    var data = {
                      "pname": namecontroller.text,
                      "pphone": phonecontroller.text,
                      "pAge": agecontroller.text,
                    };
                    Api.addPerson(data);
                  },
                  child: const Text("Submit"),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
