import 'package:flutter/material.dart';

class CommonCard extends StatelessWidget {
  const CommonCard({Key? key, required this.posterList}) : super(key: key);
  final List<String> posterList;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.only(left: 5),
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext ctx, int value) {
          return CommonWidget(
            posterPath: posterList[value],
            width: 360,
            radius: 15,
          );
        },
        separatorBuilder: (BuildContext ctx, int value) =>
            const SizedBox(width: 5),
        itemCount: posterList.length,
      ),
    );
  }
}

class CommonWidget extends StatelessWidget {
  const CommonWidget({
    Key? key,
    required this.width,
    required this.radius,
    required this.posterPath,
  }) : super(key: key);
  final double width;
  final double radius;
  final String posterPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 247, 247, 247),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage(
            posterPath,
          ),
        ),
        borderRadius: BorderRadius.circular(radius),
      ),
    );
  }
}
