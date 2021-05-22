import 'package:flutter/foundation.dart';

class Artifact_Overview {
  final String id;
  final String titleAR;
  final String titleEN;
  final List<String> imageUrl;
  final List<String> descriptionAR;
  final List<String> categoriesId;
  final List<String> descriptionEN;

  bool isFavorite;

  Artifact_Overview(
      {@required this.id,
      @required this.imageUrl,
      @required this.titleAR,
      @required this.titleEN,
      @required this.categoriesId,
      this.isFavorite = false,
      @required this.descriptionAR,
      @required this.descriptionEN});
}
