import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'add_product_widget.dart' show AddProductWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddProductModel extends FlutterFlowModel<AddProductWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for D05title widget.
  FocusNode? d05titleFocusNode;
  TextEditingController? d05titleTextController;
  String? Function(BuildContext, String?)? d05titleTextControllerValidator;
  // State field(s) for Size widget.
  FocusNode? sizeFocusNode;
  TextEditingController? sizeTextController;
  String? Function(BuildContext, String?)? sizeTextControllerValidator;
  // State field(s) for D05Price widget.
  FocusNode? d05PriceFocusNode;
  TextEditingController? d05PriceTextController;
  String? Function(BuildContext, String?)? d05PriceTextControllerValidator;
  // State field(s) for D05Quantity widget.
  FocusNode? d05QuantityFocusNode;
  TextEditingController? d05QuantityTextController;
  String? Function(BuildContext, String?)? d05QuantityTextControllerValidator;
  // State field(s) for Category widget.
  String? categoryValue1;
  FormFieldController<String>? categoryValueController1;
  // State field(s) for Category widget.
  String? categoryValue2;
  FormFieldController<String>? categoryValueController2;
  // State field(s) for DeliveryAmount widget.
  FocusNode? deliveryAmountFocusNode;
  TextEditingController? deliveryAmountTextController;
  String? Function(BuildContext, String?)?
      deliveryAmountTextControllerValidator;
  // State field(s) for D05Detail widget.
  FocusNode? d05DetailFocusNode;
  TextEditingController? d05DetailTextController;
  String? Function(BuildContext, String?)? d05DetailTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    d05titleFocusNode?.dispose();
    d05titleTextController?.dispose();

    sizeFocusNode?.dispose();
    sizeTextController?.dispose();

    d05PriceFocusNode?.dispose();
    d05PriceTextController?.dispose();

    d05QuantityFocusNode?.dispose();
    d05QuantityTextController?.dispose();

    deliveryAmountFocusNode?.dispose();
    deliveryAmountTextController?.dispose();

    d05DetailFocusNode?.dispose();
    d05DetailTextController?.dispose();
  }
}
