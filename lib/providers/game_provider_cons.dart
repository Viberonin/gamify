import 'package:flutter/material.dart';
import 'package:gamify/models/game.dart';
import 'package:provider/provider.dart';

class GameProviderCons extends ChangeNotifier {
  List<Game> _gamescons = [
    Game(
      name: 'Kingdom Hearts 3',
      pics: 'assets/images/kh3.jpg',
      desc: 'Dive into an action-packed adventure with the latest instalment of Square Enixs and Disneys action role-playing series. Kingdom Hearts follows Sora, a Keyblade wielder, as he sets out with Donald and Goofy to stop the Heartless invasion. Along the way the heroic trio will team up with beloved Disney and Pixar characters as they embark on unforgettable adventures. KINGDOM HEARTS III tells the story of the power of friendship and light vs. darkness as Sora and his friends embark on a perilous adventure. Set in a vast array of Disney and Pixar worlds, KINGDOM HEARTS follows the journey of Sora, an unknowing heir to a spectacular power. Sora is joined by Donald Duck and Goofy to stop an evil force known as the Heartless from invading and overtaking the universe. Sora, Donald, and Goofy unite with iconic Disney-Pixar characters old and new to overcome tremendous challenges and persevere against the darkness threatening their worlds. Embark on an adventure that spans the Disney universe: Travel across Disney and Pixar worlds to protect them from the Heartless invasion, and befriend and join heroes from Toy Story, Monsters, Inc., Big Hero 6, Tangled, Hercules, and more!',
      genre: 'Action-Adventure',
      rating: 4.8,
      releaseDate: DateTime(2017, 3, 3),
    ),
    Game(
      name: 'Deathloop',
      pics: 'assets/images/deathloop.jpg',
      desc: 'Take on the role of Colt as you search for a way to put an end to a time loop trapping Blackreef while being hunted by the island’s inhabitants. Use powerful weapons and abilities to take out eight key targets across the stunning and chaotic island before the day resets. Lurking in the shadows is rival assassin Julianna whose sole mission is to take Colt out and keep the loop going. Learn from each cycle, try new paths and approaches to break the loop once and for all. "Deathloop takes the ‘immersive sim’ formula that developer Arkane Studios so successfully honed with Dishonoured and Prey, and spices it up via the addition of a daring time loop structure and tense ‘invasion’ mechanic. Hip, sophisticated and hugely replayable – this is a unique shooter that sucks you in, spins you round and keeps you coming back for more."',
      genre: 'Platformer',
      rating: 4.7,
      releaseDate: DateTime(2017, 10, 27),
    ),
    Game(
      name: 'God of War',
      pics: 'assets/images/gow.jpg',
      desc: 'At once cinematic and visceral, this is a coming-of-age journey through the harsh Norse wilds – for both father and son. Join forces in combat with Kratos and Atreus in God of War. Combine this with their deeply personal odyssey together, and by the time credits roll, you’ll be right there with them on the highest peak in all the Realms. Kratos is a father again. As mentor and protector to Atreus, a son determined to earn his respect, he is forced to deal with and control the rage that has long defined him while out in a very dangerous world with his son. His vengeance against the Gods of Olympus behind him, Kratos now lives in the realm of Norse deities and monsters. It’s in this harsh, unforgiving world that he must fight to survive, and not only teach his son to do the same… but also prevent him from repeating the Ghost of Sparta’s bloodstained mistakes. This staggering reimagining of God of War combines all the hallmarks of the iconic series – brutal combat, epic boss fights, and breathtaking scale – and fuses them with a powerful and moving narrative that re-establishes Kratos’ world.',
      genre: 'Life simulation',
      rating: 4.6,
      releaseDate: DateTime(2020, 3, 20),
    ),
    Game(
      name: 'Ghost of Tsushima',
      pics: 'assets/images/got.jpg',
      desc: 'Lead a one-man resistance on the shores of Tsushima Island, forging the honourable techniques of the Samurai with underhand guerrilla tactics. Follow the guiding winds through a jaw-droppingly gorgeous feudal Japan. You’re unlikely to find another game that lets you dispatch a group of marauding Mongols then stop to compose a haiku about it. Uncover the hidden wonders of Tsushima in this open-world action adventure from Sucker Punch Productions and PlayStation Studios, available for PS5 and PS4. Forge a new path and wage an unconventional war for the freedom of Tsushima. Challenge opponents with your katana, master the bow to eliminate distant threats, develop stealth tactics to ambush enemies and explore a new story on Iki Island. Venture beyond the battlefield to experience feudal Japan like never before. In this open-world action adventure, you’ll roam vast countrysides and expansive terrain to encounter rich characters, discover ancient landmarks, and uncover the hidden beauty of Tsushima. Explore meticulously-crafted regions showcasing diversity of life on the sprawling island—from billowing fields and tranquil shrines to ancient forests, villages and stark mountainscapes. Find peace in the quiet moments of natural harmony and solace in the moments you’ll share with the people you help along the way.',
      genre: 'Action-Adventure',
      rating: 4.8,
      releaseDate: DateTime(2017, 3, 3),
    ),
    Game(
      name: 'Dragon Quest XI S Echoes of an Elusive Age - Definitive Edition',
      pics: 'assets/images/dq.jpg',
      desc: 'Experience the latest critically acclaimed adventure in the long-running Dragon Quest franchise, now featuring a new orchestral score and a special 2D graphics mode. Take on the role of The Luminary - a chosen warrior who must strive to restore balance and peace to world that vows to hunt him down. With a unique band of loyal companions, work to overthrow dark forces and a plot to plunge the world into chaos. The Definitive Edition includes all the content from the original release of the acclaimed DRAGON QUEST XI, and adds extra character-specific scenarios, the choice of playing with the original soundtrack or a grand orchestral version of the music, the ability to switch between 2D and 3D graphic modes, a Japanese voice-acting option, and much more. A young man, about to participate in his village’s coming of age ceremony, travels to a sacred stone alongside his childhood friend. After a series of unexpected events, this intrepid adventurer learns he is the reincarnation of a legendary hero from a forgotten age. Fleeing from his pursuers, the hero assembles a band of endearing adventurers who believe he is actually The Luminary reborn. The Luminary and his newfound companions embark on a quest that will take them across continents and over vast oceans as they learn of an ominous threat facing the world.',
      genre: 'Platformer',
      rating: 4.7,
      releaseDate: DateTime(2017, 10, 27),
    ),
    Game(
      name: 'Death Stranding',
      pics: 'assets/images/ds.jpg',
      desc: 'Saddle up for a meditative trek across a post-apocalyptic wasteland. Deliver packages, reconnect the world and try to keep up with the surreal story. You’ll find original ideas in every rocky crevice of this genre-defying game from Hideo Kojima. There’s a star-studded cast, moody soundtrack and a satisfying loop of making it from point A to point B. From legendary game creator Hideo Kojima comes a genre-defying experience, now expanded and remastered for PS5 in this definitive DIRECTOR’S CUT. In the future, a mysterious event known as the DEATH STRANDING has opened a doorway between the living and the dead, leading to grotesque creatures from the afterlife roaming the fallen world marred by a desolate society. As Sam Bridges, your mission is to deliver hope to humanity by connecting the last survivors of a decimated America. Can you reunite the shattered world, one step at a time?',
      genre: 'Life simulation',
      rating: 4.6,
      releaseDate: DateTime(2020, 3, 20),
    ),
  ];

  Game? _selectedGame;

  List<Game> get games => _gamescons;

  Game? get selectedGame => _selectedGame;

  set selectedGame(Game? game) {
    _selectedGame = game;
    notifyListeners();
  }

  void addGame(Game game) {
    _gamescons.add(game);
    notifyListeners();
  }

  void removeGame(Game game) {
    _gamescons.remove(game);
    notifyListeners();
  }

  void sortGamesByRating() {
    _gamescons.sort((a, b) => b.rating.compareTo(a.rating));
    notifyListeners();
  }

  void sortGamesByReleaseDate() {
    _gamescons.sort((a, b) => b.releaseDate.compareTo(a.releaseDate));
    notifyListeners();
  }
}