import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

ValueNotifier<int> indexChange = ValueNotifier(0);

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexChange,
      builder: (BuildContext ctx, int newIndex, _) {
        return CurvedNavigationBar(
          animationCurve: Curves.easeInOutCubic,
          animationDuration: const Duration(milliseconds: 150),
          height: 55,
          buttonBackgroundColor: Colors.grey,
          color: Colors.blueGrey,
          backgroundColor: Colors.transparent,
          onTap: (value) => indexChange.value = value,
          index: newIndex,
          items: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.movie),
                Text(
                  "Movie",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.search_outlined),
                Text(
                  "Search",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.tv),
                Text(
                  "Tv shows",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                  ),
                )
              ],
            )
          ],
        );
      },
    );
  }
}
