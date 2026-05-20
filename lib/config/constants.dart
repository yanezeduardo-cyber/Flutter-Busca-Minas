import 'package:flutter/material.dart';

enum Difficulty { easy, medium, hard }

class GameConfig {
  final int rows;
  final int cols;
  final int mines;

  const GameConfig({required this.rows, required this.cols, required this.mines});

  static GameConfig getConfig(Difficulty diff) {
    switch (diff) {
      case Difficulty.easy: return const GameConfig(rows: 6, cols: 6, mines: 8);
      case Difficulty.medium: return const GameConfig(rows: 8, cols: 8, mines: 12);
      case Difficulty.hard: return const GameConfig(rows: 10, cols: 10, mines: 20);
    }
  }
}

enum NumberStyle { classic, colorful, retro, minimalist }

class StyleHelper {
  static Color getColor(int number, NumberStyle style) {
    if (number == 0) return Colors.transparent;
    List<Color> palette;
    switch (style) {
      case NumberStyle.classic:
        palette = [Colors.transparent, Colors.blue, Colors.green, Colors.red, Colors.indigo, Colors.brown, Colors.teal, Colors.black, Colors.grey];
        break;
      case NumberStyle.colorful:
        palette = [Colors.transparent, Colors.orange, Colors.purple, Colors.pink, Colors.cyan, Colors.lime, Colors.amber, Colors.white, Colors.yellow];
        break;
      case NumberStyle.retro:
        palette = [Colors.transparent, Colors.green, Colors.red, Colors.yellow, Colors.blue, Colors.white, Colors.orange, Colors.grey, Colors.black];
        break;
      case NumberStyle.minimalist:
        return Colors.grey.shade700;
    }
    return palette[number.clamp(1, 8)];
  }
}
