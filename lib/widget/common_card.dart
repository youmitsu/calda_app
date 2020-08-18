import 'package:flutter/material.dart';

class CommonCard extends StatelessWidget {
  final Widget child;
  final VoidCallback onTap;

  final EdgeInsets margin;
  final EdgeInsets padding;
  final Color cardColor;
  final double borderRadius;
  final BoxShadow shadow;
  final Border border;
  final double height;

  CommonCard({
    @required this.child,
    this.onTap,
    this.margin,
    this.padding,
    this.cardColor,
    this.borderRadius = 5.0,
    this.shadow,
    this.border,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? null,
      padding: padding ?? const EdgeInsets.all(0),
      margin: margin ?? const EdgeInsets.all(0),
      decoration: BoxDecoration(
        color: cardColor ?? Theme.of(context).cardColor,
        border: border ?? Border.all(color: Colors.transparent, width: 0),
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: shadow != null
            ? [
                shadow,
              ]
            : null,
      ),
      child: Material(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
        ),
        type: MaterialType.button,
        color: cardColor ?? Theme.of(context).cardColor,
        child: InkWell(
          highlightColor: Theme.of(context).highlightColor,
          splashColor: Theme.of(context).splashColor,
          borderRadius: BorderRadius.all(
            Radius.circular(borderRadius),
          ),
          onTap: onTap,
          child: child,
        ),
      ),
    );
  }
}
