import "package:flutter/material.dart";
import "package:gamestore/components/newgame.dart";
import "package:gamestore/components/popular.dart";

class CategorySection extends StatelessWidget {
  CategorySection({super.key});

  final categories = [
    {
      'icon': Icons.track_changes_outlined,
      'color': const Color(0xFF605CF4),
      'title': 'Arcabe'
    },
    {
      'icon': Icons.sports_motorsports_outlined,
      'color': const Color(0xFFFC77A6),
      'title': 'Racing'
    },
    {
      'icon': Icons.casino_outlined,
      'color': const Color(0xFF4391FF),
      'title': 'Strategy'
    },
    {
      'icon': Icons.sports_esports,
      'color': const Color(0xFF7182f2),
      'title': 'More'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 140,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              scrollDirection: Axis.horizontal,
              itemBuilder: ((context, index) => Column(
                    children: [
                      const SizedBox(
                        height: 25,
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: categories[index]['color'] as Color,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Icon(
                          categories[index]['icon'] as IconData,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text((categories[index]["title"] as String).toUpperCase(),
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.7),
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          )),
                    ],
                  )),
              separatorBuilder: (context, index) => const SizedBox(width: 30),
              itemCount: categories.length,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const Text("Popular game",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          PopularGame(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const Text("New game",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          NewGames()
        ],
      ),
    );
  }
}
