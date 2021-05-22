import 'package:flutter/material.dart';

class EraOverviewItem extends StatelessWidget {
  final String id;
  final String titleEN;
  final String titleAR;
  final String imageUrl;

  EraOverviewItem(
    this.id,
    this.titleEN,
    this.titleAR,
    this.imageUrl,
  );

  // void selectArtifact(BuildContext context) {
  // Navigator.of(context).pushNamed(
  //  '/Artifact_screen',
  //  arguments: id,
  //  );
  // }

  @override
  Widget build(BuildContext context) {
    return InkWell(
        //onTap: () => selectArtifact(context),
        child: ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(top: 4.0, left: 8.0, right: 4.0, bottom: 4.0),
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    ));
  }
}
