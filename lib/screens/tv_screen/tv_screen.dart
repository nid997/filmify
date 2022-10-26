import 'package:flutter/material.dart';
import 'package:movie_zone_app/screens/tv_screen/widget/latest_list.dart';
import 'package:movie_zone_app/screens/tv_screen/widget/popular_list.dart';

class TvScreen extends StatelessWidget {
  const TvScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      animationDuration: const Duration(milliseconds: 100),
      length: 2,
      child: Scaffold(
        extendBody: true,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(120),
          child: AppBar(
            backgroundColor: Colors.blueGrey,
            title: const Text(
              "TV Shows",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 30, letterSpacing: -1),
            ),
            bottom: TabBar(
              padding: const EdgeInsets.all(10),
              isScrollable: true,
              labelColor: Colors.black,
              labelStyle:
                  const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              unselectedLabelColor: Colors.white,
              unselectedLabelStyle:
                  const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              indicator: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              tabs: const [
                Tab(
                  text: "Latest Tv Shows",
                ),
                Tab(
                  text: "Popular  Tv Shows",
                ),
              ],
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            LatestList(
              key: Key("latest_list"),
            ),
            PopularList(
              key: Key("popular_list"),
            ),
          ],
        ),
      ),
    );
  }
}
