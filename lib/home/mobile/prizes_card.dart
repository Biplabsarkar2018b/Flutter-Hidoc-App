import 'package:flutter/material.dart';
import 'package:hidoc/home/mobile/prize_item.dart';

class PrizesCard extends StatelessWidget {
  const PrizesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Colors.black,
        ),
      ),
      child: Column(
        children: [
          PrizeItem(
              text1: 'Quizzes: ', text2: 'Participate & Win Exciting Prizes'),
          PrizeItem(
              text1: 'Medical Calculators: ',
              text2: 'Get Access to 800+ Evidence Based Calculators'),
        ],
      ),
    );
  }
}
