import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_zone_app/core/constants.dart';
import 'package:movie_zone_app/screens/home_screen/home_widgets/main_title_widget.dart';
import '../../../application/bloc/search_bloc.dart';
import '../../../core/string.dart';

class SearchIdle extends StatelessWidget {
  const SearchIdle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const MainTitle(title: "Top Searches"),
          Expanded(
            child: RefreshIndicator(
              color: cRefreshWhiteColor,
              backgroundColor: cRefreshBlackColor,
              onRefresh: () async {
                BlocProvider.of<SearchBloc>(context).add(const Initialise());
              },
              child: BlocBuilder<SearchBloc, SearchState>(
                builder: (context, state) {
                  if (state.isLoading) {
                    return Column(
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
                  } else if (state.idleList.isEmpty) {
                    return const Center(
                      child: Text(
                        "Movie list is empty.",
                        style: TextStyle(
                          color: cErrorBlackColor,
                        ),
                      ),
                    );
                  }

                  return ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (BuildContext ctx, int value) {
                      final movie = state.idleList[value];
                      return TopSearchList(
                          title: movie.originalTitle ?? "No Title Provided",
                          imageUrl: "$imageAppendUrl${movie.posterPath}");
                    },
                    separatorBuilder: (BuildContext ctx, int value) => cHeight1,
                    itemCount: state.idleList.length,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TopSearchList extends StatelessWidget {
  final String imageUrl;
  final String title;
  const TopSearchList({Key? key, required this.imageUrl, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 200,
          height: 125,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                imageUrl,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Text(
            title,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 15,
              fontWeight: FontWeight.bold,
              fontFamily: GoogleFonts.breeSerif().fontFamily,
            ),
          ),
        ),
      ],
    );
  }
}
