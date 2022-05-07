import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

class TopBarContents extends StatefulWidget {
  final double opacity;
  final List<GlobalKey> keys;
  const TopBarContents(this.opacity, this.keys, {Key? key}) : super(key: key);

  @override
  _TopBarContentsState createState() => _TopBarContentsState();
}

class _TopBarContentsState extends State<TopBarContents> {
  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.topRight,
          colors: [
            Color(0xFF0d111c),
            Color(0xFF252a3b),
            Color(0xFF483a43),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MouseRegion(
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
            ResponsiveVisibility(
              visible: false,
              visibleWhen: const [
                Condition.largerThan(name: MOBILE),
              ],
              child: Row(
                children: [
                  SizedBox(width: screenSize.width / 3),
                  Container(
                    margin: const EdgeInsets.only(right: 30.0),
                    child: InkWell(
                      hoverColor: Colors.transparent,
                      onHover: (value) {
                        setState(() {
                          value
                              ? _isHovering[0] = true
                              : _isHovering[0] = false;
                        });
                      },
                      onTap: () {
                        Scrollable.ensureVisible(
                          widget.keys[0].currentContext!,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'HOME',
                            style: GoogleFonts.rubik(
                              color: (_isHovering[1] ||
                                      _isHovering[2] ||
                                      _isHovering[3] ||
                                      _isHovering[4])
                                  ? Colors.grey
                                  : Colors.white,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Visibility(
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            visible: _isHovering[0],
                            child: Container(
                              height: 2,
                              width: 20,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 30.0),
                    child: InkWell(
                      hoverColor: Colors.transparent,
                      onHover: (value) {
                        setState(() {
                          value
                              ? _isHovering[1] = true
                              : _isHovering[1] = false;
                        });
                      },
                      onTap: () {
                        Scrollable.ensureVisible(
                          widget.keys[1].currentContext!,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'ABOUT ME',
                            style: GoogleFonts.rubik(
                              color: (_isHovering[0] ||
                                      _isHovering[2] ||
                                      _isHovering[3] ||
                                      _isHovering[4])
                                  ? Colors.grey
                                  : Colors.white,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Visibility(
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            visible: _isHovering[1],
                            child: Container(
                              height: 2,
                              width: 20,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 30.0),
                    child: InkWell(
                      hoverColor: Colors.transparent,
                      onHover: (value) {
                        setState(() {
                          value
                              ? _isHovering[2] = true
                              : _isHovering[2] = false;
                        });
                      },
                      onTap: () {
                        Scrollable.ensureVisible(
                          widget.keys[2].currentContext!,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'PROJECTS',
                            style: GoogleFonts.rubik(
                              color: (_isHovering[0] ||
                                      _isHovering[1] ||
                                      _isHovering[3] ||
                                      _isHovering[4])
                                  ? Colors.grey
                                  : Colors.white,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Visibility(
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            visible: _isHovering[2],
                            child: Container(
                              height: 2,
                              width: 20,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 30.0),
                    child: InkWell(
                      hoverColor: Colors.transparent,
                      onHover: (value) {
                        setState(() {
                          value
                              ? _isHovering[3] = true
                              : _isHovering[3] = false;
                        });
                      },
                      onTap: () {
                        Scrollable.ensureVisible(
                          widget.keys[3].currentContext!,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'SERVICES',
                            style: GoogleFonts.rubik(
                              color: (_isHovering[0] ||
                                      _isHovering[2] ||
                                      _isHovering[1] ||
                                      _isHovering[4])
                                  ? Colors.grey
                                  : Colors.white,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Visibility(
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            visible: _isHovering[3],
                            child: Container(
                              height: 2,
                              width: 20,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 30.0),
                    child: InkWell(
                      hoverColor: Colors.transparent,
                      onHover: (value) {
                        setState(() {
                          value
                              ? _isHovering[4] = true
                              : _isHovering[4] = false;
                        });
                      },
                      onTap: () {
                        Scrollable.ensureVisible(
                          widget.keys[4].currentContext!,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'SKILLS',
                            style: GoogleFonts.rubik(
                              color: (_isHovering[0] ||
                                      _isHovering[2] ||
                                      _isHovering[3] ||
                                      _isHovering[1])
                                  ? Colors.grey
                                  : Colors.white,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Visibility(
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            visible: _isHovering[4],
                            child: Container(
                              height: 2,
                              width: 20,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
