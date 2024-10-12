import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_swipeable_stack.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/main.dart';
import 'dart:math';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';
import 'ewa_agoyin_page_model.dart';
export 'ewa_agoyin_page_model.dart';

class EwaAgoyinPageWidget extends StatefulWidget {
  const EwaAgoyinPageWidget({super.key});

  @override
  State<EwaAgoyinPageWidget> createState() => _EwaAgoyinPageWidgetState();
}

class _EwaAgoyinPageWidgetState extends State<EwaAgoyinPageWidget>
    with TickerProviderStateMixin {
  late EwaAgoyinPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EwaAgoyinPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().SupremeCondiments = 0.0;
      FFAppState().NumberOfEggs = 2;
      FFAppState().NumberPlantain = 0;
      FFAppState().NumberOfChicken = 0;
      FFAppState().Salad = false;
      FFAppState().ProductPrice =
          valueOrDefault(currentUserDocument?.productPrice, 0.0);
      FFAppState().NumberOfNoodles = 2;
      safeSetState(() {});
    });

    animationsMap.addAll({
      'iconOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, -100.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, -100.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 50.ms),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 50.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, -100.0),
            end: Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 130.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'iconOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 180.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, -100.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 180.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 180.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, -100.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'iconOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 180.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, -100.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 180.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 180.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, -100.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'iconOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 180.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, -100.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 180.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 180.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, -100.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'iconOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 180.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, -100.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation6': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 180.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 180.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, -100.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'iconOnPageLoadAnimation6': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 180.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, -100.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation7': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 180.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 180.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, -100.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation8': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.5, 1.5),
            end: Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation9': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 130.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 100.0),
            end: Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 270.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation10': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 180.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 180.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, -100.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation11': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 180.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 180.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, -100.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation12': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 180.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 180.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, -100.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'imageOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        applyInitialState: true,
        effectsBuilder: () => [
          RotateEffect(
            curve: Curves.easeOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 0.3,
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 700.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'imageOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 1.0),
            end: Offset(1.1, 1.1),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: StreamBuilder<List<ProductListRecord>>(
            stream: queryProductListRecord(
              singleRecord: true,
            ),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: SpinKitSquareCircle(
                      color: FlutterFlowTheme.of(context).primary,
                      size: 50.0,
                    ),
                  ),
                );
              }
              List<ProductListRecord> containerProductListRecordList =
                  snapshot.data!;
              // Return an empty Container when the item does not exist.
              if (snapshot.data!.isEmpty) {
                return Container();
              }
              final containerProductListRecord =
                  containerProductListRecordList.isNotEmpty
                      ? containerProductListRecordList.first
                      : null;

              return Container(
                height: MediaQuery.sizeOf(context).height * 1.0,
                decoration: BoxDecoration(),
                child: FlutterFlowSwipeableStack(
                  onSwipeFn: (index) async {
                    FFAppState().ProductPrice =
                        valueOrDefault(currentUserDocument?.productPrice, 0.0);
                    FFAppState().NumberOfEggs = 2;
                    FFAppState().NumberPlantain = 0;
                    FFAppState().NumberOfChicken = 0;
                    FFAppState().Salad = false;
                    FFAppState().NumberOfNoodles = 2;
                    safeSetState(() {});
                  },
                  onLeftSwipe: (index) {},
                  onRightSwipe: (index) {},
                  onUpSwipe: (index) {},
                  onDownSwipe: (index) {},
                  itemBuilder: (context, index) {
                    return [
                      () => Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 10.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 1.0),
                                    child: Container(
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.85,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(15.0),
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 1.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 110.0, 0.0, 30.0),
                                                child: Material(
                                                  color: Colors.transparent,
                                                  elevation: 8.0,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30.0),
                                                  ),
                                                  child: Container(
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.8,
                                                    height: MediaQuery.sizeOf(
                                                                context)
                                                            .height *
                                                        0.75,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30.0),
                                                    ),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 1.0),
                                                      child: InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          // Show Options
                                                          FFAppState()
                                                                  .Optionsedit =
                                                              false;
                                                          FFAppState()
                                                              .update(() {});
                                                        },
                                                        child:
                                                            SingleChildScrollView(
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                            children: [
                                                              if (FFAppState()
                                                                      .Optionsedit ==
                                                                  false)
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          1.0),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            110.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .end,
                                                                      children: [
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          children: [
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 2.0, 0.0),
                                                                              child: Icon(
                                                                                Icons.fastfood_rounded,
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                size: 13.0,
                                                                              ).animateOnPageLoad(animationsMap['iconOnPageLoadAnimation1']!),
                                                                            ),
                                                                            Align(
                                                                              alignment: AlignmentDirectional(0.0, 0.0),
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                                                                                child: SelectionArea(
                                                                                    child: Text(
                                                                                  'Beans',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Poppins',
                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                      ),
                                                                                )).animateOnPageLoad(animationsMap['textOnPageLoadAnimation1']!),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Align(
                                                                          alignment: AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                          child: SelectionArea(
                                                                              child: Text(
                                                                            'Ewa Agoyin',
                                                                            textAlign:
                                                                                TextAlign.center,
                                                                            maxLines:
                                                                                2,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  fontSize: 25.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w500,
                                                                                ),
                                                                          )).animateOnPageLoad(animationsMap['textOnPageLoadAnimation2']!),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              20.0,
                                                                              3.0,
                                                                              20.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            children: [
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 2.0, 0.0),
                                                                                child: Icon(
                                                                                  Icons.deblur_rounded,
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  size: 13.0,
                                                                                ).animateOnPageLoad(animationsMap['iconOnPageLoadAnimation2']!),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                                                                                child: Container(
                                                                                  width: 30.0,
                                                                                  height: 30.0,
                                                                                  clipBehavior: Clip.antiAlias,
                                                                                  decoration: BoxDecoration(
                                                                                    shape: BoxShape.circle,
                                                                                  ),
                                                                                  child: Image.asset(
                                                                                    'assets/images/supreme_noodles.png',
                                                                                    fit: BoxFit.cover,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Align(
                                                                                alignment: AlignmentDirectional(0.0, 0.0),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                                                                                  child: SelectionArea(
                                                                                      child: Text(
                                                                                    '${formatNumber(
                                                                                      FFAppState().NumberOfNoodles,
                                                                                      formatType: FormatType.decimal,
                                                                                      decimalType: DecimalType.periodDecimal,
                                                                                    )} Plate of ewa agoyin',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Poppins',
                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                          fontSize: 10.0,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FontWeight.w500,
                                                                                        ),
                                                                                  )).animateOnPageLoad(animationsMap['textOnPageLoadAnimation3']!),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            if (FFAppState().NumberOfEggs >=
                                                                                1)
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(20.0, 3.0, 20.0, 0.0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 2.0, 0.0),
                                                                                      child: Icon(
                                                                                        Icons.deblur_rounded,
                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                        size: 13.0,
                                                                                      ).animateOnPageLoad(animationsMap['iconOnPageLoadAnimation3']!),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                                                                                      child: Container(
                                                                                        width: 30.0,
                                                                                        height: 30.0,
                                                                                        clipBehavior: Clip.antiAlias,
                                                                                        decoration: BoxDecoration(
                                                                                          shape: BoxShape.circle,
                                                                                        ),
                                                                                        child: Image.asset(
                                                                                          'assets/images/download.jpg',
                                                                                          fit: BoxFit.cover,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Align(
                                                                                      alignment: AlignmentDirectional(0.0, 0.0),
                                                                                      child: Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                                                                                        child: SelectionArea(
                                                                                            child: Text(
                                                                                          '${formatNumber(
                                                                                            FFAppState().NumberOfEggs,
                                                                                            formatType: FormatType.decimal,
                                                                                            decimalType: DecimalType.periodDecimal,
                                                                                          )} Fried Eggs',
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Poppins',
                                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                fontSize: 10.0,
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FontWeight.w500,
                                                                                              ),
                                                                                        )).animateOnPageLoad(animationsMap['textOnPageLoadAnimation4']!),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            if (FFAppState().NumberPlantain >=
                                                                                1)
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(20.0, 3.0, 20.0, 0.0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 2.0, 0.0),
                                                                                      child: Icon(
                                                                                        Icons.deblur_rounded,
                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                        size: 13.0,
                                                                                      ).animateOnPageLoad(animationsMap['iconOnPageLoadAnimation4']!),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                                                                                      child: Container(
                                                                                        width: 30.0,
                                                                                        height: 30.0,
                                                                                        clipBehavior: Clip.antiAlias,
                                                                                        decoration: BoxDecoration(
                                                                                          shape: BoxShape.circle,
                                                                                        ),
                                                                                        child: Image.asset(
                                                                                          'assets/images/Plantain-1-1.jpg',
                                                                                          fit: BoxFit.cover,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Align(
                                                                                      alignment: AlignmentDirectional(0.0, 0.0),
                                                                                      child: Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                                                                                        child: SelectionArea(
                                                                                            child: Text(
                                                                                          '${formatNumber(
                                                                                            FFAppState().NumberPlantain,
                                                                                            formatType: FormatType.decimal,
                                                                                            decimalType: DecimalType.periodDecimal,
                                                                                          )} Plantains',
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Poppins',
                                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                fontSize: 10.0,
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FontWeight.w500,
                                                                                              ),
                                                                                        )).animateOnPageLoad(animationsMap['textOnPageLoadAnimation5']!),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            if (FFAppState().NumberOfChicken >=
                                                                                1)
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(20.0, 3.0, 20.0, 0.0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 2.0, 0.0),
                                                                                      child: Icon(
                                                                                        Icons.deblur_rounded,
                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                        size: 13.0,
                                                                                      ).animateOnPageLoad(animationsMap['iconOnPageLoadAnimation5']!),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                                                                                      child: Container(
                                                                                        width: 30.0,
                                                                                        height: 30.0,
                                                                                        clipBehavior: Clip.antiAlias,
                                                                                        decoration: BoxDecoration(
                                                                                          shape: BoxShape.circle,
                                                                                        ),
                                                                                        child: Image.asset(
                                                                                          'assets/images/images.jpg',
                                                                                          fit: BoxFit.cover,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Align(
                                                                                      alignment: AlignmentDirectional(0.0, 0.0),
                                                                                      child: Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                                                                                        child: SelectionArea(
                                                                                            child: Text(
                                                                                          '${formatNumber(
                                                                                            FFAppState().NumberOfChicken,
                                                                                            formatType: FormatType.decimal,
                                                                                            decimalType: DecimalType.periodDecimal,
                                                                                          )} Chicken',
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Poppins',
                                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                fontSize: 10.0,
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FontWeight.w500,
                                                                                              ),
                                                                                        )).animateOnPageLoad(animationsMap['textOnPageLoadAnimation6']!),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            if (FFAppState().Salad ==
                                                                                true)
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(20.0, 3.0, 20.0, 0.0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 2.0, 0.0),
                                                                                      child: Icon(
                                                                                        Icons.deblur_rounded,
                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                        size: 13.0,
                                                                                      ).animateOnPageLoad(animationsMap['iconOnPageLoadAnimation6']!),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                                                                                      child: Container(
                                                                                        width: 30.0,
                                                                                        height: 30.0,
                                                                                        clipBehavior: Clip.antiAlias,
                                                                                        decoration: BoxDecoration(
                                                                                          shape: BoxShape.circle,
                                                                                        ),
                                                                                        child: Image.asset(
                                                                                          'assets/images/Fresh-Vegetable-Salad-SQUARE-500x500.jpg',
                                                                                          fit: BoxFit.cover,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Align(
                                                                                      alignment: AlignmentDirectional(0.0, 0.0),
                                                                                      child: Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                                                                                        child: SelectionArea(
                                                                                            child: Text(
                                                                                          'Salad',
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Poppins',
                                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                fontSize: 10.0,
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FontWeight.w500,
                                                                                              ),
                                                                                        )).animateOnPageLoad(animationsMap['textOnPageLoadAnimation7']!),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                          ],
                                                                        ),
                                                                        Align(
                                                                          alignment: AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                10.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child: SelectionArea(
                                                                                child: Text(
                                                                              formatNumber(
                                                                                FFAppState().ProductPrice,
                                                                                formatType: FormatType.decimal,
                                                                                decimalType: DecimalType.periodDecimal,
                                                                                currency: 'NGN ',
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Poppins',
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                    fontSize: 25.0,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.w500,
                                                                                  ),
                                                                            )).animateOnPageLoad(animationsMap['textOnPageLoadAnimation8']!),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              if (FFAppState()
                                                                      .Optionsedit ==
                                                                  true)
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          1.0),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            5.0,
                                                                            90.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Align(
                                                                          alignment: AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                MediaQuery.sizeOf(context).width * 1.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: Color(0x00F0F0F2),
                                                                            ),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                SelectionArea(
                                                                                    child: Text(
                                                                                  'EXTRAS',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Poppins',
                                                                                        fontSize: 22.0,
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                )).animateOnPageLoad(animationsMap['textOnPageLoadAnimation9']!),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(1.0, 5.0, 1.0, 0.0),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.min,
                                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                                    children: [
                                                                                      Switch.adaptive(
                                                                                        value: _model.switchValue1 ??= containerProductListRecord!.supremeNoodles,
                                                                                        onChanged: (newValue) async {
                                                                                          safeSetState(() => _model.switchValue1 = newValue!);
                                                                                          if (newValue!) {
                                                                                            await containerProductListRecord!.reference.update(createProductListRecordData(
                                                                                              supremeNoodles: true,
                                                                                            ));
                                                                                          } else {
                                                                                            await containerProductListRecord!.reference.update(createProductListRecordData(
                                                                                              supremeNoodles: false,
                                                                                            ));
                                                                                          }
                                                                                        },
                                                                                        activeColor: FlutterFlowTheme.of(context).primary,
                                                                                        activeTrackColor: FlutterFlowTheme.of(context).accent1,
                                                                                        inactiveTrackColor: FlutterFlowTheme.of(context).alternate,
                                                                                        inactiveThumbColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                      ),
                                                                                      Expanded(
                                                                                        child: Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                                              children: [
                                                                                                Align(
                                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                  child: Text(
                                                                                                    'Plate of Ewa Agoyin',
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: 'Poppins',
                                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                          fontSize: 12.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                          fontWeight: FontWeight.w600,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                      Expanded(
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(7.0, 0.0, 0.0, 0.0),
                                                                                          child: Column(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                                children: [
                                                                                                  Container(
                                                                                                    width: 120.0,
                                                                                                    height: 45.0,
                                                                                                    decoration: BoxDecoration(
                                                                                                      color: Color(0xFF24282A),
                                                                                                      borderRadius: BorderRadius.circular(40.0),
                                                                                                    ),
                                                                                                    child: Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                                      children: [
                                                                                                        if (FFAppState().PlateOfEwa >= 1)
                                                                                                          Padding(
                                                                                                            padding: EdgeInsets.all(6.0),
                                                                                                            child: FlutterFlowIconButton(
                                                                                                              borderColor: Colors.transparent,
                                                                                                              borderRadius: 9.0,
                                                                                                              borderWidth: 1.0,
                                                                                                              buttonSize: 25.0,
                                                                                                              fillColor: Color(0xFF24282A),
                                                                                                              icon: FaIcon(
                                                                                                                FontAwesomeIcons.minus,
                                                                                                                color: Colors.white,
                                                                                                                size: 8.0,
                                                                                                              ),
                                                                                                              onPressed: () async {
                                                                                                                FFAppState().ProductPrice = FFAppState().ProductPrice + functions.returncartprice(containerProductListRecord!.supremeNoodlesPrice);
                                                                                                                FFAppState().PlateOfEwa = FFAppState().PlateOfEwa + -1;
                                                                                                                safeSetState(() {});
                                                                                                              },
                                                                                                            ),
                                                                                                          ),
                                                                                                        Text(
                                                                                                          formatNumber(
                                                                                                            FFAppState().PlateOfEwa,
                                                                                                            formatType: FormatType.decimal,
                                                                                                            decimalType: DecimalType.periodDecimal,
                                                                                                          ),
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                fontFamily: 'Poppins',
                                                                                                                color: Colors.white,
                                                                                                                fontSize: 12.0,
                                                                                                                letterSpacing: 0.0,
                                                                                                              ),
                                                                                                        ),
                                                                                                        Padding(
                                                                                                          padding: EdgeInsets.all(3.0),
                                                                                                          child: FlutterFlowIconButton(
                                                                                                            borderColor: Colors.transparent,
                                                                                                            borderRadius: 9.0,
                                                                                                            borderWidth: 1.0,
                                                                                                            buttonSize: 25.0,
                                                                                                            fillColor: FlutterFlowTheme.of(context).primary,
                                                                                                            icon: Icon(
                                                                                                              Icons.add,
                                                                                                              color: Colors.white,
                                                                                                              size: 8.0,
                                                                                                            ),
                                                                                                            onPressed: () async {
                                                                                                              FFAppState().ProductPrice = FFAppState().ProductPrice + containerProductListRecord!.supremeNoodlesPrice;
                                                                                                              FFAppState().NumberOfNoodles = FFAppState().NumberOfNoodles + 1;
                                                                                                              safeSetState(() {});
                                                                                                            },
                                                                                                          ),
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(1.0, 5.0, 1.0, 0.0),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.min,
                                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                                    children: [
                                                                                      Switch.adaptive(
                                                                                        value: _model.switchValue2 ??= containerProductListRecord!.supremeNoodles,
                                                                                        onChanged: (newValue) async {
                                                                                          safeSetState(() => _model.switchValue2 = newValue!);
                                                                                          if (newValue!) {
                                                                                            await containerProductListRecord!.reference.update(createProductListRecordData(
                                                                                              supremeNoodles: true,
                                                                                            ));
                                                                                          } else {
                                                                                            await containerProductListRecord!.reference.update(createProductListRecordData(
                                                                                              supremeNoodles: false,
                                                                                            ));
                                                                                          }
                                                                                        },
                                                                                        activeColor: FlutterFlowTheme.of(context).primary,
                                                                                        activeTrackColor: FlutterFlowTheme.of(context).accent1,
                                                                                        inactiveTrackColor: FlutterFlowTheme.of(context).alternate,
                                                                                        inactiveThumbColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                      ),
                                                                                      Expanded(
                                                                                        child: Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                                              children: [
                                                                                                Align(
                                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                  child: Text(
                                                                                                    'Egg',
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: 'Poppins',
                                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                          fontSize: 12.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                          fontWeight: FontWeight.w600,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                      Expanded(
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(7.0, 0.0, 0.0, 0.0),
                                                                                          child: Column(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                                children: [
                                                                                                  Container(
                                                                                                    width: 120.0,
                                                                                                    height: 45.0,
                                                                                                    decoration: BoxDecoration(
                                                                                                      color: Color(0xFF24282A),
                                                                                                      borderRadius: BorderRadius.circular(40.0),
                                                                                                    ),
                                                                                                    child: Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                                      children: [
                                                                                                        if (FFAppState().NumberOfNoodles >= 1)
                                                                                                          Padding(
                                                                                                            padding: EdgeInsets.all(6.0),
                                                                                                            child: FlutterFlowIconButton(
                                                                                                              borderColor: Colors.transparent,
                                                                                                              borderRadius: 9.0,
                                                                                                              borderWidth: 1.0,
                                                                                                              buttonSize: 25.0,
                                                                                                              fillColor: Color(0xFF24282A),
                                                                                                              icon: FaIcon(
                                                                                                                FontAwesomeIcons.minus,
                                                                                                                color: Colors.white,
                                                                                                                size: 8.0,
                                                                                                              ),
                                                                                                              onPressed: () async {
                                                                                                                FFAppState().ProductPrice = FFAppState().ProductPrice + functions.returncartprice(containerProductListRecord!.supremeNoodlesPrice);
                                                                                                                FFAppState().NumberOfNoodles = FFAppState().NumberOfNoodles + -1;
                                                                                                                safeSetState(() {});
                                                                                                              },
                                                                                                            ),
                                                                                                          ),
                                                                                                        Text(
                                                                                                          formatNumber(
                                                                                                            FFAppState().NumberOfNoodles,
                                                                                                            formatType: FormatType.decimal,
                                                                                                            decimalType: DecimalType.periodDecimal,
                                                                                                          ),
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                fontFamily: 'Poppins',
                                                                                                                color: Colors.white,
                                                                                                                fontSize: 12.0,
                                                                                                                letterSpacing: 0.0,
                                                                                                              ),
                                                                                                        ),
                                                                                                        Padding(
                                                                                                          padding: EdgeInsets.all(3.0),
                                                                                                          child: FlutterFlowIconButton(
                                                                                                            borderColor: Colors.transparent,
                                                                                                            borderRadius: 9.0,
                                                                                                            borderWidth: 1.0,
                                                                                                            buttonSize: 25.0,
                                                                                                            fillColor: FlutterFlowTheme.of(context).primary,
                                                                                                            icon: Icon(
                                                                                                              Icons.add,
                                                                                                              color: Colors.white,
                                                                                                              size: 8.0,
                                                                                                            ),
                                                                                                            onPressed: () async {
                                                                                                              FFAppState().ProductPrice = FFAppState().ProductPrice + containerProductListRecord!.supremeNoodlesPrice;
                                                                                                              FFAppState().NumberOfNoodles = FFAppState().NumberOfNoodles + 1;
                                                                                                              safeSetState(() {});
                                                                                                            },
                                                                                                          ),
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(1.0, 5.0, 1.0, 0.0),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.min,
                                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                                    children: [
                                                                                      Switch.adaptive(
                                                                                        value: _model.switchValue3 ??= containerProductListRecord!.egg,
                                                                                        onChanged: (newValue) async {
                                                                                          safeSetState(() => _model.switchValue3 = newValue!);
                                                                                          if (newValue!) {
                                                                                            await containerProductListRecord!.reference.update(createProductListRecordData(
                                                                                              egg: true,
                                                                                            ));
                                                                                          } else {
                                                                                            await containerProductListRecord!.reference.update(createProductListRecordData(
                                                                                              egg: false,
                                                                                            ));
                                                                                          }
                                                                                        },
                                                                                        activeColor: FlutterFlowTheme.of(context).primary,
                                                                                        activeTrackColor: FlutterFlowTheme.of(context).accent1,
                                                                                        inactiveTrackColor: FlutterFlowTheme.of(context).alternate,
                                                                                        inactiveThumbColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                      ),
                                                                                      Expanded(
                                                                                        child: Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                                              children: [
                                                                                                Align(
                                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                  child: Text(
                                                                                                    'Eja Kika (Fish)',
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: 'Poppins',
                                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                          fontSize: 12.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                          fontWeight: FontWeight.w600,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                      Expanded(
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(7.0, 0.0, 0.0, 0.0),
                                                                                          child: Column(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                                children: [
                                                                                                  Container(
                                                                                                    width: 120.0,
                                                                                                    height: 45.0,
                                                                                                    decoration: BoxDecoration(
                                                                                                      color: Color(0xFF24282A),
                                                                                                      borderRadius: BorderRadius.circular(40.0),
                                                                                                    ),
                                                                                                    child: Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                                      children: [
                                                                                                        if (FFAppState().NumberOfEggs >= 1)
                                                                                                          Padding(
                                                                                                            padding: EdgeInsets.all(6.0),
                                                                                                            child: FlutterFlowIconButton(
                                                                                                              borderColor: Colors.transparent,
                                                                                                              borderRadius: 9.0,
                                                                                                              borderWidth: 1.0,
                                                                                                              buttonSize: 30.0,
                                                                                                              fillColor: Color(0xFF24282A),
                                                                                                              icon: FaIcon(
                                                                                                                FontAwesomeIcons.minus,
                                                                                                                color: Colors.white,
                                                                                                                size: 8.0,
                                                                                                              ),
                                                                                                              onPressed: () async {
                                                                                                                FFAppState().NumberOfEggs = FFAppState().NumberOfEggs + -1;
                                                                                                                FFAppState().ProductPrice = FFAppState().ProductPrice + functions.returncartprice(containerProductListRecord!.eggPrice);
                                                                                                                safeSetState(() {});
                                                                                                              },
                                                                                                            ),
                                                                                                          ),
                                                                                                        Text(
                                                                                                          formatNumber(
                                                                                                            FFAppState().NumberOfEggs,
                                                                                                            formatType: FormatType.decimal,
                                                                                                            decimalType: DecimalType.periodDecimal,
                                                                                                          ),
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                fontFamily: 'Poppins',
                                                                                                                color: Colors.white,
                                                                                                                fontSize: 12.0,
                                                                                                                letterSpacing: 0.0,
                                                                                                              ),
                                                                                                        ),
                                                                                                        Padding(
                                                                                                          padding: EdgeInsets.all(3.0),
                                                                                                          child: FlutterFlowIconButton(
                                                                                                            borderColor: Colors.transparent,
                                                                                                            borderRadius: 9.0,
                                                                                                            borderWidth: 1.0,
                                                                                                            buttonSize: 30.0,
                                                                                                            fillColor: FlutterFlowTheme.of(context).primary,
                                                                                                            icon: Icon(
                                                                                                              Icons.add,
                                                                                                              color: Colors.white,
                                                                                                              size: 8.0,
                                                                                                            ),
                                                                                                            onPressed: () async {
                                                                                                              FFAppState().NumberOfEggs = FFAppState().NumberOfEggs + 1;
                                                                                                              FFAppState().ProductPrice = FFAppState().ProductPrice + containerProductListRecord!.eggPrice;
                                                                                                              safeSetState(() {});
                                                                                                            },
                                                                                                          ),
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(1.0, 5.0, 1.0, 0.0),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.min,
                                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                                    children: [
                                                                                      Switch.adaptive(
                                                                                        value: _model.switchValue4 ??= containerProductListRecord!.plantain,
                                                                                        onChanged: (newValue) async {
                                                                                          safeSetState(() => _model.switchValue4 = newValue!);
                                                                                          if (newValue!) {
                                                                                            await containerProductListRecord!.reference.update(createProductListRecordData(
                                                                                              plantain: true,
                                                                                            ));
                                                                                          } else {
                                                                                            await containerProductListRecord!.reference.update(createProductListRecordData(
                                                                                              plantain: false,
                                                                                            ));
                                                                                          }
                                                                                        },
                                                                                        activeColor: FlutterFlowTheme.of(context).primary,
                                                                                        activeTrackColor: FlutterFlowTheme.of(context).accent1,
                                                                                        inactiveTrackColor: FlutterFlowTheme.of(context).alternate,
                                                                                        inactiveThumbColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                      ),
                                                                                      Expanded(
                                                                                        child: Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                                              children: [
                                                                                                Align(
                                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                  child: Text(
                                                                                                    'Plantain',
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: 'Poppins',
                                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                          fontSize: 12.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                          fontWeight: FontWeight.w600,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                      Expanded(
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(7.0, 0.0, 0.0, 0.0),
                                                                                          child: Column(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                                children: [
                                                                                                  Container(
                                                                                                    width: 120.0,
                                                                                                    height: 45.0,
                                                                                                    decoration: BoxDecoration(
                                                                                                      color: Color(0xFF24282A),
                                                                                                      borderRadius: BorderRadius.circular(40.0),
                                                                                                    ),
                                                                                                    child: Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                                      children: [
                                                                                                        if (FFAppState().NumberPlantain >= 1)
                                                                                                          Padding(
                                                                                                            padding: EdgeInsets.all(6.0),
                                                                                                            child: FlutterFlowIconButton(
                                                                                                              borderColor: Colors.transparent,
                                                                                                              borderRadius: 9.0,
                                                                                                              borderWidth: 1.0,
                                                                                                              buttonSize: 30.0,
                                                                                                              fillColor: Color(0xFF24282A),
                                                                                                              icon: FaIcon(
                                                                                                                FontAwesomeIcons.minus,
                                                                                                                color: Colors.white,
                                                                                                                size: 8.0,
                                                                                                              ),
                                                                                                              onPressed: () async {
                                                                                                                FFAppState().ProductPrice = FFAppState().ProductPrice + functions.returncartprice(containerProductListRecord!.plantainPrice);
                                                                                                                FFAppState().NumberPlantain = FFAppState().NumberPlantain + -1;
                                                                                                                safeSetState(() {});
                                                                                                              },
                                                                                                            ),
                                                                                                          ),
                                                                                                        Text(
                                                                                                          formatNumber(
                                                                                                            FFAppState().NumberPlantain,
                                                                                                            formatType: FormatType.decimal,
                                                                                                            decimalType: DecimalType.periodDecimal,
                                                                                                          ),
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                fontFamily: 'Poppins',
                                                                                                                color: Colors.white,
                                                                                                                fontSize: 12.0,
                                                                                                                letterSpacing: 0.0,
                                                                                                              ),
                                                                                                        ),
                                                                                                        if (containerProductListRecord?.plantain == true)
                                                                                                          Padding(
                                                                                                            padding: EdgeInsets.all(3.0),
                                                                                                            child: FlutterFlowIconButton(
                                                                                                              borderColor: Colors.transparent,
                                                                                                              borderRadius: 9.0,
                                                                                                              borderWidth: 1.0,
                                                                                                              buttonSize: 30.0,
                                                                                                              fillColor: FlutterFlowTheme.of(context).primary,
                                                                                                              icon: Icon(
                                                                                                                Icons.add,
                                                                                                                color: Colors.white,
                                                                                                                size: 8.0,
                                                                                                              ),
                                                                                                              onPressed: () async {
                                                                                                                FFAppState().ProductPrice = FFAppState().ProductPrice + containerProductListRecord!.plantainPrice;
                                                                                                                FFAppState().NumberPlantain = FFAppState().NumberPlantain + 1;
                                                                                                                safeSetState(() {});
                                                                                                              },
                                                                                                            ),
                                                                                                          ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(1.0, 5.0, 1.0, 0.0),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.min,
                                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                                    children: [
                                                                                      Switch.adaptive(
                                                                                        value: _model.switchValue5 ??= containerProductListRecord!.chicken,
                                                                                        onChanged: (newValue) async {
                                                                                          safeSetState(() => _model.switchValue5 = newValue!);
                                                                                          if (newValue!) {
                                                                                            await containerProductListRecord!.reference.update(createProductListRecordData(
                                                                                              chicken: true,
                                                                                            ));
                                                                                          } else {
                                                                                            await containerProductListRecord!.reference.update(createProductListRecordData(
                                                                                              chicken: false,
                                                                                            ));
                                                                                          }
                                                                                        },
                                                                                        activeColor: FlutterFlowTheme.of(context).primary,
                                                                                        activeTrackColor: FlutterFlowTheme.of(context).accent1,
                                                                                        inactiveTrackColor: FlutterFlowTheme.of(context).alternate,
                                                                                        inactiveThumbColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                      ),
                                                                                      Expanded(
                                                                                        child: Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                                              children: [
                                                                                                Align(
                                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                  child: Text(
                                                                                                    'Ponmo',
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: 'Poppins',
                                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                          fontSize: 12.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                          fontWeight: FontWeight.w600,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                      Expanded(
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(7.0, 0.0, 0.0, 0.0),
                                                                                          child: Column(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                                children: [
                                                                                                  Container(
                                                                                                    width: 120.0,
                                                                                                    height: 45.0,
                                                                                                    decoration: BoxDecoration(
                                                                                                      color: Color(0xFF24282A),
                                                                                                      borderRadius: BorderRadius.circular(40.0),
                                                                                                    ),
                                                                                                    child: Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                                      children: [
                                                                                                        if (FFAppState().NumberOfChicken >= 1)
                                                                                                          Padding(
                                                                                                            padding: EdgeInsets.all(6.0),
                                                                                                            child: FlutterFlowIconButton(
                                                                                                              borderColor: Colors.transparent,
                                                                                                              borderRadius: 9.0,
                                                                                                              borderWidth: 1.0,
                                                                                                              buttonSize: 30.0,
                                                                                                              fillColor: Color(0xFF24282A),
                                                                                                              icon: FaIcon(
                                                                                                                FontAwesomeIcons.minus,
                                                                                                                color: Colors.white,
                                                                                                                size: 8.0,
                                                                                                              ),
                                                                                                              onPressed: () async {
                                                                                                                FFAppState().ProductPrice = FFAppState().ProductPrice + functions.returncartprice(containerProductListRecord!.chickenPrice);
                                                                                                                FFAppState().NumberOfChicken = FFAppState().NumberOfChicken + -1;
                                                                                                                safeSetState(() {});
                                                                                                              },
                                                                                                            ),
                                                                                                          ),
                                                                                                        Text(
                                                                                                          formatNumber(
                                                                                                            FFAppState().NumberOfChicken,
                                                                                                            formatType: FormatType.decimal,
                                                                                                            decimalType: DecimalType.periodDecimal,
                                                                                                          ),
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                fontFamily: 'Poppins',
                                                                                                                color: Colors.white,
                                                                                                                fontSize: 12.0,
                                                                                                                letterSpacing: 0.0,
                                                                                                              ),
                                                                                                        ),
                                                                                                        if (containerProductListRecord?.chicken == true)
                                                                                                          Padding(
                                                                                                            padding: EdgeInsets.all(3.0),
                                                                                                            child: FlutterFlowIconButton(
                                                                                                              borderColor: Colors.transparent,
                                                                                                              borderRadius: 9.0,
                                                                                                              borderWidth: 1.0,
                                                                                                              buttonSize: 30.0,
                                                                                                              fillColor: FlutterFlowTheme.of(context).primary,
                                                                                                              icon: Icon(
                                                                                                                Icons.add,
                                                                                                                color: Colors.white,
                                                                                                                size: 8.0,
                                                                                                              ),
                                                                                                              onPressed: () async {
                                                                                                                FFAppState().ProductPrice = FFAppState().ProductPrice + containerProductListRecord!.chickenPrice;
                                                                                                                FFAppState().NumberOfChicken = FFAppState().NumberOfChicken + 1;
                                                                                                                safeSetState(() {});
                                                                                                              },
                                                                                                            ),
                                                                                                          ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(1.0, 5.0, 1.0, 0.0),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.min,
                                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                                    children: [
                                                                                      Switch.adaptive(
                                                                                        value: _model.switchValue6 ??= containerProductListRecord!.chicken,
                                                                                        onChanged: (newValue) async {
                                                                                          safeSetState(() => _model.switchValue6 = newValue!);
                                                                                          if (newValue!) {
                                                                                            await containerProductListRecord!.reference.update(createProductListRecordData(
                                                                                              chicken: true,
                                                                                            ));
                                                                                          } else {
                                                                                            await containerProductListRecord!.reference.update(createProductListRecordData(
                                                                                              chicken: false,
                                                                                            ));
                                                                                          }
                                                                                        },
                                                                                        activeColor: FlutterFlowTheme.of(context).primary,
                                                                                        activeTrackColor: FlutterFlowTheme.of(context).accent1,
                                                                                        inactiveTrackColor: FlutterFlowTheme.of(context).alternate,
                                                                                        inactiveThumbColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                      ),
                                                                                      Expanded(
                                                                                        child: Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                                              children: [
                                                                                                Align(
                                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                  child: Text(
                                                                                                    'Beef',
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: 'Poppins',
                                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                          fontSize: 12.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                          fontWeight: FontWeight.w600,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                      Expanded(
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(7.0, 0.0, 0.0, 0.0),
                                                                                          child: Column(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                                children: [
                                                                                                  Container(
                                                                                                    width: 120.0,
                                                                                                    height: 45.0,
                                                                                                    decoration: BoxDecoration(
                                                                                                      color: Color(0xFF24282A),
                                                                                                      borderRadius: BorderRadius.circular(40.0),
                                                                                                    ),
                                                                                                    child: Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                                      children: [
                                                                                                        if (FFAppState().NumberOfChicken >= 1)
                                                                                                          Padding(
                                                                                                            padding: EdgeInsets.all(6.0),
                                                                                                            child: FlutterFlowIconButton(
                                                                                                              borderColor: Colors.transparent,
                                                                                                              borderRadius: 9.0,
                                                                                                              borderWidth: 1.0,
                                                                                                              buttonSize: 30.0,
                                                                                                              fillColor: Color(0xFF24282A),
                                                                                                              icon: FaIcon(
                                                                                                                FontAwesomeIcons.minus,
                                                                                                                color: Colors.white,
                                                                                                                size: 8.0,
                                                                                                              ),
                                                                                                              onPressed: () async {
                                                                                                                FFAppState().ProductPrice = FFAppState().ProductPrice + functions.returncartprice(containerProductListRecord!.chickenPrice);
                                                                                                                FFAppState().NumberOfChicken = FFAppState().NumberOfChicken + -1;
                                                                                                                safeSetState(() {});
                                                                                                              },
                                                                                                            ),
                                                                                                          ),
                                                                                                        Text(
                                                                                                          formatNumber(
                                                                                                            FFAppState().NumberOfChicken,
                                                                                                            formatType: FormatType.decimal,
                                                                                                            decimalType: DecimalType.periodDecimal,
                                                                                                          ),
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                fontFamily: 'Poppins',
                                                                                                                color: Colors.white,
                                                                                                                fontSize: 12.0,
                                                                                                                letterSpacing: 0.0,
                                                                                                              ),
                                                                                                        ),
                                                                                                        if (containerProductListRecord?.chicken == true)
                                                                                                          Padding(
                                                                                                            padding: EdgeInsets.all(3.0),
                                                                                                            child: FlutterFlowIconButton(
                                                                                                              borderColor: Colors.transparent,
                                                                                                              borderRadius: 9.0,
                                                                                                              borderWidth: 1.0,
                                                                                                              buttonSize: 30.0,
                                                                                                              fillColor: FlutterFlowTheme.of(context).primary,
                                                                                                              icon: Icon(
                                                                                                                Icons.add,
                                                                                                                color: Colors.white,
                                                                                                                size: 8.0,
                                                                                                              ),
                                                                                                              onPressed: () async {
                                                                                                                FFAppState().ProductPrice = FFAppState().ProductPrice + containerProductListRecord!.chickenPrice;
                                                                                                                FFAppState().NumberOfChicken = FFAppState().NumberOfChicken + 1;
                                                                                                                safeSetState(() {});
                                                                                                              },
                                                                                                            ),
                                                                                                          ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 1.0),
                                              child: Container(
                                                width: 85.0,
                                                height: 85.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      blurRadius: 8.0,
                                                      color: Color(0x25000000),
                                                      offset: Offset(
                                                        0.0,
                                                        4.0,
                                                      ),
                                                    )
                                                  ],
                                                  shape: BoxShape.circle,
                                                ),
                                                child: FlutterFlowIconButton(
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderRadius: 30.0,
                                                  borderWidth: 1.0,
                                                  buttonSize: 60.0,
                                                  icon: Icon(
                                                    Icons.shopping_cart,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    size: 33.0,
                                                  ),
                                                  onPressed: () async {
                                                    HapticFeedback.vibrate();
                                                    // Click Sound
                                                    _model.soundPlayer1 ??=
                                                        AudioPlayer();
                                                    if (_model.soundPlayer1!
                                                        .playing) {
                                                      await _model.soundPlayer1!
                                                          .stop();
                                                    }
                                                    _model.soundPlayer1!
                                                        .setVolume(1.0);
                                                    _model.soundPlayer1!
                                                        .setAsset(
                                                            'assets/audios/zapsplat_catoon_bite_munch_single_005_56567.mp3')
                                                        .then((_) => _model
                                                            .soundPlayer1!
                                                            .play());

                                                    await currentUserReference!
                                                        .update({
                                                      ...mapToFirestore(
                                                        {
                                                          'CheckoutAmount':
                                                              FieldValue.increment(
                                                                  FFAppState()
                                                                      .ProductPrice),
                                                        },
                                                      ),
                                                    });

                                                    await OrderedRecord
                                                        .collection
                                                        .doc()
                                                        .set(
                                                            createOrderedRecordData(
                                                          name:
                                                              currentUserDisplayName,
                                                          price: FFAppState()
                                                              .ProductPrice,
                                                          createdAt:
                                                              getCurrentTimestamp,
                                                          ticketCode:
                                                              random_data
                                                                  .randomString(
                                                            5,
                                                            10,
                                                            true,
                                                            true,
                                                            true,
                                                          ),
                                                          ready: false,
                                                          delivered: false,
                                                          processing: false,
                                                          userdetails:
                                                              currentUserReference,
                                                          done: false,
                                                          noodles: FFAppState()
                                                              .NumberOfNoodles,
                                                          eggs: FFAppState()
                                                              .NumberOfEggs,
                                                          plantain: FFAppState()
                                                              .NumberPlantain,
                                                          chicken: FFAppState()
                                                              .NumberOfChicken,
                                                          salad: FFAppState()
                                                              .Salad,
                                                          title:
                                                              'Indomie Noodles',
                                                          phone:
                                                              currentPhoneNumber,
                                                        ));
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(
                                                      SnackBar(
                                                        content: Text(
                                                          'Added to cart Successfully',
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                        duration: Duration(
                                                            milliseconds: 4000),
                                                        backgroundColor:
                                                            Color(0xFF1A861E),
                                                      ),
                                                    );
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            NavBarPage(
                                                                initialPage:
                                                                    'Home'),
                                                      ),
                                                    );
                                                    // Wait for the Animation
                                                    await Future.delayed(
                                                        const Duration(
                                                            milliseconds:
                                                                1900));
                                                  },
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 1.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 60.0),
                                                child: Container(
                                                  width: 250.0,
                                                  height: 80.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0x00F0F0F2),
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 1.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        if (FFAppState()
                                                                .Optionsedit ==
                                                            false)
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Container(
                                                                width: 60.0,
                                                                height: 60.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  boxShadow: [
                                                                    BoxShadow(
                                                                      blurRadius:
                                                                          8.0,
                                                                      color: Color(
                                                                          0x20000000),
                                                                      offset:
                                                                          Offset(
                                                                        0.0,
                                                                        4.0,
                                                                      ),
                                                                    )
                                                                  ],
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
                                                                child:
                                                                    FlutterFlowIconButton(
                                                                  borderColor:
                                                                      Colors
                                                                          .transparent,
                                                                  borderRadius:
                                                                      200.0,
                                                                  borderWidth:
                                                                      1.0,
                                                                  buttonSize:
                                                                      60.0,
                                                                  icon: Icon(
                                                                    Icons
                                                                        .settings_input_component,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    size: 20.0,
                                                                  ),
                                                                  onPressed:
                                                                      () async {
                                                                    HapticFeedback
                                                                        .selectionClick();
                                                                    // Click Sound
                                                                    _model.soundPlayer2 ??=
                                                                        AudioPlayer();
                                                                    if (_model
                                                                        .soundPlayer2!
                                                                        .playing) {
                                                                      await _model
                                                                          .soundPlayer2!
                                                                          .stop();
                                                                    }
                                                                    _model
                                                                        .soundPlayer2!
                                                                        .setVolume(
                                                                            1.0);
                                                                    _model
                                                                        .soundPlayer2!
                                                                        .setAsset(
                                                                            'assets/audios/ui-click-97915.mp3')
                                                                        .then((_) => _model
                                                                            .soundPlayer2!
                                                                            .play());

                                                                    if (FFAppState()
                                                                            .Optionsedit ==
                                                                        false) {
                                                                      // Show Options
                                                                      FFAppState()
                                                                              .Optionsedit =
                                                                          true;
                                                                      FFAppState()
                                                                          .update(
                                                                              () {});
                                                                    } else {
                                                                      // Show Options
                                                                      FFAppState()
                                                                              .Optionsedit =
                                                                          false;
                                                                      FFAppState()
                                                                          .update(
                                                                              () {});
                                                                    }
                                                                  },
                                                                ),
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          2.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      SelectionArea(
                                                                          child:
                                                                              Text(
                                                                    'Extras',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          fontSize:
                                                                              10.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  )).animateOnPageLoad(
                                                                          animationsMap[
                                                                              'textOnPageLoadAnimation10']!),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        if (FFAppState()
                                                                .Optionsedit ==
                                                            true)
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Container(
                                                                width: 60.0,
                                                                height: 60.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  boxShadow: [
                                                                    BoxShadow(
                                                                      blurRadius:
                                                                          8.0,
                                                                      color: Color(
                                                                          0x20000000),
                                                                      offset:
                                                                          Offset(
                                                                        0.0,
                                                                        4.0,
                                                                      ),
                                                                    )
                                                                  ],
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
                                                                child:
                                                                    FlutterFlowIconButton(
                                                                  borderColor:
                                                                      Colors
                                                                          .transparent,
                                                                  borderRadius:
                                                                      200.0,
                                                                  borderWidth:
                                                                      1.0,
                                                                  buttonSize:
                                                                      60.0,
                                                                  icon: Icon(
                                                                    Icons.close,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    size: 30.0,
                                                                  ),
                                                                  onPressed:
                                                                      () async {
                                                                    HapticFeedback
                                                                        .selectionClick();
                                                                    // Click Sound
                                                                    _model.soundPlayer3 ??=
                                                                        AudioPlayer();
                                                                    if (_model
                                                                        .soundPlayer3!
                                                                        .playing) {
                                                                      await _model
                                                                          .soundPlayer3!
                                                                          .stop();
                                                                    }
                                                                    _model
                                                                        .soundPlayer3!
                                                                        .setVolume(
                                                                            1.0);
                                                                    _model
                                                                        .soundPlayer3!
                                                                        .setAsset(
                                                                            'assets/audios/ui-click-97915.mp3')
                                                                        .then((_) => _model
                                                                            .soundPlayer3!
                                                                            .play());

                                                                    if (FFAppState()
                                                                            .Optionsedit ==
                                                                        false) {
                                                                      // Show Options
                                                                      FFAppState()
                                                                              .Optionsedit =
                                                                          true;
                                                                      FFAppState()
                                                                          .update(
                                                                              () {});
                                                                    } else {
                                                                      // Show Options
                                                                      FFAppState()
                                                                              .Optionsedit =
                                                                          false;
                                                                      FFAppState()
                                                                          .update(
                                                                              () {});
                                                                    }
                                                                  },
                                                                ),
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          2.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      SelectionArea(
                                                                          child:
                                                                              Text(
                                                                    'Close',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          fontSize:
                                                                              10.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  )).animateOnPageLoad(
                                                                          animationsMap[
                                                                              'textOnPageLoadAnimation11']!),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              width: 60.0,
                                                              height: 60.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                boxShadow: [
                                                                  BoxShadow(
                                                                    blurRadius:
                                                                        8.0,
                                                                    color: Color(
                                                                        0x20000000),
                                                                    offset:
                                                                        Offset(
                                                                      0.0,
                                                                      4.0,
                                                                    ),
                                                                  )
                                                                ],
                                                                shape: BoxShape
                                                                    .circle,
                                                              ),
                                                              child:
                                                                  FlutterFlowIconButton(
                                                                borderColor: Colors
                                                                    .transparent,
                                                                borderRadius:
                                                                    200.0,
                                                                borderWidth:
                                                                    0.0,
                                                                buttonSize:
                                                                    60.0,
                                                                icon: Icon(
                                                                  Icons
                                                                      .favorite_border_sharp,
                                                                  color: FFAppState()
                                                                              .AddedtoFavorite ==
                                                                          false
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText
                                                                      : FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                  size: 22.0,
                                                                ),
                                                                onPressed:
                                                                    () async {
                                                                  HapticFeedback
                                                                      .selectionClick();
                                                                  // Click Sound
                                                                  _model.soundPlayer4 ??=
                                                                      AudioPlayer();
                                                                  if (_model
                                                                      .soundPlayer4!
                                                                      .playing) {
                                                                    await _model
                                                                        .soundPlayer4!
                                                                        .stop();
                                                                  }
                                                                  _model
                                                                      .soundPlayer4!
                                                                      .setVolume(
                                                                          1.0);
                                                                  _model
                                                                      .soundPlayer4!
                                                                      .setAsset(
                                                                          'assets/audios/ui-click-97915.mp3')
                                                                      .then((_) => _model
                                                                          .soundPlayer4!
                                                                          .play());

                                                                  if (FFAppState()
                                                                          .AddedtoFavorite ==
                                                                      false) {
                                                                    FFAppState()
                                                                            .AddedtoFavorite =
                                                                        true;
                                                                    FFAppState()
                                                                        .update(
                                                                            () {});
                                                                  } else {
                                                                    FFAppState()
                                                                            .AddedtoFavorite =
                                                                        false;
                                                                    FFAppState()
                                                                        .update(
                                                                            () {});
                                                                  }
                                                                },
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            2.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    SelectionArea(
                                                                        child:
                                                                            Text(
                                                                  'Save',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        fontSize:
                                                                            10.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                )).animateOnPageLoad(
                                                                        animationsMap[
                                                                            'textOnPageLoadAnimation12']!),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, -1.0),
                                              child: Container(
                                                width: double.infinity,
                                                height: 230.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0x00F0F0F2),
                                                ),
                                                child: Stack(
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Image.asset(
                                                          'assets/images/MAIN.png',
                                                          width: 280.0,
                                                          height: 260.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ],
                                                    ),
                                                    Stack(
                                                      children: [
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        14.0),
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          100.0),
                                                              child:
                                                                  Image.asset(
                                                                'assets/images/images_(1).jpg',
                                                                width: 183.0,
                                                                height: 183.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            )
                                                                .animateOnPageLoad(
                                                                    animationsMap[
                                                                        'imageOnPageLoadAnimation']!)
                                                                .animateOnActionTrigger(
                                                                  animationsMap[
                                                                      'imageOnActionTriggerAnimation']!,
                                                                ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                    ][index]();
                  },
                  itemCount: 1,
                  controller: _model.swipeableStackController,
                  loop: true,
                  cardDisplayCount: 7,
                  scale: 0.9,
                  cardPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
