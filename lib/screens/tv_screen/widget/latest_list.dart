import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:movie_zone_app/core/string.dart';
import 'package:movie_zone_app/screens/tv_screen/widget/latest_list_widget.dart';
import '../../../application/tv_shows/tv_shows_bloc.dart';
import '../../../core/constants.dart';

class LatestList extends StatelessWidget {
  const LatestList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      BlocProvider.of<TvShowsBloc>(context).add(const GetTvShows());
    });
    return RefreshIndicator(
      color: Colors.white,
      backgroundColor: Colors.black,
      onRefresh: () async {
        BlocProvider.of<TvShowsBloc>(context).add(const GetTvShows());
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
                  )
                ],
              ),
            );
          } else if (state.latestList.isEmpty) {
            return const Center(
              child: Text(
                "No latest tv shows found",
                style: TextStyle(
                  color: cErrorBlackColor,
                ),
              ),
            );
          } else {
            return ListView.separated(
              padding: const EdgeInsets.only(top: 10, bottom: 75),
              shrinkWrap: true,
              itemBuilder: (BuildContext ctx, int v) {
                final series = state.latestList[v];
                final date = DateTime.tryParse(series.firstAirDate!);
                final _newdate = DateFormat.yMMMd().format(date!);

                return LatestListWidget(
                    id: series.id.toString(),
                    date: _newdate,
                    posterPath: "$imageAppendUrl${series.posterPath}",
                    seriesName: (series.originalName == "")
                        ? "No title found"
                        : series.originalName ?? "",
                    description: (series.overview == '')
                        ? 'No description found'
                        : series.overview ?? '');
              },
              separatorBuilder: (BuildContext ctx, int v) {
                return const Divider(
                  height: 50,
                  color: Colors.blueGrey,
                  thickness: 1,
                  indent: 25,
                  endIndent: 25,
                );
              },
              itemCount: state.latestList.length,
            );
          }
        },
      ),
    );
  }
}
