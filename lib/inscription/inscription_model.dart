import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/main.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InscriptionModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for detenteurs widget.
  int? detenteursValue;
  // State field(s) for display_name widget.
  TextEditingController? displayNameController;
  String? Function(BuildContext, String?)? displayNameControllerValidator;
  // State field(s) for email widget.
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  // State field(s) for ville widget.
  TextEditingController? villeController1;
  String? Function(BuildContext, String?)? villeController1Validator;
  // State field(s) for ville widget.
  TextEditingController? villeController2;
  String? Function(BuildContext, String?)? villeController2Validator;
  // State field(s) for ville widget.
  TextEditingController? villeController3;
  String? Function(BuildContext, String?)? villeController3Validator;
  // State field(s) for password widget.
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;
  // State field(s) for passwordConfirmation widget.
  TextEditingController? passwordConfirmationController;
  late bool passwordConfirmationVisibility;
  String? Function(BuildContext, String?)?
      passwordConfirmationControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordVisibility = false;
    passwordConfirmationVisibility = false;
  }

  void dispose() {
    displayNameController?.dispose();
    emailController?.dispose();
    villeController1?.dispose();
    villeController2?.dispose();
    villeController3?.dispose();
    passwordController?.dispose();
    passwordConfirmationController?.dispose();
  }

  /// Additional helper methods are added here.

}
