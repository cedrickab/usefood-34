import 'dart:async';
import 'dart:convert';

import 'serialization_util.dart';
import '../backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

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

    if (mounted) {
      setState(() => _loading = true);
    }
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
      if (mounted) {
        setState(() => _loading = false);
      }
    }
  }

  @override
  void initState() {
    super.initState();
    handleOpenedPushNotification();
  }

  @override
  Widget build(BuildContext context) => _loading
      ? Container(
          color: FlutterFlowTheme.of(context).primaryText,
          child: Image.asset(
            'assets/images/Screenshot_2022-05-15_at_03.24.01.jpg',
            fit: BoxFit.contain,
          ),
        )
      : widget.child;
}

final pageBuilderMap = <String, Future<Widget> Function(Map<String, dynamic>)>{
  'parametres': (data) async => NavBarPage(initialPage: 'parametres'),
  'ajout': (data) async =>
      hasMatchingParameters(data, {'dateperm', 'productitem'})
          ? AjoutWidget(
              dateperm: getParameter(data, 'dateperm'),
              productitem: getParameter(data, 'productitem'),
            )
          : NavBarPage(initialPage: 'ajout'),
  'onboarding': (data) async => OnboardingWidget(),
  'produitScan': (data) async => ProduitScanWidget(
        nom: getParameter(data, 'nom'),
        nutriscore: getParameter(data, 'nutriscore'),
        dateperm: getParameter(data, 'dateperm'),
        image: getParameter(data, 'image'),
        quantite: getParameter(data, 'quantite'),
        ingredient: getParameter(data, 'ingredient'),
        nutritions: getParameter(data, 'nutritions'),
        ecoscore: getParameter(data, 'ecoscore'),
        novagroup: getParameter(data, 'novagroup'),
      ),
  'ajoutManuel': (data) async => AjoutManuelWidget(),
  'reinitialisation': (data) async => ReinitialisationWidget(),
  'connexion': (data) async => ConnexionWidget(
        userref: getParameter(data, 'userref'),
      ),
  'inscription': (data) async => InscriptionWidget(
        userref: getParameter(data, 'userref'),
      ),
  'inventaire': (data) async => NavBarPage(initialPage: 'inventaire'),
  'produit': (data) async => ProduitWidget(
        productitems: getParameter(data, 'productitems'),
      ),
  'ingredients': (data) async => IngredientsWidget(
        ingredients: getParameter(data, 'ingredients'),
        nutriments: getParameter(data, 'nutriments'),
      ),
  'historique': (data) async => HistoriqueWidget(),
  'modifierInformations': (data) async => ModifierInformationsWidget(),
  'news': (data) async => NewsWidget(),
  'miseVente': (data) async => MiseVenteWidget(
        productData: getParameter(data, 'productData'),
      ),
  'marketplace': (data) async => NavBarPage(initialPage: 'marketplace'),
  'produitVente': (data) async => ProduitVenteWidget(
        productitems: getParameter(data, 'productitems'),
      ),
  'mesAnnonces': (data) async => MesAnnoncesWidget(),
  'mesReservations': (data) async => MesReservationsWidget(),
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
