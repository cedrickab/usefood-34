import '/ajout_manuel/ajout_manuel_widget.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/produit_scan/produit_scan_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'ajout_model.dart';
export 'ajout_model.dart';

class AjoutWidget extends StatefulWidget {
  const AjoutWidget({
    Key? key,
    this.dateperm,
    this.productitem,
  }) : super(key: key);

  final DateTime? dateperm;
  final DocumentReference? productitem;

  @override
  _AjoutWidgetState createState() => _AjoutWidgetState();
}

class _AjoutWidgetState extends State<AjoutWidget> {
  late AjoutModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AjoutModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).tertiary400,
        automaticallyImplyLeading: false,
        title: Text(
          'Ajout d\'un produit',
          style: FlutterFlowTheme.of(context).headlineMedium.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22.0,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 10.0,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          57.0, 200.0, 57.0, 24.0),
                      child: Text(
                        '1 - Ajoutez votre produit\n\n2 - Choissisez sa date de rappel de consommation\n\n3 - Consommez-le !',
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 18.0,
                            ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            _model.scan =
                                await FlutterBarcodeScanner.scanBarcode(
                              '#C62828', // scanning line color
                              'Cancel', // cancel button text
                              true, // whether to show the flash icon
                              ScanMode.BARCODE,
                            );

                            _model.finalement = await DetailproductCall.call(
                              code: _model.scan,
                            );
                            if (getJsonField(
                                  (_model.finalement?.jsonBody ?? ''),
                                  r'''$['product']['generic_name']''',
                                ) !=
                                null) {
                              await Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.bottomToTop,
                                  duration: Duration(milliseconds: 100),
                                  reverseDuration: Duration(milliseconds: 100),
                                  child: ProduitScanWidget(
                                    image: getJsonField(
                                      (_model.finalement?.jsonBody ?? ''),
                                      r'''$['product']['image_url']''',
                                    ),
                                    nutriscore:
                                        functions.nutriscore(getJsonField(
                                      (_model.finalement?.jsonBody ?? ''),
                                      r'''$['product']['nutriscore_grade']''',
                                    ).toString()),
                                    quantite: getJsonField(
                                      (_model.finalement?.jsonBody ?? ''),
                                      r'''$['product']['quantity']''',
                                    ).toString(),
                                    ingredient: getJsonField(
                                      (_model.finalement?.jsonBody ?? ''),
                                      r'''$['product']['image_ingredients_url']''',
                                    ),
                                    nutritions: getJsonField(
                                      (_model.finalement?.jsonBody ?? ''),
                                      r'''$['product']['image_nutrition_url']''',
                                    ),
                                    ecoscore: functions.ecoscore(getJsonField(
                                      (_model.finalement?.jsonBody ?? ''),
                                      r'''$['product']['ecoscore_grade']''',
                                    ).toString()),
                                    novagroup: functions.novagroup(getJsonField(
                                      (_model.finalement?.jsonBody ?? ''),
                                      r'''$['product']['nova_group']''',
                                    ).toString()),
                                    nom: DetailproductCall.name(
                                      (_model.finalement?.jsonBody ?? ''),
                                    ).toString(),
                                  ),
                                ),
                              );
                            } else {
                              await showDialog(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    title: Text('Produit non reconnu'),
                                    content: Text(
                                        'Veuillez l\'ajouter manuellement'),
                                    actions: [
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(alertDialogContext),
                                        child: Text('Ok'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            }

                            setState(() {});
                          },
                          text: 'Scanner mon produit',
                          options: FFButtonOptions(
                            width: 270.0,
                            height: 50.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primaryText,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
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
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.bottomToTop,
                                duration: Duration(milliseconds: 100),
                                reverseDuration: Duration(milliseconds: 100),
                                child: AjoutManuelWidget(),
                              ),
                            );
                          },
                          text: 'Ajouter manuellement',
                          options: FFButtonOptions(
                            width: 270.0,
                            height: 50.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primaryText,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
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
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
