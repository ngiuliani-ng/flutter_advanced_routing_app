import 'package:flutter/material.dart';

class EmailModel {
  final String sender;
  final String object;
  final String date;
  final Color color;

  EmailModel({
    @required this.sender,
    @required this.object,
    @required this.date,
    @required this.color,
  });
}
