import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_zone_app/domain/core/di/injectable.dart';
import 'package:movie_zone_app/screens/main_screen/main_screen.dart';
import 'application/bloc/search_bloc.dart';
import 'application/home_movies/home_movies_bloc.dart';
import 'application/tv_shows/tv_shows_bloc.dart';
import 'package:flutter/services.dart';

Future<void> main() async {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
        statusBarColor: Colors.blueGrey,
        systemNavigationBarColor: Colors.blueGrey),
  );
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (ctx) => getIt<TvShowsBloc>()),
        BlocProvider(create: (ctx) => getIt<HomeMoviesBloc>()),
        BlocProvider(create: (ctx) => getIt<SearchBloc>()),
      ],
      child: MaterialApp(
        home: MainScreen(),
        theme: ThemeData(
          fontFamily: GoogleFonts.montserrat().fontFamily,
          scaffoldBackgroundColor: Colors.white,
          textTheme: const TextTheme(
            bodyText2: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
