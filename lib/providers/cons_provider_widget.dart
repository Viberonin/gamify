import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'game_provider_cons.dart';

class GameProviderConsWidget extends StatelessWidget {
  final Widget child;

  const GameProviderConsWidget({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<GameProviderCons>(
      create: (_) => GameProviderCons(),
      child: child,
    );
  }
}