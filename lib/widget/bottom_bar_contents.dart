import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jayesh_jain_portfolio/widget/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class BottomBarContents extends StatelessWidget {
  const BottomBarContents({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    final Uri _whatsapp = Uri.parse(
        'https://api.whatsapp.com/send/?phone=919819906537&text&app_absent=0');
    final Uri _linkedin =
        Uri.parse('https://www.linkedin.com/in/jayesh-jain-3933671a1/');
    final Uri _instagram =
        Uri.parse('https://www.instagram.com/jayeshjain_25/');
    final Uri _twitter = Uri.parse('https://twitter.com/Jigse25');
    final Uri _github = Uri.parse('https://github.com/JayeshJain25');

    return Container(
      height: screenSize.height * 0.17,
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
      child: ResponsiveWidget.isSmallScreen(context)
          ? Column(
              children: [
                SizedBox(
                  height: screenSize.height * 0.04,
                ),
                Text(
                  "@ 2022 - Jayesh Jain. All rights reserved.",
                  style: GoogleFonts.rubik(
                    color: const Color(0xFFFFFFFF),
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: screenSize.height * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: screenSize.width * 0.07,
                      height: screenSize.height * 0.04,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color(0xFF2e2f34),
                      ),
                      child: Center(
                        child: InkWell(
                          onTap: () {
                            _launchUrl(_instagram);
                          },
                          child: const FaIcon(
                            FontAwesomeIcons.instagram,
                            color: Color(0xFFdb913b),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: screenSize.width * 0.02),
                      width: screenSize.width * 0.07,
                      height: screenSize.height * 0.04,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color(0xFF2e2f34),
                      ),
                      child: Center(
                        child: InkWell(
                          onTap: () {
                            _launchUrl(_twitter);
                          },
                          child: const FaIcon(
                            FontAwesomeIcons.twitter,
                            color: Color(0xFFdb913b),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: screenSize.width * 0.02),
                      width: screenSize.width * 0.07,
                      height: screenSize.height * 0.04,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color(0xFF2e2f34),
                      ),
                      child: Center(
                        child: InkWell(
                          onTap: () {
                            _launchUrl(_linkedin);
                          },
                          child: const FaIcon(
                            FontAwesomeIcons.linkedinIn,
                            color: Color(0xFFdb913b),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: screenSize.width * 0.02),
                      width: screenSize.width * 0.07,
                      height: screenSize.height * 0.04,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color(0xFF2e2f34),
                      ),
                      child: Center(
                        child: InkWell(
                          onTap: () {
                            _launchUrl(_github);
                          },
                          child: const FaIcon(
                            FontAwesomeIcons.github,
                            color: Color(0xFFdb913b),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: screenSize.width * 0.02),
                      width: screenSize.width * 0.07,
                      height: screenSize.height * 0.04,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color(0xFF2e2f34),
                      ),
                      child: Center(
                        child: InkWell(
                          onTap: () {
                            _launchUrl(_whatsapp);
                          },
                          child: const FaIcon(
                            FontAwesomeIcons.whatsapp,
                            color: Color(0xFFdb913b),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: screenSize.width * 0.37,
                ),
                Text(
                  "@ 2022 - Jayesh Jain. All rights reserved.",
                  style: GoogleFonts.rubik(
                    color: const Color(0xFFFFFFFF),
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  width: ResponsiveWidget.isMediumScreen(context)
                      ? screenSize.width * 0.08
                      : screenSize.width * 0.15,
                ),
                Container(
                  width: screenSize.width * 0.02,
                  height: (screenSize.width >= 800 && screenSize.width <= 915)
                      ? screenSize.height * 0.02
                      : screenSize.height * 0.037,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color(0xFF2e2f34),
                  ),
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        _launchUrl(_instagram);
                      },
                      child: const FaIcon(
                        FontAwesomeIcons.instagram,
                        size: 18,
                        color: Color(0xFFdb913b),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: screenSize.width * 0.01),
                  width: screenSize.width * 0.02,
                  height: (screenSize.width >= 800 && screenSize.width <= 915)
                      ? screenSize.height * 0.02
                      : screenSize.height * 0.037,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color(0xFF2e2f34),
                  ),
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        _launchUrl(_twitter);
                      },
                      child: const FaIcon(
                        FontAwesomeIcons.twitter,
                        size: 18,
                        color: Color(0xFFdb913b),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: screenSize.width * 0.01),
                  width: screenSize.width * 0.02,
                  height: (screenSize.width >= 800 && screenSize.width <= 915)
                      ? screenSize.height * 0.02
                      : screenSize.height * 0.037,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color(0xFF2e2f34),
                  ),
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        _launchUrl(_linkedin);
                      },
                      child: const FaIcon(
                        FontAwesomeIcons.linkedinIn,
                        size: 18,
                        color: Color(0xFFdb913b),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: screenSize.width * 0.01),
                  width: screenSize.width * 0.02,
                  height: (screenSize.width >= 800 && screenSize.width <= 915)
                      ? screenSize.height * 0.02
                      : screenSize.height * 0.037,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color(0xFF2e2f34),
                  ),
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        _launchUrl(_github);
                      },
                      child: const FaIcon(
                        FontAwesomeIcons.github,
                        size: 18,
                        color: Color(0xFFdb913b),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: screenSize.width * 0.01),
                  width: screenSize.width * 0.02,
                  height: (screenSize.width >= 800 && screenSize.width <= 915)
                      ? screenSize.height * 0.02
                      : screenSize.height * 0.037,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color(0xFF2e2f34),
                  ),
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        _launchUrl(_whatsapp);
                      },
                      child: const FaIcon(
                        FontAwesomeIcons.whatsapp,
                        size: 18,
                        color: Color(0xFFdb913b),
                      ),
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}

void _launchUrl(Uri url) async {
  if (!await launch(url.toString())) throw 'Could not launch $url';
}
