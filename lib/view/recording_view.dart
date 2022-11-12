import 'package:flutter/material.dart';

class RecordingWidget extends StatefulWidget {
  const RecordingWidget({Key? key}) : super(key: key);

  @override
  State<RecordingWidget> createState() => _RecordingWidgetState();
}

class _RecordingWidgetState extends State<RecordingWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('録音'),
      ),
      body: Center(
          child: TextButton(
        child: Text('開始'),
        onPressed: () {},
      )),
    );
  }
}
