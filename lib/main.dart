import 'package:basketball_score_tracker/player.dart';
import 'package:basketball_score_tracker/player_detail_screen.dart';
import 'package:basketball_score_tracker/player_list_screen.dart';
import 'package:basketball_score_tracker/splash_screen.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'onboarding_screen.dart';


void main() {
  runApp(BasketballTrackerApp());
}

class BasketballTrackerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Basketball Score Tracker',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.orange,
          foregroundColor: Colors.white,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/onboarding': (context) => OnboardingScreen(),
        '/home': (context) => HomeScreen(),
        '/players': (context) => PlayerListScreen(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/player_detail') {
          final player = settings.arguments as Player;
          return MaterialPageRoute(
            builder: (context) => PlayerDetailScreen(player: player),
          );
        }
        return null;
      },
    );
  }
}