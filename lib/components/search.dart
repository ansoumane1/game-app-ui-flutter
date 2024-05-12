import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.yellow,
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      child: Stack(
        children: [
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(12),
                ),
                fillColor: Colors.white,
                filled: true,
                hintText: "Search game",
                prefixIcon: const Icon(
                  Icons.search,
                  size: 25,
                )),
          ),
          Positioned(
            right: 12,
            bottom: 10,
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFF5F67EA)),
              child: const Icon(
                Icons.mic_outlined,
                color: Colors.white,
                size: 25,
              ),
            ),
          )
        ],
      ),
    );
  }
}
