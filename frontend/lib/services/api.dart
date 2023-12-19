// ignore_for_file: avoid_print

import 'dart:convert';
import 'package:flutter_crud/models/person_model.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class Api {
  static const baseUrl = "http://192.168.1.75/api/";

  //POST API /CREATE
  static addPerson(Map pData) async {
    print(pData);
    var url = Uri.parse("${baseUrl}add_person");
    try {
      final res = await http.post(url, body: pData);
      if (res.statusCode == 200) {
        var data = jsonDecode(res.body.toString());
        print(data);
      } else {
        debugPrint("Failed to Create Data");
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  // GET API /READ
  static getPerson(Map pdata) async {
    List<Person> person = [];
    var url = Uri.parse("${baseUrl}get_person");
    try {
      final res = await http.get(url, headers: {"pname": "pname"});
      if (res.statusCode == 200) {
        var getData = jsonDecode(res.body);
        print(getData);
        getData['person']?.forEach((value) => {
              person.add(Person(
                name: value['pname'],
                phone: value['pphone'],
                age: value['pAge'],
              ))
            });
        return person;
      } else {
        debugPrint("Failed to Get Data");
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
