import 'package:flutter/material.dart';
import 'package:gamestore/components/detail_silver.dart';
import 'package:gamestore/components/info.dart';
import 'package:gamestore/models/game.dart';

class DetailGame extends StatelessWidget {
  final Game game;
  const DetailGame({super.key, required this.game});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: DetailSliverDelegate(
              game: game,
              expandedHeight: 360,
              roundedContainerHeight: 30,
            ),
          ),
          SliverToBoxAdapter(
            child: GameInfo(game),
          )
        ],
      ),
    );
  }
}
