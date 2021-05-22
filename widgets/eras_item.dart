import 'package:flutter/material.dart';

class ErasItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final String time;
  final String description;
  ErasItem(this.id, this.title, this.imageUrl, this.time, this.description);

  void selectEra(BuildContext context) {
    Navigator.of(context).pushNamed('/Era_Overview_screen', arguments: {
      'id': id,
      'title': title,
      'imageUrl': imageUrl,
      'description': description
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectEra(context),
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
                  height: 140,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Row(
                children: [
                  Positioned(
                    bottom: 20,
                    right: 5,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        width: 140,
                        color: Colors.black54,
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 5),
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
                  Spacer(),
                  Positioned(
                    bottom: 20,
                    left: 5,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        width: 100,
                        color: Colors.black54,
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        child: Text(
                          time,
                          style: TextStyle(fontSize: 24, color: Colors.white),
                          softWrap: true,
                          overflow: TextOverflow.fade,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ])
          ],
        ),
      ),
    );
  }
}
