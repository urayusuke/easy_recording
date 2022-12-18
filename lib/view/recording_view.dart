import 'package:flutter/material.dart';
// import 'package:flutter_sound/flutter_sound.dart';


class RecordingWidget extends StatefulWidget {
  const RecordingWidget({Key? key}) : super(key: key);

  @override
  State<RecordingWidget> createState() => _RecordingWidgetState();
}

class _RecordingWidgetState extends State<RecordingWidget> {
  // final FlutterSoundRecorder _myRecorder = FlutterSoundRecorder();
  bool isStart = true;
  bool isRecording = false;

  @override
  void initState() {
    super.initState();
    // _myRecorder.openAudioSession().then((value) {
      setState(() {
        // _mRecorderIsInited = true;
      });
    // });
  }
  
  @override
  void dispose() {
    // Be carful : you must `close` the audio session when you have finished with it.
    // _myRecorder.closeAudioSession();
    // _myRecorder = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('録音'),
      ),
      body: Center(
          child: ElevatedButton(
        child: isStart ? const Text('開始') : const Text('停止'),
        onPressed: () async {
          if (isStart) {
            setState(() {
              isStart = !isStart;
            });
          } else {
            setState(() {
              isStart = !isStart;
            });
          }
        },
      )),
    );
  }
}
