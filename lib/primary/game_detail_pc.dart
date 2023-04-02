import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:gamify/models/game.dart';
import 'package:gamify/providers/game_provider_pc.dart';

class GameDetailsPc extends StatelessWidget {
  static const routeName = '/gamedetailpc';

  @override
  Widget build(BuildContext context) {
    final gameProviderCons = Provider.of<GameProviderPc>(context);
    final selectedGame = gameProviderCons.selectedGame;
    return Scaffold(
      backgroundColor: Color(0xFF19507E),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(selectedGame!.name, style: TextStyle(fontFamily: "Gotham Bold")),
        leading: IconButton(
          icon: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Colors.white,
              size: 20),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(selectedGame.pics, fit: BoxFit.cover, height: 300,),
              SizedBox(height: 16),
              Text(selectedGame.name, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white, fontFamily: "Gotham Bold"), textAlign: TextAlign.justify,),
              SizedBox(height: 16),
              Text(selectedGame.desc, style: TextStyle(fontSize: 18, color: Colors.white, fontFamily: "Gotham Light"), textAlign: TextAlign.justify),
              SizedBox(height: 16),
              Text('Genre: ${selectedGame.genre}', style: TextStyle(fontSize: 18, color: Colors.white, fontFamily: "Gotham Light"), textAlign: TextAlign.justify),
              SizedBox(height: 16),
              Text('Rating: ${selectedGame.rating}', style: TextStyle(fontSize: 18, color: Colors.white, fontFamily: "Gotham Light"), textAlign: TextAlign.justify),
              SizedBox(height: 16),
              Text('Release Date: ${selectedGame.releaseDate}', style: TextStyle(fontSize: 18, color: Colors.white, fontFamily: "Gotham Light"), textAlign: TextAlign.justify),
            ]
        ),
      ),
    );
  }
}