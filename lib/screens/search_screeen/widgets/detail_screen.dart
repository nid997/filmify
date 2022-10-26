

import 'package:flutter/material.dart';
import 'package:movie_zone_app/core/constants.dart';



class DetailScreen extends StatelessWidget {
  final String decription;
  final String title;
  final String date;
  final String imageurl;
  final String id;
  const DetailScreen({
    Key? key,
    required this.title,
    required this.id,
    required this.decription,
    required this.date,
    required this.imageurl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: TextButton.icon(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    label: const Text(
                      "Go back",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: SizedBox(
                    height: 650,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 25,
                      ),
                      child: Stack(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 218, 215, 215),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(25),
                                  topRight: Radius.circular(25)),
                            ),
                            child: const Center(
                              child: Text(
                                "No image found",
                                style: TextStyle(
                                  color: cErrorBlackColor,
                                ),
                              ),
                            ),
                            width: 300,
                            height: 350,
                          ),
                          Container(
                            width: 300,
                            height: 350,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(25),
                                  topRight: Radius.circular(25)),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(imageurl),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 50,
                            child: Container(
                              color: const Color.fromARGB(255, 242, 240, 240)
                                  .withOpacity(0.5),
                              width: 300,
                              height: 250,
                              child: Column(
                                children: [
                                  kHeight2,
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 5,
                                      right: 5,
                                    ),
                                    child: Text(
                                      title,
                                      style: kStyle2,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  kHeight1,
                                  Text(
                                    date,
                                    style: kStyle,
                                  ),
                                  kHeight2,
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 10,
                                      right: 10,
                                    ),
                                    child: Text(
                                      decription,
                                      style: kStyle,
                                      maxLines: 10,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
