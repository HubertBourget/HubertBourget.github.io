import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';

class SurveyWidget extends StatefulWidget {
  const SurveyWidget({
    Key? key,
    this.surveyContent,
  }) : super(key: key);

  final DocumentReference? surveyContent;

  @override
  _SurveyWidgetState createState() => _SurveyWidgetState();
}

class _SurveyWidgetState extends State<SurveyWidget> {
  Map<CollectionTagsRecord, bool> checkboxListTileValueMap = {};
  List<CollectionTagsRecord> get checkboxListTileCheckedItems =>
      checkboxListTileValueMap.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  PagingController<DocumentSnapshot?, CollectionTagsRecord>? _pagingController;
  Query? _pagingQuery;
  List<StreamSubscription?> _streamSubscriptions = [];

  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _streamSubscriptions.forEach((s) => s?.cancel());
    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<List<SurveyContentRecord>>(
      stream: querySurveyContentRecord(
        queryBuilder: (surveyContentRecord) => surveyContentRecord.where('step',
            isEqualTo: FFAppState().SurveyStepNumber),
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primaryColor,
              ),
            ),
          );
        }
        List<SurveyContentRecord> surveySurveyContentRecordList =
            snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final surveySurveyContentRecord =
            surveySurveyContentRecordList.isNotEmpty
                ? surveySurveyContentRecordList.first
                : null;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
              child: Column(
                mainAxisSize: MainAxisSize.max,
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
                  SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          surveySurveyContentRecord!.header!,
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Outfit',
                                    color: Color(0xFF434289),
                                    fontSize: 36,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 18, 0, 72),
                          child: Text(
                            surveySurveyContentRecord!.subHeader!,
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Outfit',
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                    ),
                          ),
                        ),
                        Container(
                          width: 600,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: PagedListView<DocumentSnapshot<Object?>?,
                              CollectionTagsRecord>(
                            pagingController: () {
                              final Query<Object?> Function(Query<Object?>)
                                  queryBuilder = (collectionTagsRecord) =>
                                      collectionTagsRecord.where('type',
                                          isEqualTo: surveySurveyContentRecord!
                                              .tagListType);
                              if (_pagingController != null) {
                                final query = queryBuilder(
                                    CollectionTagsRecord.collection);
                                if (query != _pagingQuery) {
                                  // The query has changed
                                  _pagingQuery = query;
                                  _streamSubscriptions
                                      .forEach((s) => s?.cancel());
                                  _streamSubscriptions.clear();
                                  _pagingController!.refresh();
                                }
                                return _pagingController!;
                              }

                              _pagingController =
                                  PagingController(firstPageKey: null);
                              _pagingQuery =
                                  queryBuilder(CollectionTagsRecord.collection);
                              _pagingController!
                                  .addPageRequestListener((nextPageMarker) {
                                queryCollectionTagsRecordPage(
                                  queryBuilder: (collectionTagsRecord) =>
                                      collectionTagsRecord.where('type',
                                          isEqualTo: surveySurveyContentRecord!
                                              .tagListType),
                                  nextPageMarker: nextPageMarker,
                                  pageSize: 25,
                                  isStream: true,
                                ).then((page) {
                                  _pagingController!.appendPage(
                                    page.data,
                                    page.nextPageMarker,
                                  );
                                  final streamSubscription =
                                      page.dataStream?.listen((data) {
                                    data.forEach((item) {
                                      final itemIndexes = _pagingController!
                                          .itemList!
                                          .asMap()
                                          .map((k, v) =>
                                              MapEntry(v.reference.id, k));
                                      final index =
                                          itemIndexes[item.reference.id];
                                      final items =
                                          _pagingController!.itemList!;
                                      if (index != null) {
                                        items.replaceRange(
                                            index, index + 1, [item]);
                                        _pagingController!.itemList = {
                                          for (var item in items)
                                            item.reference: item
                                        }.values.toList();
                                      }
                                    });
                                    setState(() {});
                                  });
                                  _streamSubscriptions.add(streamSubscription);
                                });
                              });
                              return _pagingController!;
                            }(),
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            builderDelegate:
                                PagedChildBuilderDelegate<CollectionTagsRecord>(
                              // Customize what your widget looks like when it's loading the first page.
                              firstPageProgressIndicatorBuilder: (_) => Center(
                                child: SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: CircularProgressIndicator(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                  ),
                                ),
                              ),

                              itemBuilder: (context, _, listViewIndex) {
                                final listViewCollectionTagsRecord =
                                    _pagingController!.itemList![listViewIndex];
                                return StreamBuilder<CollectionTagsRecord>(
                                  stream: CollectionTagsRecord.getDocument(
                                      listViewCollectionTagsRecord.reference),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 50,
                                          height: 50,
                                          child: CircularProgressIndicator(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryColor,
                                          ),
                                        ),
                                      );
                                    }
                                    final checkboxListTileCollectionTagsRecord =
                                        snapshot.data!;
                                    return Theme(
                                      data: ThemeData(
                                        unselectedWidgetColor:
                                            Color(0xFF95A1AC),
                                      ),
                                      child: CheckboxListTile(
                                        value: checkboxListTileValueMap[
                                                listViewCollectionTagsRecord] ??=
                                            false,
                                        onChanged: (newValue) async {
                                          setState(() => checkboxListTileValueMap[
                                                  listViewCollectionTagsRecord] =
                                              newValue!);
                                        },
                                        title: Text(
                                          checkboxListTileCollectionTagsRecord
                                              .string!,
                                          style: FlutterFlowTheme.of(context)
                                              .title3,
                                        ),
                                        tileColor: Color(0xFFF5F5F5),
                                        activeColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryColor,
                                        dense: false,
                                        controlAffinity:
                                            ListTileControlAffinity.trailing,
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                        FFButtonWidget(
                          onPressed: () async {
                            if (surveySurveyContentRecord!.step == 2) {
                              setState(() {
                                FFAppState().SurveyStepNumber =
                                    FFAppState().SurveyStepNumber + 1;
                                FFAppState().SurveyResponseGenres =
                                    checkboxListTileCheckedItems
                                        .where((e) => e != null)
                                        .toList()
                                        .map((e) => e.reference)
                                        .toList();
                              });
                            } else {
                              if (surveySurveyContentRecord!.step == 3) {
                                setState(() {
                                  FFAppState().SurveyStepNumber =
                                      FFAppState().SurveyStepNumber + 1;
                                  FFAppState().SurveyResponseInstruments =
                                      checkboxListTileCheckedItems
                                          .where((e) => e != null)
                                          .toList()
                                          .map((e) => e.reference)
                                          .toList();
                                });

                                context.pushNamed(
                                  'Survey',
                                  queryParams: {
                                    'surveyContent': serializeParam(
                                      surveySurveyContentRecord!.reference,
                                      ParamType.DocumentReference,
                                    ),
                                  }.withoutNulls,
                                );
                              } else {
                                if (surveySurveyContentRecord!.step == 4) {
                                  setState(() {
                                    FFAppState().SurveyStepNumber =
                                        FFAppState().SurveyStepNumber + 1;
                                    FFAppState().SurveyResponsePerspectives =
                                        checkboxListTileCheckedItems
                                            .where((e) => e != null)
                                            .toList()
                                            .map((e) => e.reference)
                                            .toList();
                                  });

                                  final collectionUsersUpdateData = {
                                    ...createCollectionUsersRecordData(
                                      bHasAnsweredQuestions: true,
                                    ),
                                    'preferred_instruments':
                                        FFAppState().SurveyResponseInstruments,
                                    'preferred_perspectives':
                                        FFAppState().SurveyResponsePerspectives,
                                    'preferred_genres':
                                        FFAppState().SurveyResponseGenres,
                                  };
                                  await currentUserReference!
                                      .update(collectionUsersUpdateData);

                                  context.pushNamed('ListenerWelcome');
                                } else {
                                  return;
                                }

                                return;
                              }

                              return;
                            }

                            context.pushNamed(
                              'Survey',
                              queryParams: {
                                'surveyContent': serializeParam(
                                  surveySurveyContentRecord!.reference,
                                  ParamType.DocumentReference,
                                ),
                              }.withoutNulls,
                            );
                          },
                          text: 'Continue',
                          icon: Icon(
                            Icons.assistant_navigation,
                            size: 15,
                          ),
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
