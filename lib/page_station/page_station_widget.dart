import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PageStationWidget extends StatefulWidget {
  const PageStationWidget({Key? key}) : super(key: key);

  @override
  _PageStationWidgetState createState() => _PageStationWidgetState();
}

class _PageStationWidgetState extends State<PageStationWidget> {
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (valueOrDefault<bool>(currentUserDocument?.bIsArtist, false) == true) {
        context.pushNamed('ArtistWelcome');
      } else {
        if (valueOrDefault<bool>(
                currentUserDocument?.bHasAnsweredQuestions, false) ==
            true) {
          context.pushNamed('ListenerWelcome');
        } else {
          context.pushNamed('Survey');
        }
      }
    });

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
    );
  }
}
