import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:gamify/models/game.dart';
import 'package:gamify/providers/game_provider_pc.dart';
import 'package:gamify/primary/game_detail_pc.dart';

class GameListPc extends StatelessWidget {
  static const routeName = '/gamespc';

  @override
  Widget build(BuildContext context) {
    final gameProviderPc = Provider.of<GameProviderPc>(context);
    return Scaffold(
      backgroundColor: Color(0xFF19507E),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text('PC Games', style: TextStyle(fontFamily: "Gotham Bold")),
        leading: IconButton(
          icon: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Colors.white,
              size: 20),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(16),
        itemCount: gameProviderPc.games.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (ctx, i) {
          final game = gameProviderPc.games[i];
          return GestureDetector(
            onTap: () {
              gameProviderPc.selectedGame = game;
              Navigator.of(context).pushNamed(GameDetailsPc.routeName);
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: GridTile(
                child: Image.asset(game.pics, fit: BoxFit.cover),
                footer: GridTileBar(
                  backgroundColor: Colors.black45,
                  title: Text(game.name, textAlign: TextAlign.center, style: TextStyle(fontFamily: "Gotham Bold")),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}