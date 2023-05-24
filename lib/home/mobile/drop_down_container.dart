import 'package:flutter/material.dart';

class DropDownContainer extends StatelessWidget {
  const DropDownContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: PhysicalShape(
        elevation: 4.0,
        color: Colors.white,
        shadowColor: Colors.grey,
        clipper: ShapeBorderClipper(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Expanded(
                child: Text(
                  'Your Text',
                  textAlign: TextAlign.center,
                  // style: TextStyle(fontSize: 18.0),
                ),
              ),
              Icon(
                Icons.arrow_drop_down,
                size: 30.0,
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
