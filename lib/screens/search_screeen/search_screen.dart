import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:movie_zone_app/core/constants.dart';
import 'package:movie_zone_app/domain/core/debouncer/debouncer.dart';
import 'package:movie_zone_app/screens/search_screeen/widgets/search_idle_list.dart';
import 'package:movie_zone_app/screens/search_screeen/widgets/search_result_list.dart';

import '../../application/bloc/search_bloc.dart';


class SearchScreen extends StatelessWidget {
  SearchScreen({Key? key}) : super(key: key);
  final _debouncer = Debouncer(milliseconds: 1 * 1000);
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      BlocProvider.of<SearchBloc>(context).add(const Initialise());
    });
    return Scaffold(
      extendBody: true,
      body: Padding(
        padding:
            const EdgeInsets.only(left: 10, top: 40, bottom: 25, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CupertinoSearchTextField(
              backgroundColor: Colors.grey.withOpacity(0.3),
              style: const TextStyle(),
              prefixIcon: const Icon(
                CupertinoIcons.search,
                color: cGreyColor,
              ),
              suffixIcon: const Icon(
                CupertinoIcons.xmark_circle_fill,
                color: cGreyColor,
              ),
              onChanged: (value) {
                if (value.isEmpty) {
                  return;
                }
                _debouncer.run(() {
                  BlocProvider.of<SearchBloc>(context).add(
                    SearchMovie(movieQuery: value),
                  );
                });
              },
            ),
            kHeight2,
            Expanded(
              child: BlocBuilder<SearchBloc, SearchState>(
                builder: (context, state) {
                  if (state.searchResult.isEmpty) {
                    return const SearchIdle();
                  } else {
                    return const SearchResultList();
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
