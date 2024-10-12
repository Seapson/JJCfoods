import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:math';
import 'push_notifications_widget.dart' show PushNotificationsWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:octo_image/octo_image.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class PushNotificationsModel extends FlutterFlowModel<PushNotificationsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Topic widget.
  FocusNode? topicFocusNode;
  TextEditingController? topicTextController;
  String? Function(BuildContext, String?)? topicTextControllerValidator;
  // State field(s) for D05Detail widget.
  FocusNode? d05DetailFocusNode;
  TextEditingController? d05DetailTextController;
  String? Function(BuildContext, String?)? d05DetailTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  DateTime? datePicked;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    topicFocusNode?.dispose();
    topicTextController?.dispose();

    d05DetailFocusNode?.dispose();
    d05DetailTextController?.dispose();
  }
}
