import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_zone_app/core/constants.dart';
import 'package:movie_zone_app/screens/home_screen/home_widgets/main_title_widget.dart';
import 'package:movie_zone_app/screens/search_screeen/widgets/detail_screen.dart';
import '../../../application/bloc/search_bloc.dart';
import '../../../core/string.dart';
import '../../../widgets/common_widget/coming_soon_widget.dart';

class SearchResultList extends StatelessWidget {
  const SearchResultList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MainTitle(
          title: "Search Results",
        ),
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
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
                        style: TextStyle(color: cRefreshBlackColor),
                      ),
                    ],
                  ),
                );
              } else if (state.hasError) {
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
                      )
                    ],
                  ),
                );
              } else if (state.searchResult.isEmpty) {
                return const Center(
                  child: Text(
                    "No results found.",
                    style: TextStyle(
                      color: cErrorBlackColor,
                    ),
                  ),
                );
              }
              return GridView.count(
                childAspectRatio: 1 / 1.5,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                crossAxisCount: 3,
                children: List.generate(
                  state.searchResult.length,
                  (index) {
                    final movie = state.searchResult[index];
                    return InkWell(
                      splashColor: Colors.white,
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: ((context) {
                              return DetailScreen(
                                  title: (movie.originalTitle == "" ||
                                          movie.originalTitle == null)
                                      ? "No Title"
                                      : movie.originalTitle!,
                                  id: movie.id.toString(),
                                  date: (movie.releaseDate == "" ||
                                          movie.releaseDate == null)
                                      ? "No release date found"
                                      : movie.releaseDate!,
                                  decription: (movie.overview == "" ||
                                          movie.overview == null)
                                      ? "No description found"
                                      : movie.overview!,
                                  imageurl:
                                      "$imageAppendUrl${movie.posterPath}");
                            }),
                          ),
                        );
                      },
                      child: CommonWidget(
                        width: 10,
                        radius: 10,
                        posterPath: "$imageAppendUrl${movie.posterPath}",
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ),
        kHeight2,
      ],
    );
  }
}
