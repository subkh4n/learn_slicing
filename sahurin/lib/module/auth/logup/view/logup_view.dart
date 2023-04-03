import 'package:flutter/material.dart';
import 'package:sahurin/core.dart';
import '../controller/logup_controller.dart';

class LogupView extends StatefulWidget {
  const LogupView({Key? key}) : super(key: key);

  Widget build(context, LogupController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Logup"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<LogupView> createState() => LogupController();
}