import 'package:flutter/material.dart';
import 'package:snake_game/game_page.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snake Game'),
        backgroundColor: Colors.green,
        toolbarHeight: 100,
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const SnakeGamePage()));
          },
          child:  Container(
            height: 60,
            width: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.purple,
            ),
            child: const Center(child: Text('Start', style: TextStyle(fontSize: 25, color: Colors.white),)),
            ),
          ),
        )
      );
  }
}