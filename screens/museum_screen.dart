import 'package:flutter/material.dart';
import '../dummy_data.dart';
import '../widgets/museum_item.dart';

class MuseumScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: DUMMY_MUSEUMS
          .map((catdata) => MuseumItem(
              catdata.id, catdata.title, catdata.imageUrl, catdata.description))
          .toList(),
    );
  }
}
