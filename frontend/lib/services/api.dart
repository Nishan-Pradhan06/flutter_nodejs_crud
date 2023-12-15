import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class Api {
  static const baseUrl = "http://192.168.1.75/api/";

  static addPerson(Map pData) async {
    print(pData);
    var url = Uri.parse(baseUrl + "add_person");
    try {
      final res = await http.post(url, body: pData);
      if (res.statusCode == 200) {
        var data = jsonDecode(res.body.toString());
        print(data);
      } else {
        debugPrint("Failed to upload Data");
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
