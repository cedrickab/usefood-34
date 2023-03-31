import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/news/news_widget.dart';
import '/produit/produit_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'accueil_model.dart';
export 'accueil_model.dart';

class AccueilWidget extends StatefulWidget {
  const AccueilWidget({Key? key}) : super(key: key);

  @override
  _AccueilWidgetState createState() => _AccueilWidgetState();
}

class _AccueilWidgetState extends State<AccueilWidget> {
  late AccueilModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AccueilModel());
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
        backgroundColor: Color(0xFF7FD956),
        automaticallyImplyLeading: false,
        title: Text(
          'Bonjour,',
          style: FlutterFlowTheme.of(context).displaySmall.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 24.0,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 10.0,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).tertiary400,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10.0,
                          color: Color(0x4D101213),
                          offset: Offset(0.0, 10.0),
                        )
                      ],
                      borderRadius: BorderRadius.circular(0.0),
                      shape: BoxShape.rectangle,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Votre User Score : ',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      fontSize: 18.0,
                                    ),
                              ),
                              AuthUserStreamWidget(
                                builder: (context) => Text(
                                  functions.userScore(
                                      valueOrDefault(
                                          currentUserDocument
                                              ?.registredProductCount,
                                          0),
                                      valueOrDefault(
                                          currentUserDocument
                                              ?.expiredProductCount,
                                          0))!,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        fontSize: 32.0,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 0.0, 0.0),
                          child: AuthUserStreamWidget(
                            builder: (context) => Text(
                              functions.userScoreComment(functions.userScore(
                                  valueOrDefault(
                                      currentUserDocument
                                          ?.registredProductCount,
                                      0),
                                  valueOrDefault(
                                      currentUserDocument?.expiredProductCount,
                                      0))),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                child: Image.asset(
                  'assets/images/photo-1606787366850-de6330128bfc.jpg',
                  width: double.infinity,
                  height: 100.0,
                  fit: BoxFit.cover,
                ),
              ),
              FFButtonWidget(
                onPressed: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NewsWidget(),
                    ),
                  );
                },
                text: 'Actualités',
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 50.0,
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primaryText,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                      ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(0.0),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 0.0, 0.0),
                child: InkWell(
                  onLongPress: () async {
                    _model.aze = await FlutterBarcodeScanner.scanBarcode(
                      '#C62828', // scanning line color
                      'Cancel', // cancel button text
                      true, // whether to show the flash icon
                      ScanMode.QR,
                    );

                    setState(() {});
                  },
                  child: Text(
                    'Produits',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).titleMedium.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 32.0,
                        ),
                  ),
                ),
              ),
              Expanded(
                child: DefaultTabController(
                  length: 2,
                  initialIndex: 0,
                  child: Column(
                    children: [
                      TabBar(
                        isScrollable: true,
                        labelColor: FlutterFlowTheme.of(context).tertiary400,
                        unselectedLabelColor:
                            FlutterFlowTheme.of(context).primaryText,
                        labelStyle: FlutterFlowTheme.of(context).titleMedium,
                        indicatorColor:
                            FlutterFlowTheme.of(context).tertiary400,
                        tabs: [
                          Tab(
                            text: 'À surveiller !',
                          ),
                          Tab(
                            text: 'Favoris',
                          ),
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            PagedListView<DocumentSnapshot<Object?>?,
                                ProductCollectionRecord>(
                              pagingController: () {
                                final Query<Object?> Function(Query<Object?>)
                                    queryBuilder = (productCollectionRecord) =>
                                        productCollectionRecord
                                            .where('is_visible',
                                                isEqualTo: true)
                                            .where('user_email',
                                                isEqualTo:
                                                    currentUserEmail != ''
                                                        ? currentUserEmail
                                                        : null)
                                            .orderBy('alerts');
                                if (_model.pagingController != null) {
                                  final query = queryBuilder(
                                      ProductCollectionRecord.collection);
                                  if (query != _model.pagingQuery) {
                                    // The query has changed
                                    _model.pagingQuery = query;
                                    _model.streamSubscriptions
                                        .forEach((s) => s?.cancel());
                                    _model.streamSubscriptions.clear();
                                    _model.pagingController!.refresh();
                                  }
                                  return _model.pagingController!;
                                }

                                _model.pagingController =
                                    PagingController(firstPageKey: null);
                                _model.pagingQuery = queryBuilder(
                                    ProductCollectionRecord.collection);
                                _model.pagingController!
                                    .addPageRequestListener((nextPageMarker) {
                                  queryProductCollectionRecordPage(
                                    queryBuilder: (productCollectionRecord) =>
                                        productCollectionRecord
                                            .where('is_visible',
                                                isEqualTo: true)
                                            .where('user_email',
                                                isEqualTo:
                                                    currentUserEmail != ''
                                                        ? currentUserEmail
                                                        : null)
                                            .orderBy('alerts'),
                                    nextPageMarker: nextPageMarker,
                                    pageSize: 5,
                                    isStream: true,
                                  ).then((page) {
                                    _model.pagingController!.appendPage(
                                      page.data,
                                      page.nextPageMarker,
                                    );
                                    final streamSubscription =
                                        page.dataStream?.listen((data) {
                                      data.forEach((item) {
                                        final itemIndexes = _model
                                            .pagingController!.itemList!
                                            .asMap()
                                            .map((k, v) =>
                                                MapEntry(v.reference.id, k));
                                        final index =
                                            itemIndexes[item.reference.id];
                                        final items =
                                            _model.pagingController!.itemList!;
                                        if (index != null) {
                                          items.replaceRange(
                                              index, index + 1, [item]);
                                          _model.pagingController!.itemList = {
                                            for (var item in items)
                                              item.reference: item
                                          }.values.toList();
                                        }
                                      });
                                      setState(() {});
                                    });
                                    _model.streamSubscriptions
                                        .add(streamSubscription);
                                  });
                                });
                                return _model.pagingController!;
                              }(),
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              reverse: false,
                              scrollDirection: Axis.vertical,
                              builderDelegate: PagedChildBuilderDelegate<
                                  ProductCollectionRecord>(
                                // Customize what your widget looks like when it's loading the first page.
                                firstPageProgressIndicatorBuilder: (_) =>
                                    Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: CircularProgressIndicator(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                                  ),
                                ),

                                itemBuilder: (context, _, listViewIndex) {
                                  final listViewProductCollectionRecord = _model
                                      .pagingController!
                                      .itemList![listViewIndex];
                                  return Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24.0, 12.0, 24.0, 0.0),
                                    child: Card(
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      elevation: 3.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      child: Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(0x4D101213),
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 12.0, 12.0, 12.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                listViewProductCollectionRecord
                                                    .name!,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.black,
                                                          fontSize: 14.0,
                                                        ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -1.0, -0.05),
                                                child: Text(
                                                  listViewProductCollectionRecord
                                                      .weightVolume!,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.black,
                                                        fontSize: 12.0,
                                                      ),
                                                ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -1.0, 0.0),
                                                    child: Image.network(
                                                      listViewProductCollectionRecord
                                                          .photo!,
                                                      width: 100.0,
                                                      height: 100.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  FlutterFlowIconButton(
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderRadius: 20.0,
                                                    borderWidth: 1.0,
                                                    buttonSize: 100.0,
                                                    icon: Icon(
                                                      Icons.alarm_rounded,
                                                      color: Colors.black,
                                                      size: 24.0,
                                                    ),
                                                    onPressed: () async {
                                                      if (listViewProductCollectionRecord
                                                              .expirationDate! >=
                                                          getCurrentTimestamp) {
                                                        await Navigator.push(
                                                          context,
                                                          PageTransition(
                                                            type:
                                                                PageTransitionType
                                                                    .rightToLeft,
                                                            duration: Duration(
                                                                milliseconds:
                                                                    100),
                                                            reverseDuration:
                                                                Duration(
                                                                    milliseconds:
                                                                        100),
                                                            child:
                                                                ProduitWidget(
                                                              productitems:
                                                                  listViewProductCollectionRecord
                                                                      .reference,
                                                            ),
                                                          ),
                                                        );
                                                      } else {
                                                        final productCollectionUpdateData =
                                                            createProductCollectionRecordData(
                                                          isVisible: false,
                                                        );
                                                        await listViewProductCollectionRecord
                                                            .reference
                                                            .update(
                                                                productCollectionUpdateData);

                                                        final userCollectionUpdateData =
                                                            {
                                                          'expired_product_count':
                                                              FieldValue
                                                                  .increment(1),
                                                        };
                                                        await currentUserReference!
                                                            .update(
                                                                userCollectionUpdateData);
                                                      }
                                                    },
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    'Quantité : ',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 12.0,
                                                        ),
                                                  ),
                                                  Text(
                                                    listViewProductCollectionRecord
                                                        .remainingQuantity!
                                                        .toString(),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 12.0,
                                                        ),
                                                  ),
                                                  Text(
                                                    listViewProductCollectionRecord
                                                        .id!,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors
                                                              .transparent,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                              Divider(
                                                height: 24.0,
                                                thickness: 1.0,
                                                color: Color(0xFFF1F4F8),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -1.0, 0.05),
                                                    child: Text(
                                                      'Période limite\nde consommation : ',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodySmall
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: Color(
                                                                    0xFF800000),
                                                                fontSize: 12.0,
                                                              ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -1.0, 0.05),
                                                    child: Text(
                                                      dateTimeFormat(
                                                          'd/M/y',
                                                          listViewProductCollectionRecord
                                                              .expirationDate!),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodySmall
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: Color(
                                                                    0xFF800000),
                                                                fontSize: 12.0,
                                                              ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            StreamBuilder<List<ProductCollectionRecord>>(
                              stream: queryProductCollectionRecord(
                                queryBuilder: (productCollectionRecord) =>
                                    productCollectionRecord
                                        .where('is_favorite', isEqualTo: true)
                                        .where('is_visible', isEqualTo: true)
                                        .where('user_email',
                                            isEqualTo: currentUserEmail != ''
                                                ? currentUserEmail
                                                : null)
                                        .orderBy('alerts'),
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50.0,
                                      height: 50.0,
                                      child: CircularProgressIndicator(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                  );
                                }
                                List<ProductCollectionRecord>
                                    listViewProductCollectionRecordList =
                                    snapshot.data!;
                                return ListView.builder(
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: listViewProductCollectionRecordList
                                      .length,
                                  itemBuilder: (context, listViewIndex) {
                                    final listViewProductCollectionRecord =
                                        listViewProductCollectionRecordList[
                                            listViewIndex];
                                    return Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24.0, 12.0, 24.0, 0.0),
                                      child: Card(
                                        clipBehavior:
                                            Clip.antiAliasWithSaveLayer,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        elevation: 3.0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                        child: Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0x4D101213),
                                              )
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 12.0, 12.0, 12.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  listViewProductCollectionRecord
                                                      .name!,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .headlineMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.black,
                                                        fontSize: 14.0,
                                                      ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1.0, -0.05),
                                                  child: Text(
                                                    listViewProductCollectionRecord
                                                        .weightVolume!,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.black,
                                                          fontSize: 12.0,
                                                        ),
                                                  ),
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              -1.0, 0.0),
                                                      child: Image.network(
                                                        listViewProductCollectionRecord
                                                            .photo!,
                                                        width: 100.0,
                                                        height: 100.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                    FlutterFlowIconButton(
                                                      borderColor:
                                                          Colors.transparent,
                                                      borderRadius: 20.0,
                                                      borderWidth: 1.0,
                                                      buttonSize: 100.0,
                                                      icon: Icon(
                                                        Icons
                                                            .arrow_forward_ios_rounded,
                                                        color: Colors.black,
                                                        size: 24.0,
                                                      ),
                                                      onPressed: () async {
                                                        await Navigator.push(
                                                          context,
                                                          PageTransition(
                                                            type:
                                                                PageTransitionType
                                                                    .rightToLeft,
                                                            duration: Duration(
                                                                milliseconds:
                                                                    100),
                                                            reverseDuration:
                                                                Duration(
                                                                    milliseconds:
                                                                        100),
                                                            child:
                                                                ProduitWidget(
                                                              productitems:
                                                                  listViewProductCollectionRecord
                                                                      .reference,
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Text(
                                                      'Quantité : ',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 12.0,
                                                              ),
                                                    ),
                                                    Text(
                                                      listViewProductCollectionRecord
                                                          .remainingQuantity!
                                                          .toString(),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 12.0,
                                                              ),
                                                    ),
                                                    Text(
                                                      listViewProductCollectionRecord
                                                          .id!,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: Colors
                                                                    .transparent,
                                                              ),
                                                    ),
                                                  ],
                                                ),
                                                Divider(
                                                  height: 24.0,
                                                  thickness: 1.0,
                                                  color: Color(0xFFF1F4F8),
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              -1.0, 0.05),
                                                      child: Text(
                                                        'Période limite\nde consommation : ',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodySmall
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              color: Color(
                                                                  0xFF800000),
                                                              fontSize: 12.0,
                                                            ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              -1.0, 0.05),
                                                      child: Text(
                                                        dateTimeFormat(
                                                            'd/M',
                                                            listViewProductCollectionRecord
                                                                .expirationDate!),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodySmall
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              color: Color(
                                                                  0xFF800000),
                                                              fontSize: 12.0,
                                                            ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
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
      ),
    );
  }
}
