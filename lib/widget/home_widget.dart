import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_arc_text/flutter_arc_text.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jayesh_jain_portfolio/widget/responsive.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({
    Key? key,
    required this.screenSize,
    required this.keys,
  }) : super(key: key);

  final Size screenSize;
  final List<GlobalKey> keys;

  @override
  Widget build(BuildContext context) {
    final Uri _whatsapp = Uri.parse(
        'https://api.whatsapp.com/send/?phone=919819906537&text&app_absent=0');
    return Container(
      height: screenSize.height,
      width: screenSize.width,
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            width: 0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: screenSize.height * 0.2,
              ),
              Text(
                "HELLO,\nI'M JAYESH\nJAIN",
                style: GoogleFonts.oswald(
                  color: Colors.white,
                  fontSize: 40.0,
                  fontWeight: FontWeight.w700,
                  height: 1.3,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                "Full-stack developer",
                style: GoogleFonts.rubik(
                  color: const Color(0xFF7395AE),
                  fontSize: 15.0,
                  height: 1.0,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Wrap(
                children: [
                  Text(
                    "Need a full custom website?",
                    style: GoogleFonts.rubik(
                      color: const Color(0xFF7395AE),
                      fontSize: 15.0,
                      height: 1.5,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _launchUrl(_whatsapp);
                    },
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: Text(
                        " Got a project? Let's talk.",
                        style: GoogleFonts.rubik(
                          height: 1.5,
                          color: Colors.white,
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 25.0,
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF437FC7),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  height: 48.0,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 28.0,
                  ),
                  child: TextButton(
                    onPressed: () {
                      Scrollable.ensureVisible(
                        keys[1].currentContext!,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    },
                    child: Text(
                      "GET STARTED",
                      style: GoogleFonts.rubik(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          Stack(
            children: [
              ResponsiveVisibility(
                visible: false,
                visibleWhen: const [
                  Condition.largerThan(name: MOBILE),
                ],
                child: Container(
                  margin: EdgeInsets.only(
                      top: (screenSize.width == 912)
                          ? screenSize.height * 0.07
                          : ResponsiveWidget.isMediumScreen(context)
                              ? screenSize.height * 0.04
                              : screenSize.height * 0.1),
                  child: Image.asset(
                    "assets/home_page.png",
                    width: screenSize.width * 0.48,
                    height: (screenSize.width == 912)
                        ? screenSize.height * 0.42
                        : (screenSize.width >= 900 && screenSize.width <= 1024)
                            ? screenSize.height * 0.45
                            : screenSize.height * 0.5,
                  ),
                ),
              ),
              // CustomPaint(
              //   painter: OpenPainter(),
              // ),
              ResponsiveWidget.isMediumScreen(context)
                  ? Positioned(
                      top: screenSize.height * 0.3,
                      left: screenSize.width * 0.25,
                      child: ArcText(
                        radius: 170,
                        text:
                            'Flutter            Django            Firebase            MongoDB            Solidity            Python            ',
                        textStyle: GoogleFonts.rubik(
                            fontSize: 25, color: Colors.white),
                        startAngle: -pi / 1.6,
                        startAngleAlignment: StartAngleAlignment.start,
                        placement: Placement.outside,
                        direction: Direction.clockwise,
                      ),
                    )
                  : Positioned(
                      top: screenSize.height * 0.39,
                      left: screenSize.width * 0.25,
                      child: ArcText(
                        radius: 250,
                        text:
                            'Flutter            Django            Firebase            MongoDB            Solidity            Python            ',
                        textStyle: GoogleFonts.rubik(
                            fontSize: 40, color: Colors.white),
                        startAngle: -pi / 1.6,
                        startAngleAlignment: StartAngleAlignment.start,
                        placement: Placement.outside,
                        direction: Direction.clockwise,
                      ),
                    ),
            ],
          )
        ],
      ),
    );
  }
}

class OpenPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = Colors.redAccent
      ..style = PaintingStyle.fill;
    canvas.drawCircle(const Offset(400, 300), 250, paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

void _launchUrl(Uri url) async {
  if (!await launch(url.toString())) throw 'Could not launch $url';
}
