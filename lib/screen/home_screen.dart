import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jayesh_jain_portfolio/widget/drawer_widget.dart';
import 'package:jayesh_jain_portfolio/widget/home_widget.dart';
import 'package:jayesh_jain_portfolio/widget/portfolio_widget.dart';
import 'package:jayesh_jain_portfolio/widget/service_widget.dart';
import 'package:jayesh_jain_portfolio/widget/skills_widget.dart';
import '../widget/about_me.dart';
import '../widget/bottom_bar_contents.dart';
import '../widget/responsive.dart';
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
  final double _opacity = 0;
  GlobalKey key = GlobalKey();
  GlobalKey key2 = GlobalKey();
  GlobalKey key3 = GlobalKey();
  GlobalKey key4 = GlobalKey();
  GlobalKey key5 = GlobalKey();

  _scrollListener() {
    setState(() {});
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

    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? AppBar(
              automaticallyImplyLeading: true,
              elevation: 0,
              backgroundColor: Colors.transparent,
              title: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {},
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "J",
                          style: GoogleFonts.oswald(
                            color: Colors.white,
                            fontSize: 32.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: ".",
                          style: GoogleFonts.oswald(
                            color: const Color(0xFF437FC7),
                            fontSize: 36.0,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              actions: [
                Builder(
                  builder: (context) => Container(
                    margin: EdgeInsets.only(
                      right: screenSize.width * 0.03,
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.menu_rounded,
                        size: 25,
                      ),
                      onPressed: () => Scaffold.of(context).openEndDrawer(),
                    ),
                  ),
                )
              ],
            )
          : const PreferredSize(
              preferredSize: Size(0, 0),
              child: SizedBox(),
            ),
      endDrawer: DrawerWidget(listKey),
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
                keys: listKey,
                key: key,
              ),
              AboutMe(
                screenSize: screenSize,
                key: key2,
              ),
              PortfolioWidget(
                screenSize: screenSize,
                key: key3,
              ),
              ServiceWidget(
                screenSize: screenSize,
                key: key4,
              ),
              SkillsWidget(
                screenSize: screenSize,
                key: key5,
              ),
              BottomBarContents(
                screenSize: screenSize,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
