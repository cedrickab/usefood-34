import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/admob_util.dart' as admob;
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'produit_scan_model.dart';
export 'produit_scan_model.dart';

class ProduitScanWidget extends StatefulWidget {
  const ProduitScanWidget({
    Key? key,
    this.nom,
    this.nutriscore,
    this.dateperm,
    this.image,
    this.quantite,
    this.ingredient,
    this.nutritions,
    this.ecoscore,
    this.novagroup,
  }) : super(key: key);

  final String? nom;
  final String? nutriscore;
  final DateTime? dateperm;
  final String? image;
  final String? quantite;
  final String? ingredient;
  final String? nutritions;
  final String? ecoscore;
  final String? novagroup;

  @override
  _ProduitScanWidgetState createState() => _ProduitScanWidgetState();
}

class _ProduitScanWidgetState extends State<ProduitScanWidget> {
  late ProduitScanModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProduitScanModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).tertiary400,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(130.0),
        child: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          actions: [],
          flexibleSpace: FlexibleSpaceBar(
            title: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 20.0,
                          borderWidth: 1.0,
                          buttonSize: 50.0,
                          icon: Icon(
                            Icons.arrow_back_ios_rounded,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24.0,
                          ),
                          onPressed: () async {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Retour',
                          style: FlutterFlowTheme.of(context)
                              .displaySmall
                              .override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 14.0,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
                  child: Text(
                    widget.nom!,
                    textAlign: TextAlign.justify,
                    maxLines: 1,
                    style: FlutterFlowTheme.of(context).displaySmall.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 24.0,
                        ),
                  ),
                ),
              ],
            ),
            centerTitle: true,
            expandedTitleScale: 1.0,
          ),
          elevation: 10.0,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10.0,
                      color: Color(0x4D101213),
                      offset: Offset(0.0, 10.0),
                    )
                  ],
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24.0, 24.0, 24.0, 24.0),
                                child: Container(
                                  width: double.infinity,
                                  height: 270.0,
                                  constraints: BoxConstraints(
                                    maxWidth: double.infinity,
                                  ),
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 5.0,
                                        color: Color(0x4D101213),
                                        offset: Offset(0.0, 2.0),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20.0),
                                    child: Image.network(
                                      widget.image!,
                                      width: double.infinity,
                                      height: 270.0,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.15),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.8, 0.0),
                                            child: Text(
                                              'Favoris',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.75, 0.0),
                                            child: Container(
                                              width: 50.0,
                                              decoration: BoxDecoration(),
                                              child: SwitchListTile(
                                                value: _model
                                                    .isFavoriteValue ??= false,
                                                onChanged: (newValue) async {
                                                  setState(() =>
                                                      _model.isFavoriteValue =
                                                          newValue!);
                                                },
                                                tileColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                activeColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                dense: false,
                                                controlAffinity:
                                                    ListTileControlAffinity
                                                        .trailing,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 24.0, 0.0, 0.0),
                                            child: Text(
                                              'Quantité',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                          ),
                                          Material(
                                            color: Colors.transparent,
                                            elevation: 3.0,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                            child: Container(
                                              width: 130.0,
                                              height: 50.0,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                                shape: BoxShape.rectangle,
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  width: 1.0,
                                                ),
                                              ),
                                              child: FlutterFlowCountController(
                                                decrementIconBuilder:
                                                    (enabled) => FaIcon(
                                                  FontAwesomeIcons.minus,
                                                  color: enabled
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                  size: 20.0,
                                                ),
                                                incrementIconBuilder:
                                                    (enabled) => FaIcon(
                                                  FontAwesomeIcons.plus,
                                                  color: enabled
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .tertiary400
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                  size: 24.0,
                                                ),
                                                countBuilder: (count) => Text(
                                                  count.toString(),
                                                  style: GoogleFonts.getFont(
                                                    'Roboto',
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 18.0,
                                                  ),
                                                ),
                                                count: _model
                                                    .exemplairesValue ??= 1,
                                                updateCount: (count) =>
                                                    setState(() => _model
                                                            .exemplairesValue =
                                                        count),
                                                stepSize: 1,
                                                minimum: 1,
                                                maximum: 99,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.25),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 24.0, 0.0, 0.0),
                                              child: Text(
                                                'Poids/Volume',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            widget.quantite!,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 18.0,
                                                ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Image.network(
                                                  widget.novagroup!,
                                                  width: 80.0,
                                                  height: 80.0,
                                                  fit: BoxFit.contain,
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -0.2, 0.0),
                                                  child: Image.network(
                                                    widget.nutriscore!,
                                                    width: 80.0,
                                                    height: 80.0,
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                                Image.network(
                                                  widget.ecoscore!,
                                                  width: 80.0,
                                                  height: 80.0,
                                                  fit: BoxFit.contain,
                                                ),
                                              ],
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
                        Align(
                          alignment: AlignmentDirectional(0.0, -0.3),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 24.0, 24.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 5.0,
                                        color: Color(0x4D101213),
                                        offset: Offset(0.0, 2.0),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: FlutterFlowDropDown<String>(
                                    controller: _model.categorie2Controller ??=
                                        FormFieldController<String>(null),
                                    options: [
                                      'Produit laitier',
                                      'Boisson',
                                      'Fruit/Légume',
                                      'Viande',
                                      'Féculent',
                                      'Autre'
                                    ],
                                    onChanged: (val) => setState(
                                        () => _model.categorie2Value = val),
                                    width: 180.0,
                                    height: 50.0,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .tertiary400,
                                        ),
                                    hintText: 'Catégorie',
                                    fillColor: Colors.white,
                                    elevation: 0.0,
                                    borderColor: Colors.transparent,
                                    borderWidth: 0.0,
                                    borderRadius: 8.0,
                                    margin: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 4.0, 12.0, 4.0),
                                    hidesUnderline: true,
                                    isSearchable: false,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 24.0, 0.0, 0.0),
                                  child: Text(
                                    'Une date de rappel de consommation du produit va vous être demandée.',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          fontSize: 12.0,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      if (_model.categorie2Value != null &&
                                          _model.categorie2Value != '') {
                                        admob.loadInterstitialAd(
                                          "",
                                          "ca-app-pub-2969441907085369/3351574536",
                                          true,
                                        );

                                        final _datePickedDate =
                                            await showDatePicker(
                                          context: context,
                                          initialDate: getCurrentTimestamp,
                                          firstDate: getCurrentTimestamp,
                                          lastDate: DateTime(2050),
                                        );

                                        TimeOfDay? _datePickedTime;
                                        if (_datePickedDate != null) {
                                          _datePickedTime =
                                              await showTimePicker(
                                            context: context,
                                            initialTime: TimeOfDay.fromDateTime(
                                                getCurrentTimestamp),
                                          );
                                        }

                                        if (_datePickedDate != null &&
                                            _datePickedTime != null) {
                                          setState(() {
                                            _model.datePicked = DateTime(
                                              _datePickedDate.year,
                                              _datePickedDate.month,
                                              _datePickedDate.day,
                                              _datePickedTime!.hour,
                                              _datePickedTime.minute,
                                            );
                                          });
                                        }

                                        final productCollectionCreateData =
                                            createProductCollectionRecordData(
                                          name: widget.nom,
                                          photo: widget.image,
                                          nutriScore: widget.nutriscore,
                                          isFavorite: _model.isFavoriteValue,
                                          alerts: _model.datePicked,
                                          userEmail: currentUserEmail,
                                          categorie: valueOrDefault<String>(
                                            _model.categorie2Value,
                                            'Autre',
                                          ),
                                          weightVolume: widget.quantite,
                                          addedTime: getCurrentTimestamp,
                                          isVisible: true,
                                          initialQuantity:
                                              _model.exemplairesValue,
                                          remainingQuantity:
                                              _model.exemplairesValue,
                                          id: random_data.randomString(
                                            10,
                                            10,
                                            false,
                                            false,
                                            true,
                                          ),
                                          ingredients: widget.ingredient,
                                          nutritions: widget.nutritions,
                                          novagroup: widget.novagroup,
                                          ecoscore: widget.ecoscore,
                                          hasBarcode: true,
                                        );
                                        await ProductCollectionRecord.collection
                                            .doc()
                                            .set(productCollectionCreateData);

                                        final userCollectionUpdateData = {
                                          'registred_product_count':
                                              FieldValue.increment(1),
                                        };
                                        await currentUserReference!
                                            .update(userCollectionUpdateData);
                                        if (functions.advert(valueOrDefault(
                                            currentUserDocument
                                                ?.registredProductCount,
                                            0))!) {
                                          _model.interstitialAdSuccess =
                                              await admob.showInterstitialAd();

                                          if (_model.interstitialAdSuccess!) {
                                            admob.loadInterstitialAd(
                                              "",
                                              "ca-app-pub-2969441907085369/3351574536",
                                              true,
                                            );
                                          } else {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  'Simply testing interstitial ads',
                                                  style: TextStyle(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                  ),
                                                ),
                                                duration: Duration(
                                                    milliseconds: 4000),
                                                backgroundColor:
                                                    Color(0x00000000),
                                              ),
                                            );
                                          }
                                        }
                                        setState(() {
                                          FFAppState().alert =
                                              _model.datePicked;
                                        });
                                        triggerPushNotification(
                                          notificationTitle:
                                              'Votre produit bientôt périmé',
                                          notificationText:
                                              'Salut , tu as un produit    sur le point d\'être périmé , faits en don ou prepares quelquechose avec',
                                          notificationImageUrl:
                                              FFAppState().notif,
                                          scheduledTime: FFAppState().alert!,
                                          notificationSound: 'default',
                                          userRefs: [currentUserReference!],
                                          initialPageName: 'accueil',
                                          parameterData: {},
                                        );
                                        Navigator.pop(context);
                                      } else {
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title: Text(
                                                  'Champ requis non-renseigné'),
                                              content:
                                                  Text('Champ : catégorie'),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          alertDialogContext),
                                                  child: Text('Okay'),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      }

                                      setState(() {});
                                    },
                                    text: 'Enregistrer',
                                    options: FFButtonOptions(
                                      width: 270.0,
                                      height: 50.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            fontSize: 18.0,
                                          ),
                                      elevation: 3.0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
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
          ],
        ),
      ),
    );
  }
}
