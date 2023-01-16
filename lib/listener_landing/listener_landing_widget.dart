import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_video_player.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ListenerLandingWidget extends StatefulWidget {
  const ListenerLandingWidget({Key? key}) : super(key: key);

  @override
  _ListenerLandingWidgetState createState() => _ListenerLandingWidgetState();
}

class _ListenerLandingWidgetState extends State<ListenerLandingWidget> {
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Stack(
                    alignment: AlignmentDirectional(1, 0),
                    children: [
                      Align(
                        alignment: AlignmentDirectional(1, 0),
                        child: SvgPicture.asset(
                          'assets/images/Graphic.svg',
                          width: 351,
                          height: 351,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: SvgPicture.asset(
                          'assets/images/sacred_sound_logo.svg',
                          width: 463.9,
                          height: 74.1,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 619,
                      height: 348,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: FlutterFlowVideoPlayer(
                        path:
                            'https://assets.mixkit.co/videos/preview/mixkit-forest-stream-in-the-sunlight-529-large.mp4',
                        videoType: VideoType.network,
                        autoPlay: false,
                        looping: true,
                        showControls: true,
                        allowFullScreen: true,
                        allowPlaybackSpeedMenu: false,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 33, 0, 0),
                      child: Text(
                        'Pre-register to join the platform!',
                        style: FlutterFlowTheme.of(context).title1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 33, 0, 0),
                      child: Text(
                        'Connect with sounds that inspire you.',
                        style: FlutterFlowTheme.of(context).title2,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 33, 0, 0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed('ListenerSignup');
                        },
                        text: 'Get Started',
                        options: FFButtonOptions(
                          width: 130,
                          height: 40,
                          color: FlutterFlowTheme.of(context).primaryColor,
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Outfit',
                                    color: Colors.white,
                                  ),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
