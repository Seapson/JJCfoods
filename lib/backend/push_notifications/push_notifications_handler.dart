import 'dart:async';
import 'dart:convert';

import 'serialization_util.dart';
import '../backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import '../../index.dart';
import '../../main.dart';

final _handledMessageIds = <String?>{};

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({Key? key, required this.child})
      : super(key: key);

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    if (_handledMessageIds.contains(message.messageId)) {
      return;
    }
    _handledMessageIds.add(message.messageId);

    safeSetState(() => _loading = true);
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final pageBuilder = pageBuilderMap[initialPageName];
      if (pageBuilder != null) {
        final page = await pageBuilder(initialParameterData);
        await Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      safeSetState(() => _loading = false);
    }
  }

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      handleOpenedPushNotification();
    });
  }

  @override
  Widget build(BuildContext context) => _loading
      ? Container(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          child: Image.asset(
            'assets/images/Screenshot_2024-02-20_233910.jpg',
            fit: BoxFit.fitWidth,
          ),
        )
      : widget.child;
}

final pageBuilderMap = <String, Future<Widget> Function(Map<String, dynamic>)>{
  'Signin': (data) async => SigninWidget(),
  'MyOrder': (data) async => NavBarPage(initialPage: 'MyOrder'),
  'AddProduct': (data) async => AddProductWidget(),
  'Favorite': (data) async => NavBarPage(initialPage: 'Favorite'),
  'details': (data) async => DetailsWidget(
        productRef: getParameter(data, 'productRef'),
      ),
  'profile': (data) async => NavBarPage(initialPage: 'profile'),
  'editProfile': (data) async => EditProfileWidget(),
  'AllOrder': (data) async => AllOrderWidget(),
  'createuser': (data) async => CreateuserWidget(),
  'changepassword': (data) async => ChangepasswordWidget(),
  'allchat': (data) async => AllchatWidget(),
  'chatPage': (data) async => ChatPageWidget(
        chatUser: await getDocumentParameter(
            data, 'chatUser', UsersRecord.fromSnapshot),
        chatRef: getParameter(data, 'chatRef'),
      ),
  'AllCustomers': (data) async => AllCustomersWidget(),
  'EditProducts': (data) async => EditProductsWidget(),
  'ViewOrders': (data) async => ViewOrdersWidget(
        userdetails: await getDocumentParameter(
            data, 'userdetails', UsersRecord.fromSnapshot),
      ),
  'EditProduct': (data) async => EditProductWidget(
        productRef: getParameter(data, 'productRef'),
      ),
  'AllCustomersCopy': (data) async => AllCustomersCopyWidget(),
  'AddBanner': (data) async => AddBannerWidget(),
  'PhonePage': (data) async => PhonePageWidget(),
  'AddAds': (data) async => AddAdsWidget(),
  'HomeCopy': (data) async => HomeCopyWidget(),
  'OrderPage': (data) async => OrderPageWidget(),
  'IndomieEgg': (data) async => IndomieEggWidget(),
  'EwaAgoyinPage': (data) async => EwaAgoyinPageWidget(),
  'Deposit': (data) async => DepositWidget(),
  'AdminDepositCopy': (data) async => AdminDepositCopyWidget(),
  'PushNotifications': (data) async => PushNotificationsWidget(),
  'Ordacopy': (data) async => OrdacopyWidget(),
};

bool hasMatchingParameters(Map<String, dynamic> data, Set<String> params) =>
    params.any((param) => getParameter(data, param) != null);

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
