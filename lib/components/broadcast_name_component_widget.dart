import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BroadcastNameComponentWidget extends StatefulWidget {
  const BroadcastNameComponentWidget({Key? key}) : super(key: key);

  @override
  _BroadcastNameComponentWidgetState createState() =>
      _BroadcastNameComponentWidgetState();
}

class _BroadcastNameComponentWidgetState
    extends State<BroadcastNameComponentWidget> {
  TextEditingController? textController;

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    textController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16, 24, 16, 36),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              controller: textController,
              autofocus: true,
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'Stream name',
                labelStyle: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Outfit',
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                hintText: 'Enter a name for the stream',
                hintStyle: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Outfit',
                      color: Color(0xFF9EA9AF),
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Outfit',
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Continue',
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: FlutterFlowTheme.of(context).secondaryColor,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Outfit',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
