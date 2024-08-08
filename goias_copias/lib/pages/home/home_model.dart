import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/components/drawer_widget.dart';
import '/components/footer_widget.dart';
import '/components/header_line_widget.dart';
import '/components/login_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Drawer component.
  late DrawerModel drawerModel;
  // Model for Header_Line component.
  late HeaderLineModel headerLineModel;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  ProdutosRecord? impressaoRetornoHome;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  ProdutosRecord? encadernacaoRetornoHome;
  // Model for Footer component.
  late FooterModel footerModel;
  // Model for Login component.
  late LoginModel loginModel;

  @override
  void initState(BuildContext context) {
    drawerModel = createModel(context, () => DrawerModel());
    headerLineModel = createModel(context, () => HeaderLineModel());
    footerModel = createModel(context, () => FooterModel());
    loginModel = createModel(context, () => LoginModel());
  }

  @override
  void dispose() {
    drawerModel.dispose();
    headerLineModel.dispose();
    footerModel.dispose();
    loginModel.dispose();
  }
}
