import 'package:flutter/material.dart';
import 'package:gamify/primary/game_detail_cons.dart';
import 'package:gamify/primary/game_list_cons.dart';
import 'package:gamify/splash/splash_screen.dart';
import 'package:provider/provider.dart';
import 'package:gamify/providers/game_provider_cons.dart';
import 'package:gamify/primary/game_list_pc.dart';
import 'package:gamify/primary/game_detail_pc.dart';
import 'package:gamify/providers/game_provider_pc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<GameProviderCons>(
          create: (_) => GameProviderCons(),
        ),
        ChangeNotifierProvider<GameProviderPc>(
          create: (_) => GameProviderPc(),
        ),
      ],
      child: MaterialApp(
        title: 'Gamify',
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
        routes: {
          GameListCons.routeName: (ctx) => GameListCons(),
          GameListPc.routeName: (ctx) => GameListPc(),
          GameDetailsCons.routeName: (ctx) => GameDetailsCons(),
          GameDetailsPc.routeName: (ctx) => GameDetailsPc(),
        },
      ),
    );
  }
}