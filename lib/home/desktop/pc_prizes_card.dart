import 'package:flutter/material.dart';
import 'package:hidoc/home/desktop/pc_prize_item.dart';

class PCPrizesCard extends StatelessWidget {
  const PCPrizesCard({super.key});

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
          PCPrizeItem(
              text1: 'Quizzes: ',),
          PCPrizeItem(
              text1: 'Medical Calculators: ',
              ),
        ],
      ),
    );
  }
}