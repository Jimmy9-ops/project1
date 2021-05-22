import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';
import '../providers/artifacts.dart';
import '../widgets/era_overview_item.dart';

/// This is the stateful widget that the main application instantiates.
class EraOverviewScreen extends StatefulWidget {
  const EraOverviewScreen({Key key}) : super(key: key);

  @override
  State<EraOverviewScreen> createState() => _EraOverviewScreenState();
}

/// This is the private State class that goes with EraOverviewScreen.
class _EraOverviewScreenState extends State<EraOverviewScreen> {
  bool _pinned = true;
  bool _snap = false;
  bool _floating = false;

// [SliverAppBar]s are typically used in [CustomScrollView.slivers], which in
// turn can be placed in a [Scaffold.body].
  @override
  Widget build(BuildContext context) {
    final artifactsData = Provider.of<Artifacts>(context);
    final artifacts = artifactsData.artifacts;

    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;

    final eraDescription = routeArgs['description'];
    final eraImage = routeArgs['imageUrl'];
    final eraTitle = routeArgs['title'];
    final eraId = routeArgs['id'];
    final artifactsFltered = artifacts.where((art) {
      return art.categoriesId.contains(eraId);
    }).toList();

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: _pinned,
            snap: _snap,
            floating: _floating,
            expandedHeight: 160.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(eraTitle),
              background: Image.network(eraImage, fit: BoxFit.cover),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 150,
              child: Center(
                child: Text(eraDescription),
              ),
            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 0.0,
              crossAxisSpacing: 0.0,
              childAspectRatio: 0.75,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, i) => EraOverviewItem(
                  artifactsFltered[i].id,
                  artifactsFltered[i].titleAR,
                  artifactsFltered[i].titleEN,
                  artifactsFltered[i].imageUrl.elementAt(0)),
              childCount: artifactsFltered.length,
            ),
          ),
        ],
      ),
    );
  }
}
