import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';

class NumberCardList extends StatelessWidget {
  final String imageList;
  const NumberCardList({Key? key, required this.index, required this.imageList})
      : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              height: 250,
              width: 15,
            ),
            Container(
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: NetworkImage(
                    imageList,
                  ),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          top: -17.5,
          right: 125,
          left: 0,
          child: BorderedText(
            strokeColor: Colors.black,
            strokeWidth: 5,
            child: Text(
              "${index + 1}",
              style: const TextStyle(
                fontSize: 75,
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}

class NumberWidget extends StatelessWidget {
  final List<String> posterList;
  const NumberWidget({Key? key, required this.posterList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LimitedBox(
      maxHeight: 225,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(
          posterList.length,
          (index) => NumberCardList(
            index: index,
            imageList: posterList[index],
          ),
        ),
      ),
    );
  }
}
