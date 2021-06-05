import 'package:flutter/material.dart';

class AnimatedContainerWidget extends StatefulWidget {
  const AnimatedContainerWidget({Key? key}) : super(key: key);

  @override
  _AnimatedContainerWidgetStateState createState() =>
      _AnimatedContainerWidgetStateState();
}

class _AnimatedContainerWidgetStateState
    extends State<AnimatedContainerWidget> {
  double _height = 100.0;

  double _width = 100.0;

  increaseWidth() {
    setState(() {
      _width = _width >= 320.0 ? 100.0 : _width += 50.0;
      //When the width reached 320, it comes back to initial value
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        AnimatedContainer(
            duration: Duration(milliseconds: 500),
            curve: Curves.elasticOut,
            color: Colors.amber,
            height: _height,
            width: _width,
            child: FlatButton(
              //The container width grows as you tap on
              child: Text('Tap to\nGrow Width\n$_width'),
              onPressed: () {
                increaseWidth();
              },
            ))
      ],
    );
  }
}
