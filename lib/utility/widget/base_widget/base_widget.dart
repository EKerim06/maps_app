import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class BaseWidget extends StatefulWidget {
  const BaseWidget({
    required this.appBar,
    required this.body,
    super.key,
  });

  final Widget body;

  final AppBar appBar;

  @override
  _BaseWidgetState createState() => _BaseWidgetState();
}

class _BaseWidgetState extends State<BaseWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding.medium,
      child: Scaffold(
        appBar: widget.appBar,
        body: widget.body,
      ),
    );
  }
}
