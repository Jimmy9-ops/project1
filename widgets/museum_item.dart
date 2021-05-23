import 'package:flutter/material.dart';

class MuseumItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final String description;
  MuseumItem(this.id, this.title, this.imageUrl, this.description);

  void selectMuseum(BuildContext context) {
    Navigator.of(context).pushNamed('/Museum_overview_screen', arguments: {
      'id': id,
      'title': title,
      'imageUrl': imageUrl,
      'description': description
    });
  }

  // ignore: empty_constructor_bodies
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectMuseum(context),
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
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    width: 200,
                    color: Colors.black54,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: Text(
                      title,
                      style: TextStyle(fontSize: 28, color: Colors.white),
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
