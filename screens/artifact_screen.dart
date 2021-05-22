import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'dart:async';
import '../widgets/slide_dots.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import '../providers/artifacts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ArtifactScreen extends StatefulWidget {
  @override
  _ArtifactScreenState createState() => _ArtifactScreenState();
}

class _ArtifactScreenState extends State<ArtifactScreen> {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);
  final panelController = PanelController();
  final double tabBarHeight = 80;

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 10), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // final routeArgs =
    //   ModalRoute.of(context).settings.arguments as Map<String, String>;
// final artifactsData = Provider.of<Artifacts>(context);

    final arId = ModalRoute.of(context).settings.arguments as String;

    final loadedArtifact = Provider.of<Artifacts>(context)
        .artifacts
        .firstWhere((art) => art.id == arId);

    final artifactsData = Provider.of<Artifacts>(context);
    final artifacts = artifactsData.artifacts;

    // final filteredArtifacts = artifacts.where((art) {
    //    return art.categoriesId.contains(arId);
    // }).toList();

    Widget buildTabBar({
      @required VoidCallback onClicked,
    }) =>
        PreferredSize(
          preferredSize: Size.fromHeight(tabBarHeight - 20),
          child: GestureDetector(
            onTap: onClicked,
            child: AppBar(
              title: FaIcon(FontAwesomeIcons.arrowAltCircleUp),
              centerTitle: true,
              bottom: TabBar(
                tabs: [
                  Tab(child: Text('English')),
                  Tab(child: Text('العربية')),
                ],
              ),
            ),
          ),
        );

    Widget buildSlidingPanel({
      @required PanelController panelController,
      @required ScrollController scrollController,
    }) =>
        DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: buildTabBar(
              onClicked: panelController.open,
            ),
            body: TabBarView(
              children: [
                //  Column(
                //    // children: [
                //   Container(
                //   child: Text(
                //    loadedArtifact.titleEN,
                //   style: TextStyle(
                //     fontSize: 28,
                //   ),
                //   ),
                //   margin: EdgeInsets.symmetric(vertical: 10),
                //   ),
                ListView.builder(
                  itemBuilder: (ctx, index) => Card(
                    color: Theme.of(context).accentColor,
                    child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 5,
                          horizontal: 10,
                        ),
                        child: Text(loadedArtifact.descriptionEN[index])),
                  ),
                  itemCount: loadedArtifact.descriptionEN.length,
                ),
                // ],
                //  ),
                ListView.builder(
                  itemBuilder: (ctx, index) => Card(
                    color: Theme.of(context).accentColor,
                    child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 5,
                          horizontal: 10,
                        ),
                        child: Text(loadedArtifact.descriptionAR[index])),
                  ),
                  itemCount: loadedArtifact.descriptionAR.length,
                ),

                /*
                ListView(
                  padding: EdgeInsets.all(16),
                  controller: scrollController,
                  children: [
                    Text(
                      'Title:$artifactTitleAR',
                      textAlign: TextAlign.center,
                    ),
                    Text('Details:$artifactDescriptionEN'),
                  ],
                ),
                ListView(
                    padding: EdgeInsets.all(16),
                    controller: scrollController,
                    children: [
                      Text(
                        'العنوان:$artifactTitleEN',
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'التفاصيل:$artifactDescriptionAR',
                        textAlign: TextAlign.right,
                      ),
                    ]),
              */
              ],
            ),
          ),
        );

    return Scaffold(
      appBar: AppBar(
        title: Text(loadedArtifact.titleEN),
      ),
      body: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: SlidingUpPanel(
          controller: panelController,
          maxHeight: 300,
          minHeight: 30,
          panelBuilder: (scrollController) => buildSlidingPanel(
            scrollController: scrollController,
            panelController: panelController,
          ),
          body: Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.topStart,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(bottom: 4, top: 4),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        for (int i = 0; i < loadedArtifact.imageUrl.length; i++)
                          if (i == _currentPage)
                            SlideDots(true)
                          else
                            SlideDots(false)
                      ],
                    ),
                  )
                ],
              ),
              Expanded(
                child: PageView.builder(
                  scrollDirection: Axis.horizontal,
                  controller: _pageController,
                  onPageChanged: _onPageChanged,
                  itemCount: loadedArtifact.imageUrl.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, top: 0, bottom: 115),
                      child: Card(
                        elevation: 6.0,
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        loadedArtifact.imageUrl[index]))),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),

              /* DraggableScrollableSheet(builder:
                    (BuildContext context, ScrollController scrollController) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                    ),
                    color: Colors.white54,
                    child: ListView.builder(
                      controller: scrollController,
                      itemCount: 3,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(title: Text('Item $index'));
                      },
                    ),
                  );
                }) */
            ],
          ),
        ),
      ),
    );
  }
}
