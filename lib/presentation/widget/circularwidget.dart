import 'package:e_consultation/core/constant/customColors.dart';
import 'package:flutter/material.dart';

class Circularwidget extends StatelessWidget {
  final IconData? icon;
  final String? title;
  final Function()? ontap;
  const Circularwidget({Key? key, this.icon, this.title, this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: InkWell(
          onTap: ontap,
          child: ListTile(
            title: CircleAvatar(
              radius: 50,
              backgroundColor: CustomColors.blue,
              child: Icon(
                icon,
                color: Colors.white,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                title!,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
