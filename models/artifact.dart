import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';

class Artifact {
  final String id;
  final String titleAR;
  final String titleEN;
  final String imageUrl;
  final List<String> categoriesId;
  final List<String> descriptionEN;
  final List<String> descriptionAR;

  const Artifact({
    @required this.categoriesId,
    @required this.id,
    @required this.imageUrl,
    @required this.descriptionAR,
    @required this.descriptionEN,
    @required this.titleAR,
    @required this.titleEN,
  });
}
