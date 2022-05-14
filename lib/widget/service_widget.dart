import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jayesh_jain_portfolio/widget/responsive.dart';

class ServiceWidget extends StatelessWidget {
  const ServiceWidget({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
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
              "Services",
              style: GoogleFonts.oswald(
                color: Colors.white,
                fontSize: ResponsiveWidget.isSmallScreen(context) ? 25 : 40,
              ),
            ),
          ),
          SizedBox(
            height: ResponsiveWidget.isSmallScreen(context)
                ? screenSize.height * 0.01
                : screenSize.height * 0.07,
          ),
          ResponsiveWidget.isSmallScreen(context)
              ? Container(
                  width: screenSize.width * 0.5,
                  height: screenSize.height * 0.28,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFF121214),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: screenSize.height * 0.04,
                      ),
                      const FaIcon(
                        FontAwesomeIcons.android,
                        size: 35,
                        color: Color(0xFF382794),
                      ),
                      SizedBox(
                        height: screenSize.height * 0.03,
                      ),
                      Text(
                        "Android App Creation",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.rubik(
                            fontSize: 16, color: Colors.white),
                      ),
                      SizedBox(
                        height: screenSize.height * 0.04,
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          left: 5,
                          right: 5,
                        ),
                        child: Text(
                          "Development of professional, responsive apps for your business.",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.rubik(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                )
              : const SizedBox(),
          SizedBox(
            height: screenSize.height * 0.02,
          ),
          ResponsiveWidget.isSmallScreen(context)
              ? Container(
                  width: screenSize.width * 0.5,
                  height: screenSize.height * 0.28,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFF121214),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: screenSize.height * 0.04,
                      ),
                      const FaIcon(
                        FontAwesomeIcons.mobile,
                        size: 35,
                        color: Color(0xFF382794),
                      ),
                      SizedBox(
                        height: screenSize.height * 0.03,
                      ),
                      Text(
                        "Website Creation",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.rubik(
                            fontSize: 16, color: Colors.white),
                      ),
                      SizedBox(
                        height: screenSize.height * 0.04,
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          left: 5,
                          right: 5,
                        ),
                        child: Text(
                          "Creation of professional websites, web systems, blogs, and online stores.",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.rubik(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                )
              : const SizedBox(),
          SizedBox(
            height: screenSize.height * 0.02,
          ),
          ResponsiveWidget.isSmallScreen(context)
              ? Container(
                  width: screenSize.width * 0.5,
                  height: screenSize.height * 0.28,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFF121214),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: screenSize.height * 0.04,
                      ),
                      const FaIcon(
                        FontAwesomeIcons.code,
                        size: 35,
                        color: Color(0xFF382794),
                      ),
                      SizedBox(
                        height: screenSize.height * 0.03,
                      ),
                      Text(
                        "Semantic Code",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.rubik(
                            fontSize: 16, color: Colors.white),
                      ),
                      SizedBox(
                        height: screenSize.height * 0.04,
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          left: 5,
                          right: 5,
                        ),
                        child: Text(
                          "Strategy and monitoring for your business, making your app or website appear better.",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.rubik(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                )
              : const SizedBox(),
          ResponsiveWidget.isSmallScreen(context)
              ? const SizedBox()
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: ResponsiveWidget.isMediumScreen(context)
                          ? screenSize.width * 0.27
                          : screenSize.width * 0.17,
                      height: (screenSize.width == 1024)
                          ? screenSize.height * 0.4
                          : ResponsiveWidget.isMediumScreen(context)
                              ? screenSize.height * 0.3
                              : screenSize.height * 0.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFF121214),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: screenSize.height * 0.06,
                          ),
                          const FaIcon(
                            FontAwesomeIcons.android,
                            size: 40,
                            color: Color(0xFF382794),
                          ),
                          SizedBox(
                            height: screenSize.height * 0.03,
                          ),
                          Text(
                            "Android App Creation",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.rubik(
                                fontSize: 17, color: Colors.white),
                          ),
                          SizedBox(
                            height: screenSize.height * 0.04,
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              left: 5,
                              right: 5,
                            ),
                            child: Text(
                              "Development of professional, responsive apps for your business.",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.rubik(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: ResponsiveWidget.isMediumScreen(context)
                          ? screenSize.width * 0.27
                          : screenSize.width * 0.17,
                      height: (screenSize.width == 1024)
                          ? screenSize.height * 0.4
                          : ResponsiveWidget.isMediumScreen(context)
                              ? screenSize.height * 0.3
                              : screenSize.height * 0.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFF121214),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: screenSize.height * 0.06,
                          ),
                          const FaIcon(
                            FontAwesomeIcons.mobile,
                            size: 40,
                            color: Color(0xFF382794),
                          ),
                          SizedBox(
                            height: screenSize.height * 0.03,
                          ),
                          Text(
                            "Website Creation",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.rubik(
                                fontSize: 17, color: Colors.white),
                          ),
                          SizedBox(
                            height: screenSize.height * 0.04,
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              left: 5,
                              right: 5,
                            ),
                            child: Text(
                              "Creation of professional websites, web systems, blogs, and online stores.",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.rubik(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: ResponsiveWidget.isMediumScreen(context)
                          ? screenSize.width * 0.27
                          : screenSize.width * 0.17,
                      height: (screenSize.width == 1024)
                          ? screenSize.height * 0.4
                          : ResponsiveWidget.isMediumScreen(context)
                              ? screenSize.height * 0.3
                              : screenSize.height * 0.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFF121214),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: screenSize.height * 0.06,
                          ),
                          const FaIcon(
                            FontAwesomeIcons.code,
                            size: 40,
                            color: Color(0xFF382794),
                          ),
                          SizedBox(
                            height: screenSize.height * 0.03,
                          ),
                          Text(
                            "Semantic Code",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.rubik(
                                fontSize: 17, color: Colors.white),
                          ),
                          SizedBox(
                            height: screenSize.height * 0.04,
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              left: 5,
                              right: 5,
                            ),
                            child: Text(
                              "Strategy and monitoring for your business, making your app or website appear better.",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.rubik(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )
        ],
      ),
    );
  }
}
