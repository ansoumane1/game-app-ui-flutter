import 'package:flutter/material.dart';
import 'package:gamestore/components/description.dart';
import 'package:gamestore/components/gallery.dart';
import 'package:gamestore/components/header_section.dart';
import 'package:gamestore/components/review.dart';
import 'package:gamestore/models/game.dart';

class GameInfo extends StatelessWidget {
  final Game game;

  const GameInfo(this.game, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          const HeaderSection(),
          GallerySection(game),
          DescriptionSection(game),
          ReviewSection(game)
        ],
      ),
    );
  }
}
