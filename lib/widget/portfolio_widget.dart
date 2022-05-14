import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jayesh_jain_portfolio/model/portfolio_model.dart';
import 'package:jayesh_jain_portfolio/widget/responsive.dart';
import 'package:carousel_slider/carousel_slider.dart';

class PortfolioWidget extends StatelessWidget {
  const PortfolioWidget({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    List<PortfolioModel> data = [
      PortfolioModel(
        "assets/3.jpeg",
        "CryptoX App",
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      ),
      PortfolioModel(
        "assets/3.jpeg",
        "CryptoX App",
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      ),
      PortfolioModel(
        "assets/3.jpeg",
        "CryptoX App",
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      )
    ];

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
              "Portfolio",
              style: GoogleFonts.oswald(
                color: Colors.white,
                fontSize: ResponsiveWidget.isSmallScreen(context) ? 28 : 40,
              ),
            ),
          ),
          CarouselSlider.builder(
            itemCount: data.length,
            itemBuilder:
                (BuildContext context, int itemIndex, int pageViewIndex) =>
                    Container(
              width: screenSize.width,
              child: Row(
                children: [
                  Image.asset(
                    data[itemIndex].image,
                    height: screenSize.height * 0.7,
                  ),
                  SizedBox(
                    width: screenSize.width * 0.1,
                  ),
                  Column(
                    children: [
                      Text(
                        data[itemIndex].title,
                        style: GoogleFonts.oswald(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: screenSize.height * 0.07,
                      ),
                      Container(
                        width: screenSize.width * 0.5,
                        height: screenSize.height * 0.6,
                        child: Text(
                          data[itemIndex].description,
                          style: GoogleFonts.rubik(
                              color: Colors.grey[400],
                              fontSize: 18,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              viewportFraction: 0.9,
              aspectRatio: 2.0,
              initialPage: 1,
              height: screenSize.height * 0.8,
            ),
          )
        ],
      ),
    );
  }
}
