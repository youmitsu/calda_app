import 'package:calda_app/config/app_colors.dart';
import 'package:flutter/material.dart';

class SubmitRoundedBtn extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  SubmitRoundedBtn({
    @required this.text,
    @required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: ButtonColor.orange,
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(30),
        child: InkWell(
          borderRadius: BorderRadius.circular(30),
          onTap: onTap,
          child: Center(
            child: Text(
              text,
              style: Theme.of(context).textTheme.subtitle1.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
