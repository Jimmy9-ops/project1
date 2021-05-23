import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/tabs_screen.dart';

import './screens/sec_category_screen.dart';
import './screens/artifacts_overview_screen.dart';
import './screens/artifact_screen.dart';
import './providers/artifacts.dart';
import './screens/era_overview_screen.dart';
import './screens/mus_overview_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => Artifacts(),
      child: MaterialApp(
        title: 'Artifacts Of Egypt',
        theme: ThemeData(
          primarySwatch: Colors.amber,
          fontFamily: 'BArabics',
        ),
        home: TabsScreen(),
        routes: {
          '/Second-category': (context) => SecondCategory(),
          '/Artifact_Overview_screen': (context) => ArtifactsOverviewScreen(),
          '/Artifact_screen': (context) => ArtifactScreen(),
          '/Era_Overview_screen': (context) => EraOverviewScreen(),
          '/Museum_overview_screen': (context) => MuseumOverviewScreen(),
        },
      ),
    );
  }
}
