import 'package:flutter/cupertino.dart';

class Era {
  final String id;
  final String title;
  final String imageUrl;
  final String time;
  final String description;

  const Era(
      {@required this.id,
      @required this.imageUrl,
      @required this.title,
      @required this.time,
      this.description});
}
