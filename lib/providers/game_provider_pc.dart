import 'package:flutter/material.dart';
import 'package:gamify/models/game.dart';
import 'package:provider/provider.dart';

class GameProviderPc extends ChangeNotifier {
  List<Game> _gamespc = [
    Game(
      name: 'Red Dead Redemption 2',
      pics: 'assets/images/rdr2.jpg',
      desc: 'Arthur Morgan’s sprawling tale of loyalty, conviction, and the price of infamy is only the beginning of Red Dead Redemption 2. The marvelous PC port overhauled and further enhanced the gorgeous wild western atmosphere of Rockstars most recent open-world adventure and added even more activities, unlockables, and impossibly fine details to its expansive map. Its possibly one of the biggest and best single-player PC games ever and it has an extensive multiplayer mode too. The potential for hijinks within its enormous sandbox of towns, outlaws, and wildlife was already nearly limitless, but the PC version factors in new missions, treasures, gear, and more layered on top of the already 60+ hours of story content in the base game. That’s not even counting all the multiplayer bells and whistles included in Red Dead Online, to say nothing of the ability to expand and customize with mods. RDR2 on PC is handily a must-play for anyone with a rig beefy enough to run it. Red Dead 2 cracked the top five on our updated list of the best open-world games. In just four years, its also earned a spot on the list of best-selling video games of all time.',
      genre: 'Action-Adventure',
      rating: 4.8,
      releaseDate: DateTime(2017, 3, 3),
    ),
    Game(
      name: 'Forza Horizon 5',
      pics: 'assets/images/fh5.jpg',
      desc: 'Driving games are a long-running, important, and respected force in the story of video games, but it takes a special one to completely seize the imaginations of both the car-obsessed and the automotively illiterate so successfully. By that measure, Forza Horizon 5 is truly special. A slick and speedy smorgasbord of total driving freedom built on the back of what’s already been the open-world racing series to beat for nearly a decade, Forza Horizon 5 broke through in a way not even its excellent predecessors managed. This massive, MMO-inspired racer is the prettiest, most varied, most feature-filled, and most customisable Forza Horizon game ever, and it’s one that’s suitable for so many different types of players. Whether you want to agonise over car builds and carve away milliseconds from your race times, or just want to cruise around and crash into a cactus or two (hundred), it has you covered. Forza Horizon 5’s Rally Adventure expansion, which comes with a new rally career mode, comes out on March 29. Also during the first-ever Xbox Developer Direct, Turn 10 Studios revealed the next game franchise is Forza Motorsport and it will feature more than 500 cars and 800 unique upgrades.',
      genre: 'Platformer',
      rating: 4.7,
      releaseDate: DateTime(2017, 10, 27),
    ),
    Game(
      name: 'Apex Legends',
      pics: 'assets/images/apex.png',
      desc: 'Apex Legends surprise launched in February 2019 and it’s been raising the bar for battle royales ever since. Inspired by the gunplay and movement from Respawns acclaimed Titanfall 2, Apex also implemented Overwatch-style character abilities, which made it feel completely distinct from the other major players in the genre. While Apex is out on PlayStation, Xbox, and now Switch and mobile, on PC Apex feels the most fluid and natural as it gives us the freedom to fully capitalize on the range of movement it offers. It also has Apex Arenas as a permanent mode that emulates round-based matches like those in Valorant, where you can buy your abilities and weapons before each round and features 3v3 matchups. So even if battle royales aren’t your speed, there’s a way for you to get in and enjoy the action. And with its consistent pace of updates every three to four months, Apex Legends stands out as one of the best free-to-play PC games, year after year. Apex Legends Season 16: Revelry is now available. You can get your hands on the Nemesis Burst AR, compete in Team Deathmode, and experience a new class system.',
      genre: 'Life simulation',
      rating: 4.6,
      releaseDate: DateTime(2020, 3, 20),
    ),
    Game(
      name: 'Valorant',
      pics: 'assets/images/valo.jpg',
      desc: 'Apex Legends surprise launched in February 2019 and it’s been raising the bar for battle royales ever since. Inspired by the gunplay and movement from Respawns acclaimed Titanfall 2, Apex also implemented Overwatch-style character abilities, which made it feel completely distinct from the other major players in the genre. While Apex is out on PlayStation, Xbox, and now Switch and mobile, on PC Apex feels the most fluid and natural as it gives us the freedom to fully capitalize on the range of movement it offers. It also has Apex Arenas as a permanent mode that emulates round-based matches like those in Valorant, where you can buy your abilities and weapons before each round and features 3v3 matchups. So even if battle royales aren’t your speed, there’s a way for you to get in and enjoy the action. And with its consistent pace of updates every three to four months, Apex Legends stands out as one of the best free-to-play PC games, year after year. Apex Legends Season 16: Revelry is now available. You can get your hands on the Nemesis Burst AR, compete in Team Deathmode, and experience a new class system.',
      genre: 'Action-Adventure',
      rating: 4.8,
      releaseDate: DateTime(2017, 3, 3),
    ),
    Game(
      name: 'Final Fantasy XIV Online',
      pics: 'assets/images/ffxiv.jpg',
      desc: 'In short, Final Fantasy XIV is not just the best MMO you can play right now, it’s a fantastic Final Fantasy game in its own right. Through its relaunch and subsequent four expansions, FFXIV has slowly morphed from a relatively generic good-versus-evil plot into a sprawling, political, and fantastical thriller. The latest expansion, Endwalker, brings a satisfying conclusion to the game’s now 8+ year storyline, returning some familiar faces, settling old scores, and of course saving the world from the greatest calamity yet. Don’t be scared away by the fact that it’s online. Despite being an MMO, Square-Enix has streamlined things so much that, if you don’t want to, you really don’t have to play with other people. Story missions are intended to be tackled solo, and even instanced dungeons now have an option for you to enter with computer-controlled party members instead of forcing you into a group with strangers. Of course, it’s also a fully-fleshed MMO with end-game raiding that ranges from totally accessible to maddeningly punishing. FF14 was named the Best Ongoing Game of 2022.',
      genre: 'Platformer',
      rating: 4.7,
      releaseDate: DateTime(2017, 10, 27),
    ),
    Game(
      name: 'Elden Ring',
      pics: 'assets/images/elden.jpg',
      desc: 'In just the few short months since its release, Elden Ring’s reputation has only grown, which is insane to even think about considering that its reputation right when it came out was one of the highest reviewed games of all time. It’s all deserved praise, because Elden Ring truly is a monumental achievement in the open world genre. Its world is a wonder to explore, with memorable experiences, valuable rewards, and imposing boss fights covering nearly every square inch of its absolutely enormous map. The only thing that holds it back on this list is the fact that it still struggles a bit performance-wise on the PC. But that doesn’t stop it from being an easy pick for our top five best PC games of all time.Elden Ring is one of the best-reviewed games in modern history. It was crowned Game of the Year by IGN and The Game Awards.',
      genre: 'Life simulation',
      rating: 4.6,
      releaseDate: DateTime(2020, 3, 20),
    ),
  ];

  Game? _selectedGame;

  List<Game> get games => _gamespc;

  Game? get selectedGame => _selectedGame;

  set selectedGame(Game? game) {
    _selectedGame = game;
    notifyListeners();
  }

  void addGame(Game game) {
    _gamespc.add(game);
    notifyListeners();
  }

  void removeGame(Game game) {
    _gamespc.remove(game);
    notifyListeners();
  }

  void sortGamesByRating() {
    _gamespc.sort((a, b) => b.rating.compareTo(a.rating));
    notifyListeners();
  }

  void sortGamesByReleaseDate() {
    _gamespc.sort((a, b) => b.releaseDate.compareTo(a.releaseDate));
    notifyListeners();
  }
}