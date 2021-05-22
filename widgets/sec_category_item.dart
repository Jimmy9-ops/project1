import 'package:flutter/material.dart';

class SecCategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  SecCategoryItem(this.id, this.title, this.imageUrl);

  void selectCategory(BuildContext context) {
    Navigator.of(context).pushNamed('/Artifact_Overview_screen',
        arguments: {'id': id, 'title': title});
  }

  // ignore: empty_constructor_bodies
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  imageUrl,
                  height: 100,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    width: 140,
                    color: Colors.black54,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: Text(
                      title,
                      style: TextStyle(fontSize: 24, color: Colors.white),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
