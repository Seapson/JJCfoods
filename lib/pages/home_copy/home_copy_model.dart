import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/main.dart';
import '/pages/add_product/add_product_widget.dart';
import '/pages/all_customers/all_customers_widget.dart';
import '/pages/all_order/all_order_widget.dart';
import '/pages/allchat/allchat_widget.dart';
import '/pages/chat_page/chat_page_widget.dart';
import '/pages/details/details_widget.dart';
import '/pages/order_page/order_page_widget.dart';
import '/pages/phone_page/phone_page_widget.dart';
import '/pages/signin/signin_widget.dart';
import 'dart:math';
import 'home_copy_widget.dart' show HomeCopyWidget;
import 'package:flip_card/flip_card.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class HomeCopyModel extends FlutterFlowModel<HomeCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Carousel widget.
  CarouselController? carouselController;
  int carouselCurrentIndex = 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
