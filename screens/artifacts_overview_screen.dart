import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/artifact_overview_item.dart';
import '../providers/artifacts.dart';

class ArtifactsOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final artifactsData = Provider.of<Artifacts>(context);
    final artifacts = artifactsData.artifacts;
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;

    final secCategoryTitle = routeArgs['title'];
    final secCategoryId = routeArgs['id'];
    final artifactsFltered = artifacts.where((art) {
      return art.categoriesId.contains(secCategoryId);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(secCategoryTitle),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemBuilder: (ctx, i) => ArtifactOverviewItem(
          artifactsFltered[i].id,
          artifactsFltered[i].titleAR,
          artifactsFltered[i].titleEN,
          artifactsFltered[i].imageUrl.elementAt(0),
        ),
        itemCount: artifactsFltered.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
      ),
    );
  }
}
