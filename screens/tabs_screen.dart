import 'package:flutter/material.dart';

import 'package:flutter/foundation.dart';

import '../screens/main_category_screen.dart';
import '../screens/eras_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../screens/museum_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Artifacts Gallery'),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: FaIcon(FontAwesomeIcons.ankh),
                text: 'Eras',
              ),
              Tab(
                icon: FaIcon(FontAwesomeIcons.monument),
                text: 'Categories',
              ),
              Tab(
                icon: FaIcon(FontAwesomeIcons.landmark),
                text: 'Mus',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ErasScreen(),
            MainCategory(),
            MuseumScreen(),
          ],
        ),
      ),
    );
  }
}
