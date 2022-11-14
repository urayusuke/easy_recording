import 'package:flutter/material.dart';
import 'package:record/record.dart';

class RecordingWidget extends StatefulWidget {
  const RecordingWidget({Key? key}) : super(key: key);

  @override
  State<RecordingWidget> createState() => _RecordingWidgetState();
}

class _RecordingWidgetState extends State<RecordingWidget> {
  final record = Record();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('録音'),
      ),
      body: Center(
          child: ElevatedButton(
        child: Text('開始'),
        onPressed: () async {
           if (await record.hasPermission()) {
            await record.start(
              path: 'aFullPath/myFile.m4a',
              encoder: AudioEncoder.aacLc, // by default
              bitRate: 128000, // by default
              samplingRate: 44100,
            );
          }
        },
      )),
    );
  }
}
