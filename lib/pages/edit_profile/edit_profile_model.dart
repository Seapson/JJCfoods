import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'edit_profile_widget.dart' show EditProfileWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditProfileModel extends FlutterFlowModel<EditProfileWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for Customername widget.
  FocusNode? customernameFocusNode1;
  TextEditingController? customernameTextController1;
  String? Function(BuildContext, String?)? customernameTextController1Validator;
  // State field(s) for Customergender widget.
  FocusNode? customergenderFocusNode;
  TextEditingController? customergenderTextController;
  String? Function(BuildContext, String?)?
      customergenderTextControllerValidator;
  // State field(s) for customerPhonenumber widget.
  FocusNode? customerPhonenumberFocusNode;
  TextEditingController? customerPhonenumberTextController;
  String? Function(BuildContext, String?)?
      customerPhonenumberTextControllerValidator;
  // State field(s) for Customername widget.
  FocusNode? customernameFocusNode2;
  TextEditingController? customernameTextController2;
  String? Function(BuildContext, String?)? customernameTextController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    customernameFocusNode1?.dispose();
    customernameTextController1?.dispose();

    customergenderFocusNode?.dispose();
    customergenderTextController?.dispose();

    customerPhonenumberFocusNode?.dispose();
    customerPhonenumberTextController?.dispose();

    customernameFocusNode2?.dispose();
    customernameTextController2?.dispose();
  }
}
