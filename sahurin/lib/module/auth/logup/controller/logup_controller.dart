import 'package:flutter/material.dart';
import 'package:sahurin/state_util.dart';
import '../view/logup_view.dart';

class LogupController extends State<LogupView> implements MvcController {
  static late LogupController instance;
  late LogupView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}