import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColoredRoundedButton extends StatelessWidget {
  final Function onPressed;
  final String text;
  final TextStyle textStyle;
  final double height;
  final EdgeInsets margin;
  final double borderRadius;
  final Color buttonColor;
  final bool isLoading;

  ColoredRoundedButton({
    this.onPressed,
    this.text,
    this.textStyle,
    this.height = 50.0,
    this.margin,
    this.borderRadius = 5.0,
    this.buttonColor,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? const EdgeInsets.all(0),
      constraints: BoxConstraints.expand(
        height: height,
      ),
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        color: buttonColor ?? Theme.of(context).buttonColor,
        onPressed: () => onPressed(),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              text,
              textAlign: TextAlign.center,
              style: textStyle ??
                  const TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Visibility(
              visible: isLoading,
              child: Theme(
                data: Theme.of(context).copyWith(
                  accentColor: Colors.white,
                ),
                child: Container(
                  margin: const EdgeInsets.only(left: 10),
                  height: 18,
                  width: 18,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
