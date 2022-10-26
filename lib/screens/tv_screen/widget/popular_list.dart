import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_zone_app/core/constants.dart';

import '../../../application/tv_shows/tv_shows_bloc.dart';
import '../../../core/string.dart';
import '../../../widgets/common_widget/coming_soon_widget.dart';

class PopularList extends StatelessWidget {
  const PopularList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      BlocProvider.of<TvShowsBloc>(context).add(const GetPopularShows());
    });
    return RefreshIndicator(
      color: cRefreshWhiteColor,
      backgroundColor: cRefreshBlackColor,
      onRefresh: () async {
        BlocProvider.of<TvShowsBloc>(context).add(const GetPopularShows());
      },
      child: BlocBuilder<TvShowsBloc, TvShowState>(
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
                  Icon(Icons.error)
                ],
              ),
            );
          } else if (state.popularShows.isEmpty) {
            return const Center(
              child: Text(
                "No Popular tv shows found.",
                style: TextStyle(
                  color: cErrorBlackColor,
                ),
              ),
            );
          } else {
            return GridView.count(
              padding:
                  const EdgeInsets.only(top: 10, left: 5, right: 5, bottom: 75),
              shrinkWrap: true,
              childAspectRatio: 1.5 / 2.5,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              crossAxisCount: 2,
              children: List.generate(
                state.popularShows.length,
                (index) {
                  final series = state.popularShows[index];

                  if (series.id == null) {
                    return const SizedBox();
                  }
                  return CommonWidget(
                    width: 0,
                    radius: 15,
                    posterPath: "$imageAppendUrl${series.posterPath}",
                  );
                },
              ),
            );
          }
        },
      ),
    );
  }
}
