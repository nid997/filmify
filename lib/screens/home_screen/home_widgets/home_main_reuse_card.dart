import 'package:flutter/material.dart';
import '../../../core/constants.dart';

class HomeReuseCard extends StatelessWidget {
  final List<String> posterList;
  const HomeReuseCard({Key? key, required this.posterList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LimitedBox(
      maxHeight: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(
          posterList.length,
          (index) => Row(
            children: [
              MainCard(
                imageList: posterList[index],
              ),
              cHomeWidth,
            ],
          ),
        ),
      ),
    );
  }
}

class MainCard extends StatelessWidget {
  final String imageList;
  const MainCard({Key? key, required this.imageList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage(
            imageList,
          ),
        ),
      ),
    );
  }
}
