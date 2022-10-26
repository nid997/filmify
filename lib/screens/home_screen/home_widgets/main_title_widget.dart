import 'package:flutter/material.dart';
import 'package:movie_zone_app/core/constants.dart';

class MainTitle extends StatelessWidget {
  final String title;
  final IconData? icon;
  const MainTitle({Key? key, required this.title, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: cText,
        ),
        const SizedBox(
          width: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Icon(
            icon,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
