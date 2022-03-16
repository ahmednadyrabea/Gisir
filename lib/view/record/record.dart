import 'package:flutter/material.dart';
import 'package:gesr/constants/constants.dart';
enum AudioState { recording, stop, play,defult }
class RecordingScreen extends StatefulWidget {
  @override
  _RecordingScreenState createState() => _RecordingScreenState();
}

class _RecordingScreenState extends State<RecordingScreen> {
      AudioState? audioState = AudioState.defult;

  void handleAudioState(AudioState state) {
    setState(() {
      if (audioState == AudioState.defult) {
        // Starts recording
        audioState = AudioState.recording;
        // Finished recording
      } else if (audioState == AudioState.recording) {
        audioState = AudioState.play;
        // Play recorded audio
      } else if (audioState == AudioState.play) {
        audioState = AudioState.stop;
        // Stop recorded audio
      } else if (audioState == AudioState.stop) {
        audioState = AudioState.play;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //foregroundColor: Colors.white,
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back_ios, color: Colors.grey),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        //  backgroundColor: Colors.white,
      ),
        backgroundColor: color6,
        body: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              AnimatedContainer(
                duration: Duration(milliseconds: 300),
                padding: EdgeInsets.all(24),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: handleAudioColour(),
                ),
                child: RawMaterialButton(
                  fillColor: Colors.white,
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(30),
                  onPressed: () => handleAudioState(audioState!),
                  child: getIcon(audioState!),
                ),
              ),
              SizedBox(width: 20),
              if (audioState == AudioState.play ||
                  audioState == AudioState.stop)
                Container(
                  padding: EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: kindaDarkBlue,
                  ),
                  child: RawMaterialButton(
                    fillColor: Colors.white,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(30),
                    onPressed: () => setState(() {
                      audioState = AudioState.defult;
                    }),
                    child: Icon(Icons.replay, size: 50),
                  ),
                ),
            ],
          ),
        ),
      );

  }

  Color handleAudioColour() {
    if (audioState == AudioState.recording) {
      return Colors.deepOrangeAccent.shade700.withOpacity(0.5);
    } else if (audioState == AudioState.stop) {
      return Colors.green.shade900;
    } else {
      return kindaDarkBlue;
    }
  }

  Icon getIcon(AudioState state) {
    switch (state) {
      case AudioState.play:
        return Icon(Icons.play_arrow, size: 50);
      case AudioState.stop:
        return Icon(Icons.stop, size: 50);
      case AudioState.recording:
        return Icon(Icons.mic, color: Colors.redAccent, size: 50);
      default:
        return Icon(Icons.mic, size: 50);
    }
  }
}
