import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'game_provider_pc.dart';

class GameProviderPcWidget extends StatelessWidget {
  final Widget child;

  const GameProviderPcWidget({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<GameProviderPc>(
      create: (context) => GameProviderPc(),
      child: child,
    );
  }
}