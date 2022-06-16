import 'package:flutter/material.dart';
import 'package:test_omega/app/modules/home/views/home_view.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          HomeView(),
          Positioned(
            bottom: 30,
            left: 24,
            right: 24,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [IconButton(onPressed: () {}, icon: Icon(Icons.home))],
            ),
          )
        ],
      ),
    );
  }
}
