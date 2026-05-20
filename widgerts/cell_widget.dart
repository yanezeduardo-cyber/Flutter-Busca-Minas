import 'package:flutter/material.dart';

class CellWidget extends StatelessWidget {
  const CellWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        border: Border.all(color: Colors.white, width: 2),
      ),
    );
  }
}
