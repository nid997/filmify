import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_zone_app/application/home_movies/home_movies_bloc.dart';
import 'package:movie_zone_app/core/constants.dart';
import 'package:movie_zone_app/core/string.dart';
import 'package:movie_zone_app/screens/home_screen/home_widgets/main_title_widget.dart';
import '../tv_screen/widget/latest_list_widget.dart';
import 'home_widgets/home_main_reuse_card.dart';
import 'home_widgets/number_card_.dart';
import 'home_widgets/upcoming_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      BlocProvider.of<HomeMoviesBloc>(context).add(const GetUpComing());
      BlocProvider.of<HomeMoviesBloc>(context).add(const GetNowPlaying());
      BlocProvider.of<HomeMoviesBloc>(context).add(const GetTopRated());
      BlocProvider.of<HomeMoviesBloc>(context).add(const GetPopular());
    });
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(75),
        child: AppBar(
            shadowColor: const Color.fromARGB(255, 86, 186, 236),
            shape: const RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(25))),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "film",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      letterSpacing: -3),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    "ify",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        letterSpacing: -2,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
            centerTitle: true,
            backgroundColor: Colors.blueGrey),
      ),
      body: RefreshIndicator(
        backgroundColor: cRefreshBlackColor,
        color: cRefreshWhiteColor,
        onRefresh: () async {
          BlocProvider.of<HomeMoviesBloc>(context).add(const GetUpComing());
          BlocProvider.of<HomeMoviesBloc>(context).add(const GetNowPlaying());
          BlocProvider.of<HomeMoviesBloc>(context).add(const GetTopRated());
          BlocProvider.of<HomeMoviesBloc>(context).add(const GetPopular());
        },
        child: BlocBuilder<HomeMoviesBloc, HomeMovieState>(
          builder: (context, state) {
            if (state.isLoading) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CircularProgressIndicator(
                      backgroundColor: cErrorBlackColor,
                      color: cGreyColor,
                      strokeWidth: 2,
                    ),
                    Text(
                      "Loading",
                      style: TextStyle(
                        color: cErrorBlackColor,
                      ),
                    ),
                  ],
                ),
              );
            }
            if (state.hasError) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Error while loading data.",
                      style: TextStyle(
                        color: cErrorBlackColor,
                      ),
                    ),
                    Icon(
                      Icons.error,
                      color: cErrorBlackColor,
                    ),
                  ],
                ),
              );
            }

            final _upComingMovie = state.upComingMovies.map((m) {
              return "$imageAppendUrl${m.posterPath}";
            }).toList();
            final _nowPlayingMovie = state.nowPlayingMovies.map((m) {
              return "$imageAppendUrl${m.posterPath}";
            }).toList();
            final _popularMovies = state.popularMovies.map((m) {
              return "$imageAppendUrl${m.posterPath}";
            }).toList();
            final _topRated = state.topRatedMovies.map((m) {
              return "$imageAppendUrl${m.posterPath}";
            }).toList();

            return ListView(
              padding: const EdgeInsets.only(left: 10),
              children: [
                cHeight1,
                if (_upComingMovie.length >= 20)
                  StackContain(
                    imageList1: _upComingMovie,
                    imageList2: _upComingMovie,
                    imageList3: _upComingMovie,
                  ),
                cHeight,
                const MainTitle(
                  title: "Upcoming Movies",
                  icon: Icons.arrow_circle_right,
                ),
                cHeight1,
                if (_upComingMovie.length >= 20)
                  UpComingMoviesCard(
                      posterList: _upComingMovie.sublist(10, 20)),
                cHeight,
                const MainTitle(
                  title: "Now Playing",
                  icon: Icons.arrow_circle_right,
                ),
                cHeight1,
                if (_nowPlayingMovie.length >= 10)
                  HomeReuseCard(
                    posterList: _nowPlayingMovie,
                  ),
                cHeight,
                const MainTitle(
                  title: "Top 10 Movies",
                  icon: Icons.arrow_circle_right,
                ),
                cHeight1,
                if (_topRated.length >= 10)
                  NumberWidget(
                    posterList: _topRated.sublist(0, 10),
                  ),
                cHeight,
                const MainTitle(
                  title: "Popular Movie's",
                  icon: Icons.arrow_circle_right,
                ),
                cHeight1,
                if (_popularMovies.length >= 20)
                  HomeReuseCard(posterList: _popularMovies.sublist(10, 20)),
                const SizedBox(
                  height: 70,
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
