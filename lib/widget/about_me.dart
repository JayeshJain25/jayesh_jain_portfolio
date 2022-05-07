import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jayesh_jain_portfolio/widget/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    final Uri _linkedin =
        Uri.parse('https://www.linkedin.com/in/jayesh-jain-3933671a1/');
    final Uri _resume = Uri.parse(
        "https://drive.google.com/file/d/1f4OzTtnsUbERj-gW81nIzbxd3Hxx5_1b/view?usp=sharing");
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
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: screenSize.height * 0.05,
              bottom: ResponsiveWidget.isSmallScreen(context)
                  ? screenSize.height * 0.0
                  : screenSize.height * 0.04,
            ),
            child: Text(
              "About Me",
              style: GoogleFonts.oswald(
                color: Colors.white,
                fontSize: ResponsiveWidget.isSmallScreen(context) ? 28 : 40,
              ),
            ),
          ),
          ResponsiveWidget.isSmallScreen(context)
              ? Column(
                  children: [
                    Image.asset(
                      "assets/about_me.png",
                      width: screenSize.width * 0.6,
                      height: screenSize.height * 0.4,
                    ),
                    SizedBox(
                      width: screenSize.width * 0.9,
                      child: Text(
                        "First and foremost, I love writing code. Ever since I started writing code, I have been obsessed with the idea of using software to solve practical problems. Software engineering is a never- ending puzzle that I am passionately engaged in solving. I believe in the power of programming to transform and improve the lives of people around the world. \n\nI am just getting started as a full-stack freelancer as it is a great experience to be directly connected to clients. Writing code is what I have always loved and this is what keeps me up at night, a never-ending thirst to create beautiful, powerful things and share them with the world.\n\nSkills/Interests: Flutter, Python, Django, Java, Spring Boot, Dart, Solidity.",
                        style: GoogleFonts.rubik(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    SizedBox(
                      height: screenSize.height * 0.03,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xFF437FC7),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            height: 35.0,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 17.0,
                            ),
                            child: TextButton.icon(
                              icon: const FaIcon(FontAwesomeIcons.linkedinIn,
                                  size: 15, color: Colors.white),
                              onPressed: () {
                                _launchUrl(_linkedin);
                              },
                              label: Text(
                                "Linkedin",
                                style: GoogleFonts.rubik(
                                  color: Colors.white,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: screenSize.width * 0.05,
                        ),
                        MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xFF437FC7),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            height: 35.0,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 17.0,
                            ),
                            child: TextButton.icon(
                              icon: const FaIcon(
                                  FontAwesomeIcons.cloudArrowDown,
                                  size: 15,
                                  color: Colors.white),
                              onPressed: () {
                                _launchUrl(_resume);
                              },
                              label: Text(
                                "Resume",
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
                    )
                  ],
                )
              : Row(
                  children: [
                    Image.asset(
                      "assets/about_me.png",
                      width: screenSize.width * 0.4,
                      height: (screenSize.width == 912)
                          ? screenSize.height * 0.42
                          : (screenSize.width >= 900 &&
                                  screenSize.width <= 1024)
                              ? screenSize.height * 0.45
                              : screenSize.height * 0.5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: screenSize.width * 0.5,
                          child: Text(
                            "First and foremost, I love writing code. Ever since I started writing code, I have been obsessed with the idea of using software to solve practical problems. Software engineering is a never- ending puzzle that I am passionately engaged in solving. I believe in the power of programming to transform and improve the lives of people around the world. \n\nI am just getting started as a full-stack freelancer as it is a great experience to be directly connected to clients. Writing code is what I have always loved and this is what keeps me up at night, a never-ending thirst to create beautiful, powerful things and share them with the world.\n\nSkills/Interests: Flutter, Python, Django, Java, Spring Boot, Dart, Solidity.",
                            style: GoogleFonts.rubik(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        SizedBox(
                          height: screenSize.height * 0.05,
                        ),
                        Row(
                          children: [
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
                                child: TextButton.icon(
                                  icon: const FaIcon(
                                      FontAwesomeIcons.linkedinIn,
                                      color: Colors.white),
                                  onPressed: () {
                                    _launchUrl(_linkedin);
                                  },
                                  label: Text(
                                    "Linkedin",
                                    style: GoogleFonts.rubik(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenSize.width * 0.02,
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
                                child: TextButton.icon(
                                  icon: const FaIcon(
                                      FontAwesomeIcons.cloudArrowDown,
                                      color: Colors.white),
                                  onPressed: () {
                                    _launchUrl(_resume);
                                  },
                                  label: Text(
                                    "Resume",
                                    style: GoogleFonts.rubik(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                )
        ],
      ),
    );
  }
}

void _launchUrl(Uri url) async {
  if (!await launch(url.toString())) throw 'Could not launch $url';
}
