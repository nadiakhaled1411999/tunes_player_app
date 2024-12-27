import 'package:flutter/material.dart';
import 'package:tunes_player_app/models/tune_model.dart';

class TuneItem extends StatelessWidget {
  final TuneModel tuneModelData;

  const TuneItem({super.key, required this.tuneModelData});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          tuneModelData.playSound();
        },
        child: Container(color: tuneModelData.color),
      ),
    );
  }
}  





