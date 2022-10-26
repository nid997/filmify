import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_zone_app/core/constants.dart';

class LatestListWidget extends StatelessWidget {
  final String id;
  final String date;
  final String posterPath;
  final String seriesName;
  final String description;

  const LatestListWidget({
    Key? key,
    required this.id,
    required this.date,
    required this.posterPath,
    required this.seriesName,
    required this.description,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                posterPath,
              ),
            ),
          ),
          width: 300,
          height: 400,
        ),
        kHeight2,
        Padding(
          padding: const EdgeInsets.only(
            left: 15,
          ),
          child: Text(
            seriesName,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: const Color.fromARGB(255, 195, 148, 148),
              fontFamily: GoogleFonts.lobster().fontFamily,
            ),
          ),
        ),
        kHeight2,
        Text(
          date,
          style: kStyle,
        ),
        kHeight2,
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 10),
          child: Text(
            description,
            textAlign: TextAlign.start,
            style: kStyle,
          ),
        ),
        kHeight2,
      ],
    );
  }
}

class StackContain extends StatelessWidget {
  final List<String> imageList1;
  final List<String> imageList2;
  final List<String> imageList3;

  const StackContain({
    Key? key,
    required this.imageList1,
    required this.imageList2,
    required this.imageList3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LimitedBox(
      maxHeight: 250,
      child: Stack(
        children: [
          Positioned(
            bottom: 10,
            left: 20,
            child: Transform.rotate(
              angle: -10 * pi / 180,
              child: Container(
                width: 150,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(imageList1[0]),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            right: 30,
            child: Transform.rotate(
              angle: 12 * pi / 180,
              child: Container(
                width: 150,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(imageList2[1]),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 110,
            left: 105,
            top: 25,
            child: Container(
              width: 160,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(imageList3[2]),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
