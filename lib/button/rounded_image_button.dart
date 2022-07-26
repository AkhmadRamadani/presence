import 'package:flutter/material.dart';
import 'package:presence/service/global_data.dart';

class RoundedImageButton extends StatelessWidget {
  final String? image;
  final IconData? icon;
  final Color? color;
  final Color? bgColor;
  final Function(int) onPressed;

  const RoundedImageButton(
      {Key? key,
      required this.onPressed,
      this.image,
      this.icon,
      this.bgColor,
      this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPressed(1);
      },
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(
            const Size(double.minPositive, double.minPositive)),
        backgroundColor: MaterialStateProperty.all(bgColor ?? GlobalData.white),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(GlobalData.defaultRadius),
          ),
        ),
        elevation: MaterialStateProperty.all(0),
        padding: MaterialStateProperty.all(
            const EdgeInsets.all(GlobalData.spacing * 2)),
      ),
      child: image != null
          ? Image.asset(
              image ?? '',
              color: color,
            )
          : Icon(
              icon,
              color: color,
            ),
    );
  }
}
