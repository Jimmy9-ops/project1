import 'package:flutter/material.dart';
import '../dummy_data.dart';

class ArtifactItem extends StatelessWidget {
  @override
  final int index;
  final String id;
  final String title;
  final String imageUrl;
  final String description;
  ArtifactItem(
      {this.index, this.description, this.id, this.imageUrl, this.title});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 150),
      child: Card(
        elevation: 6.0,
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(artifacts[index].imageUrl))),
        ),
      ),
    );
  }
}
