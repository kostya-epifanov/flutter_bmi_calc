import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../main.dart';

class IconTextBox extends StatefulWidget {
  final String _title;
  final String _iconResId;

  IconTextBox(this._title, this._iconResId);

  @override
  _IconTextBoxState createState() => _IconTextBoxState();
}

class _IconTextBoxState extends State<IconTextBox> {
  bool _state = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: double.infinity,
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SvgPicture.asset(
                widget._iconResId,
                color: Colors.white,
                width: 64.0,
                height: 64.0,
                semanticsLabel: widget._title,
              ),
              SizedBox(height: PADDING),
              Text(
                widget._title,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
      flex: 1,
    );
  }
}