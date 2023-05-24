import 'package:flutter/material.dart';

class SpecialNetwork extends StatelessWidget {
  const SpecialNetwork({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      color: Colors.amber[300],
      child: Row(
        children: [
          Expanded(
              child: Text(
                  'Social Network for doctors - A Special feature on Hidoc Dr')),
          ElevatedButton(
            onPressed: () {},
            child: Text('Visit'),
          ),
        ],
      ),
    );
  }
}
