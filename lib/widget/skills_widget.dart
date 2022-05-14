import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jayesh_jain_portfolio/widget/responsive.dart';

class SkillsWidget extends StatelessWidget {
  const SkillsWidget({
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(
              top: screenSize.height * 0.05,
              bottom: ResponsiveWidget.isSmallScreen(context)
                  ? screenSize.height * 0.0
                  : screenSize.height * 0.04,
            ),
            child: Text(
              "Skills",
              style: GoogleFonts.oswald(
                color: Colors.white,
                fontSize: ResponsiveWidget.isSmallScreen(context) ? 28 : 40,
              ),
            ),
          ),
          SizedBox(
            height: screenSize.height * 0.05,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: screenSize.height * 0.2,
                width: screenSize.width * 0.4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Flutter",
                          style: GoogleFonts.rubik(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "60%",
                          style: GoogleFonts.rubik(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: ResponsiveWidget.isLargeScreen(context) ? 20 : 10,
                    ),
                    const LinearProgressIndicator(
                      backgroundColor: Color(0xFF363737),
                      valueColor:
                          AlwaysStoppedAnimation<Color>(Color(0xFF437FC7)),
                      value: 0.6,
                      minHeight: 10,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screenSize.height * 0.2,
                width: screenSize.width * 0.4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Firebase",
                          style: GoogleFonts.rubik(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "60%",
                          style: GoogleFonts.rubik(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: ResponsiveWidget.isLargeScreen(context) ? 20 : 10,
                    ),
                    const LinearProgressIndicator(
                      backgroundColor: Color(0xFF363737),
                      valueColor:
                          AlwaysStoppedAnimation<Color>(Color(0xFF437FC7)),
                      value: 0.6,
                      minHeight: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: screenSize.height * 0.2,
                width: screenSize.width * 0.4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "MongoDB",
                          style: GoogleFonts.rubik(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "55%",
                          style: GoogleFonts.rubik(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: ResponsiveWidget.isLargeScreen(context) ? 20 : 10,
                    ),
                    const LinearProgressIndicator(
                      backgroundColor: Color(0xFF363737),
                      valueColor:
                          AlwaysStoppedAnimation<Color>(Color(0xFF437FC7)),
                      value: 0.55,
                      minHeight: 10,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screenSize.height * 0.2,
                width: screenSize.width * 0.4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Django",
                          style: GoogleFonts.rubik(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "50%",
                          style: GoogleFonts.rubik(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: ResponsiveWidget.isLargeScreen(context) ? 20 : 10,
                    ),
                    const LinearProgressIndicator(
                      backgroundColor: Color(0xFF363737),
                      valueColor:
                          AlwaysStoppedAnimation<Color>(Color(0xFF437FC7)),
                      value: 0.5,
                      minHeight: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: screenSize.height * 0.2,
                width: screenSize.width * 0.4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Python",
                          style: GoogleFonts.rubik(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "50%",
                          style: GoogleFonts.rubik(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: ResponsiveWidget.isLargeScreen(context) ? 20 : 10,
                    ),
                    const LinearProgressIndicator(
                      backgroundColor: Color(0xFF363737),
                      valueColor:
                          AlwaysStoppedAnimation<Color>(Color(0xFF437FC7)),
                      value: 0.5,
                      minHeight: 10,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screenSize.height * 0.2,
                width: screenSize.width * 0.4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Solidity",
                          style: GoogleFonts.rubik(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "25%",
                          style: GoogleFonts.rubik(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: ResponsiveWidget.isLargeScreen(context) ? 20 : 10,
                    ),
                    const LinearProgressIndicator(
                      backgroundColor: Color(0xFF363737),
                      valueColor:
                          AlwaysStoppedAnimation<Color>(Color(0xFF437FC7)),
                      value: 0.25,
                      minHeight: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Text(
            "I Am Available For Freelance Work !",
            style: GoogleFonts.oswald(
              color: Colors.white,
              fontSize: ResponsiveWidget.isSmallScreen(context) ? 25 : 35,
            ),
          )
        ],
      ),
    );
  }
}
