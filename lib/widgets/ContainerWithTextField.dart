import 'package:flutter/cupertino.dart';

class Cwithtext extends StatelessWidget {
  final Color color;
  final Widget txtform;
  const Cwithtext({super.key, required this.color, required this.txtform});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 52,
      decoration:
      BoxDecoration(color: color, borderRadius: BorderRadius.circular(8),

      ),
      child: txtform,
    );
  }
}
