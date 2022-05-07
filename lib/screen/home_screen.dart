import 'package:flutter/material.dart';
import 'package:jayesh_jain_portfolio/widget/home_widget.dart';
import '../widget/about_me.dart';
import '../widget/bottom_bar_contents.dart';
import '../widget/top_bar.dart';
import '../widget/web_scrollbar.dart';

class HomeScreen extends StatefulWidget {
  static const String route = '/';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ScrollController _scrollController;
  double _scrollPosition = 0;
  double _opacity = 0;
  GlobalKey key = GlobalKey();
  GlobalKey key2 = GlobalKey();
  GlobalKey key3 = GlobalKey();
  GlobalKey key4 = GlobalKey();
  GlobalKey key5 = GlobalKey();

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<GlobalKey<State<StatefulWidget>>> listKey = [
      key,
      key2,
      key3,
      key4,
      key5
    ];
    var screenSize = MediaQuery.of(context).size;
    _opacity = _scrollPosition < screenSize.height * 0.40
        ? _scrollPosition / (screenSize.height * 0.40)
        : 1;

    return Scaffold(
      backgroundColor: Colors.redAccent,
      extendBodyBehindAppBar: true,
      appBar: const PreferredSize(
        preferredSize: Size(0, 0),
        child: SizedBox(),
      ),
      //   drawer: ExploreDrawer(listKey),
      body: WebScrollbar(
        controller: _scrollController,
        child: SingleChildScrollView(
          controller: _scrollController,
          physics: const ClampingScrollPhysics(),
          child: Column(
            children: [
              TopBarContents(_opacity, listKey),
              HomeWidget(
                screenSize: screenSize,
                key: key,
              ),
              AboutMe(
                screenSize: screenSize,
                key: key2,
              ),
              // SkillWidget(screenSize: screenSize, key: key3),
              // PortfolioWidget(
              //   screenSize: screenSize,
              //   key: key4,
              // ),
              BottomBarContents(
                screenSize: screenSize,
                key: key5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
