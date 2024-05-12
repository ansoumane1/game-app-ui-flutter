import "package:flutter/material.dart";
import "package:gamestore/components/bottom_nav_bar.dart";
import "package:gamestore/components/category.dart";
import "package:gamestore/components/header_section.dart";
import "package:gamestore/components/search.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF5F67EA),
      // bottom navigation bar
      bottomNavigationBar: const NavigationBottomBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(children: [
            Transform(
              transform: Matrix4.identity()..rotateZ(20),
              origin: const Offset(150, 50),
              child: Image.asset(
                'assets/images/bg_liquid.png',
                width: 200,
              ),
            ),
            Positioned(
              right: 0,
              top: 200,
              child: Transform(
                transform: Matrix4.identity()..rotateZ(20),
                origin: const Offset(180, 100),
                child: Image.asset(
                  'assets/images/bg_liquid.png',
                  width: 200,
                ),
              ),
            ),
            Column(
              children: [
                const HeaderSection(),
                const SearchSection(),
                CategorySection(),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
