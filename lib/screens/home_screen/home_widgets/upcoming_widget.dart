import 'package:flutter/material.dart';

class UpComingMovies extends StatelessWidget {
  final String imageList;
  const UpComingMovies({
    Key? key,
    required this.imageList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage(imageList),
        ),
      ),
    );
  }
}

class UpComingMoviesCard extends StatelessWidget {
  final List<String> posterList;
  const UpComingMoviesCard({Key? key, required this.posterList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LimitedBox(
      maxHeight: 450,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(
          posterList.length,
          (index) => Row(
            children: [
              UpComingMovies(
                imageList: posterList[index],
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
