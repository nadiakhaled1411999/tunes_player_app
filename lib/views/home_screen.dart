import 'package:flutter/material.dart';
import 'package:tunes_player_app/models/tune_model.dart';
import 'package:tunes_player_app/widgets/tune_item.dart';


class HomeView extends StatelessWidget {
     const  HomeView({super.key});
 final List<TuneModel> tunesList = const [
    TuneModel(color: Color(0xffF44336), sound: "note1.wav"),
    TuneModel(color: Color(0xffF89800), sound: "note2.wav"),
    TuneModel(color: Color(0xffFEEB3B), sound: "note3.wav"),
    TuneModel(color: Color(0xff4CAF50), sound: "note4.wav"),
    TuneModel(color: Color(0xff2F9688), sound: "note5.wav"),
    TuneModel(color: Color(0xff2896F3), sound: "note6.wav"),
    TuneModel(color: Color(0xff9C27B0), sound: "note7.wav"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xff253238),
          centerTitle: true,
          title: const Text(
            "Flutter Tune",
            style: TextStyle(color: Colors.white, fontSize: 28),
          ),
        ),
        body:Column(
          children: tunesList.map((e)=>TuneItem(tuneModelData: e)).toList()),
        );
  }
}
/*ListView.builder(
          itemCount: tunesList.length,
          itemBuilder: (context, index) {
            return TuneItem(
              tuneModel: tunesList[index],
            );
          },
        )*/
 