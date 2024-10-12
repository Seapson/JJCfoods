import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/main.dart';
import 'edit_products_widget.dart' show EditProductsWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditProductsModel extends FlutterFlowModel<EditProductsWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for Customername widget.
  FocusNode? customernameFocusNode;
  TextEditingController? customernameTextController;
  String? Function(BuildContext, String?)? customernameTextControllerValidator;
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

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    customernameFocusNode?.dispose();
    customernameTextController?.dispose();

    customergenderFocusNode?.dispose();
    customergenderTextController?.dispose();

    customerPhonenumberFocusNode?.dispose();
    customerPhonenumberTextController?.dispose();
  }
}
