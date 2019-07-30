import 'package:conversor_moeda/widgets/home.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async'; //permite fazer requisições e não fico esperando receber (assincrona)
import 'dart:convert';

const request = "https://api.hgbrasil.com/finance?format=json&key=7e45147f";

void main() async {

  runApp(MaterialApp(
    home: Home(),
    theme: ThemeData(
      hintColor: Colors.amber,
      primaryColor: Colors.white
    ),
  ));
}

Future<Map> getData() async {
  http.Response response = await http.get(request);
  return json.decode(response.body);
}