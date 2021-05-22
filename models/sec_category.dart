import 'package:flutter/foundation.dart';

class SecCategory {
  final String id;
  final String title;
  final String imageUrl;
  final List<String> categories;

  const SecCategory(
      {@required this.id,
      @required this.imageUrl,
      @required this.title,
      @required this.categories});
}
