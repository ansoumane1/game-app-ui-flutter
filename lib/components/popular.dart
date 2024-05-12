import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gamestore/models/game.dart';
import 'package:gamestore/pages/home/detail.dart';

class PopularGame extends StatelessWidget {
  PopularGame({super.key});
  final List<Game> games = Game.games();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height / 4,
        child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DetailGame(game: games[index])));
                  },
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(games[index].bgImage),
                      ),
                    ),
                  ),
                ),
            separatorBuilder: ((context, indexg) => const SizedBox(height: 10)),
            itemCount: games.length));
  }
}
