import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_youtube_player.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VideoPlayerWidget extends StatefulWidget {
  const VideoPlayerWidget({
    Key? key,
    this.videoURL,
  }) : super(key: key);

  final String? videoURL;

  @override
  _VideoPlayerWidgetState createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FlutterFlowYoutubePlayer(
      url: widget.videoURL!,
      autoPlay: false,
      looping: false,
      mute: false,
      showControls: true,
      showFullScreen: true,
    );
  }
}
