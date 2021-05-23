import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import '../providers/artifacts.dart';
import '../widgets/mus_overview_item.dart';

/// This is the stateful widget that the main application instantiates.
class MuseumOverviewScreen extends StatelessWidget {
  // bool _pinned = true;
  // bool _snap = false;
  // bool _floating = false;

// [SliverAppBar]s are typically used in [CustomScrollView.slivers], which in
// turn can be placed in a [Scaffold.body].
  @override
  Widget build(BuildContext context) {
    final artifactsData = Provider.of<Artifacts>(context);
    final artifacts = artifactsData.artifacts;

    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;

    final musDescription = routeArgs['description'];
    final musImage = routeArgs['imageUrl'];
    final musTitle = routeArgs['title'];
    final musId = routeArgs['id'];
    final artifactsFltered = artifacts.where((art) {
      return art.categoriesId.contains(musId);
    }).toList();

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            snap: false,
            floating: false,
            expandedHeight: 160.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(musTitle),
              background: Image.network(musImage, fit: BoxFit.cover),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: SizedBox(
                height: 5,
                child: Center(
                  child: Text(musDescription),
                ),
              ),
            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 2.0,
              crossAxisSpacing: 2.0,
              childAspectRatio: 0.75,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, i) => MusOverviewItem(
                  artifactsFltered[i].id,
                  artifactsFltered[i].titleEN,
                  musDescription,
                  artifactsFltered[i].imageUrl.elementAt(0)),
              childCount: artifactsFltered.length,
            ),
          ),
        ],
      ),
    );
  }
}
