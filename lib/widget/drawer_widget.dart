import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerWidget extends StatefulWidget {
  final List<GlobalKey> keys;
  const DrawerWidget(this.keys, {Key? key}) : super(key: key);

  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Container(
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
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              InkWell(
                onTap: () {},
                child: Text(
                  'Jayesh Jain',
                  style: GoogleFonts.rubik(color: Colors.white, fontSize: 22),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(
                  color: Color(0xFF437FC7),
                  thickness: 2,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              InkWell(
                hoverColor: Colors.transparent,
                onHover: (value) {
                  setState(() {
                    value ? _isHovering[0] = true : _isHovering[0] = false;
                  });
                },
                onTap: () {
                  Navigator.pop(context);
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
                          fontSize: 22),
                    ),
                    const SizedBox(height: 5),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: _isHovering[0],
                      child: Container(
                        height: 2,
                        width: 35,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              InkWell(
                hoverColor: Colors.transparent,
                onHover: (value) {
                  setState(() {
                    value ? _isHovering[1] = true : _isHovering[1] = false;
                  });
                },
                onTap: () {
                  Navigator.pop(context);
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
                          fontSize: 22),
                    ),
                    const SizedBox(height: 5),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: _isHovering[1],
                      child: Container(
                        height: 2,
                        width: 35,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              InkWell(
                hoverColor: Colors.transparent,
                onHover: (value) {
                  setState(() {
                    value ? _isHovering[2] = true : _isHovering[2] = false;
                  });
                },
                onTap: () {
                  Navigator.pop(context);
                  Scrollable.ensureVisible(
                    widget.keys[2].currentContext!,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
                child: Column(
                  children: [
                    Text(
                      'PORTFOLIO',
                      style: GoogleFonts.rubik(
                          color: (_isHovering[0] ||
                                  _isHovering[1] ||
                                  _isHovering[3] ||
                                  _isHovering[4])
                              ? Colors.grey
                              : Colors.white,
                          fontSize: 22),
                    ),
                    const SizedBox(height: 5),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: _isHovering[2],
                      child: Container(
                        height: 2,
                        width: 35,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              InkWell(
                hoverColor: Colors.transparent,
                onHover: (value) {
                  setState(() {
                    value ? _isHovering[3] = true : _isHovering[3] = false;
                  });
                },
                onTap: () {
                  Navigator.pop(context);
                  Scrollable.ensureVisible(
                    widget.keys[3].currentContext!,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
                child: Column(
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
                          fontSize: 22),
                    ),
                    const SizedBox(height: 5),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: _isHovering[3],
                      child: Container(
                        height: 2,
                        width: 35,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              InkWell(
                hoverColor: Colors.transparent,
                onHover: (value) {
                  setState(() {
                    value ? _isHovering[4] = true : _isHovering[4] = false;
                  });
                },
                onTap: () {
                  Navigator.pop(context);
                  Scrollable.ensureVisible(
                    widget.keys[4].currentContext!,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
                child: Column(
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
                          fontSize: 22),
                    ),
                    const SizedBox(height: 5),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: _isHovering[4],
                      child: Container(
                        height: 2,
                        width: 35,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Copyright © 2022 | Jayesh Jain',
                    style: GoogleFonts.oswald(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
