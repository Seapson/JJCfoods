import '/backend/backend.dart';
import '/flutter_flow/chat/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'chat_page_model.dart';
export 'chat_page_model.dart';

class ChatPageWidget extends StatefulWidget {
  const ChatPageWidget({
    super.key,
    this.chatUser,
    this.chatRef,
  });

  final UsersRecord? chatUser;
  final DocumentReference? chatRef;

  @override
  State<ChatPageWidget> createState() => _ChatPageWidgetState();
}

class _ChatPageWidgetState extends State<ChatPageWidget>
    with TickerProviderStateMixin {
  late ChatPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  FFChatInfo? _chatInfo;
  bool isGroupChat() {
    if (widget.chatUser == null) {
      return true;
    }
    if (widget.chatRef == null) {
      return false;
    }
    return _chatInfo?.isGroupChat ?? false;
  }

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatPageModel());

    FFChatManager.instance
        .getChatInfo(
      otherUserRecord: widget.chatUser,
      chatReference: widget.chatRef,
    )
        .listen((info) {
      safeSetState(() => _chatInfo = info);
    });

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 1000.0.ms,
            duration: 1000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 1000.0.ms,
            duration: 1000.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(0.0, 0.0),
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
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: Container(
            width: 120.0,
            height: 120.0,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: CachedNetworkImage(
              fadeInDuration: Duration(milliseconds: 500),
              fadeOutDuration: Duration(milliseconds: 500),
              imageUrl: widget!.chatUser!.photoUrl,
            ),
          ),
          title: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
            child: Text(
              widget!.chatUser!.displayName,
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Poppins',
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    letterSpacing: 0.0,
                  ),
            ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.sizeOf(context).height * 1.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: Image.asset(
                      'assets/images/Screenshot_2024-02-20_233910.jpg',
                    ).image,
                  ),
                ),
              ).animateOnPageLoad(
                  animationsMap['containerOnPageLoadAnimation']!),
              Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: StreamBuilder<FFChatInfo>(
                      stream: FFChatManager.instance.getChatInfo(
                        otherUserRecord: widget.chatUser,
                        chatReference: widget.chatRef,
                      ),
                      builder: (context, snapshot) => snapshot.hasData
                          ? FFChatPage(
                              chatInfo: snapshot.data!,
                              allowImages: true,
                              backgroundColor: Color(0xD3C5CFCE),
                              timeDisplaySetting:
                                  TimeDisplaySetting.alwaysVisible,
                              currentUserBoxDecoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).lineColor,
                                border: Border.all(
                                  color: Colors.transparent,
                                  width: 5.0,
                                ),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              otherUsersBoxDecoration: BoxDecoration(
                                color: Color(0xF4C5CFCE),
                                border: Border.all(
                                  color: Colors.transparent,
                                  width: 5.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              currentUserTextStyle: GoogleFonts.getFont(
                                'DM Sans',
                                color: Color(0xFF6E6B6B),
                                fontWeight: FontWeight.normal,
                                fontSize: 14.0,
                                fontStyle: FontStyle.normal,
                              ),
                              otherUsersTextStyle: GoogleFonts.getFont(
                                'DM Sans',
                                color: Color(0xFF111111),
                                fontWeight: FontWeight.normal,
                                fontSize: 14.0,
                              ),
                              inputHintTextStyle: GoogleFonts.getFont(
                                'DM Sans',
                                color: Color(0xFF95A1AC),
                                fontWeight: FontWeight.normal,
                                fontSize: 14.0,
                              ),
                              inputTextStyle: GoogleFonts.getFont(
                                'DM Sans',
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                fontSize: 14.0,
                              ),
                            )
                          : Center(
                              child: SizedBox(
                                width: 50.0,
                                height: 50.0,
                                child: SpinKitSquareCircle(
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 50.0,
                                ),
                              ),
                            ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
