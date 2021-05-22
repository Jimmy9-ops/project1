import 'package:flutter/material.dart';

class ArtifactOverviewItem extends StatelessWidget {
  final String id;
  final String titleEN;
  final String titleAR;
  final String imageUrl;

  ArtifactOverviewItem(
    this.id,
    this.titleEN,
    this.titleAR,
    this.imageUrl,
  );

  void selectArtifact(BuildContext context) {
    Navigator.of(context).pushNamed(
      '/Artifact_screen',
      arguments: id,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectArtifact(context),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: GridTile(
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
            footer: GridTileBar(
              leading: IconButton(
                icon: Icon(Icons.favorite),
                onPressed: () {},
              ),
              backgroundColor: Colors.black87,
              title: Text(
                titleAR,
                textAlign: TextAlign.center,
              ),
            ),
          )),
    );
  }
}
