import 'package:flutter/material.dart';
import 'package:movie_zone_app/screens/home_screen/home_screen1.dart';
// import 'package:movie_zone_app/screens/home_screen/home_screen.dart';
import 'package:movie_zone_app/screens/main_screen/bottom_navigation_widget.dart';
import 'package:movie_zone_app/screens/search_screeen/search_screen.dart';
import 'package:movie_zone_app/screens/tv_screen/tv_screen.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  final _pages = [
   const HomeScreen(),
    SearchScreen(),
    const TvScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      child: SafeArea(
        top: false,
        child: Scaffold(
          extendBody: true,
          body: ValueListenableBuilder(
            valueListenable: indexChange,
            builder: (BuildContext ctx, int index, _) {
              return _pages[index];
            },
          ),
          bottomNavigationBar: const BottomNavigationWidget(),
        ),
      ),
    );
  }
}
