import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget({
    Key key,
    @required this.onPress,
    @required this.icon,
  }) : super(key: key);

  final Function onPress;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.075),
        child: MaterialButton(
          splashColor: Colors.pink,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
          child: FaIcon(
            icon,
            color: Colors.black,
            size: 50,
          ),
          onPressed: onPress,
        ),
      ),
    );
  }
}
