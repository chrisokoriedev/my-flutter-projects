import 'package:ahealthapp/styles/contants.dart';
import 'package:flutter/material.dart';


class IconContent extends StatelessWidget {
  IconContent({this.icon, this.gender});

  final IconData icon;
  final String gender;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          gender,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}




class RoundedIconButton extends StatelessWidget {
  final IconData icon;
  final Function onChanged;

  RoundedIconButton({@required this.icon,this.onChanged});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onChanged,
      child: Icon(icon),
      elevation: 0.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
