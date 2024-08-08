import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/components/drawer_widget.dart';
import '/components/footer_widget.dart';
import '/components/header_line_widget.dart';
import '/components/login_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'calc_model.dart';
export 'calc_model.dart';

class CalcWidget extends StatefulWidget {
  const CalcWidget({
    super.key,
    this.produto,
    bool? encad,
  }) : this.encad = encad ?? false;

  final ProdutosRecord? produto;
  final bool encad;

  @override
  State<CalcWidget> createState() => _CalcWidgetState();
}

class _CalcWidgetState extends State<CalcWidget> {
  late CalcModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CalcModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              print('FloatingActionButton pressed ...');
            },
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            elevation: 8.0,
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  await launchURL('https://wa.me/5562999338861');
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(24.0),
                  child: Image.asset(
                    'assets/images/19490735-logotipo-do-whatsapp-do-logotipo-do-icone-do-whatsapp-gratis-gratis-vetor.jpg',
                    width: 300.0,
                    height: 288.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          drawer: Drawer(
            elevation: 16.0,
            child: wrapWithModel(
              model: _model.drawerModel,
              updateCallback: () => setState(() {}),
              child: DrawerWidget(),
            ),
          ),
          body: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: 100.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                      tabletLandscape: false,
                    ))
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            40.0, 12.0, 40.0, 12.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/gois_cpias.gif',
                                height: 80.0,
                                fit: BoxFit.contain,
                              ),
                            ),
                            if (responsiveVisibility(
                              context: context,
                              phone: false,
                              tablet: false,
                              tabletLandscape: false,
                            ))
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    60.0, 10.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed('Home');
                                      },
                                      child: Text(
                                        'INÍCIO',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed(
                                          'Loja',
                                          queryParameters: {
                                            'categoria': serializeParam(
                                              'Impressao',
                                              ParamType.String,
                                            ),
                                          }.withoutNulls,
                                        );
                                      },
                                      child: Text(
                                        'IMPRESSÃO LASER',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed(
                                          'Loja',
                                          queryParameters: {
                                            'categoria': serializeParam(
                                              'Impressao',
                                              ParamType.String,
                                            ),
                                          }.withoutNulls,
                                        );
                                      },
                                      child: Text(
                                        'ENCADERNAÇÃO',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed(
                                          'Loja',
                                          queryParameters: {
                                            'categoria': serializeParam(
                                              'Apostilas',
                                              ParamType.String,
                                            ),
                                          }.withoutNulls,
                                        );
                                      },
                                      child: Text(
                                        'APOSTILAS',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        await launchURL(
                                            'https://wa.me/5562999338861');
                                      },
                                      child: Text(
                                        'CONTATO',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                    if (currentUserEmail ==
                                        'goiascopias.adm@gmail.com')
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed('ADM');
                                        },
                                        child: Text(
                                          'EDITAR LOJA',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Montserrat',
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ),
                                  ].divide(SizedBox(width: 20.0)),
                                ),
                              ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                FFAppState().Login = true;
                                setState(() {});

                                context.pushNamed('Home');
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (currentUserEmail != null &&
                                          currentUserEmail != '') {
                                        context.pushNamed('UserArea');
                                      }
                                    },
                                    child: Icon(
                                      Icons.person,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                  if (currentUserEmail == null ||
                                      currentUserEmail == '')
                                    Text(
                                      'Entrar/Cadastrar',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Rajdhani',
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                ].divide(SizedBox(width: 5.0)),
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed('Carrinho');
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Icon(
                                    Icons.shopping_cart,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 24.0,
                                  ),
                                  Text(
                                    'R\$ ${valueOrDefault<String>(
                                      formatNumber(
                                        FFAppState().CarrinhoState.totalTotal,
                                        formatType: FormatType.decimal,
                                        decimalType: DecimalType.commaDecimal,
                                      ),
                                      '0,00',
                                    )}',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Rajdhani',
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ].divide(SizedBox(width: 5.0)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    if (responsiveVisibility(
                      context: context,
                      desktop: false,
                    ))
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 12.0, 10.0, 12.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 10.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  scaffoldKey.currentState!.openDrawer();
                                },
                                child: Icon(
                                  Icons.menu,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 30.0,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  60.0, 0.0, 0.0, 0.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'assets/images/gois_cpias.gif',
                                  height: 80.0,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            if (responsiveVisibility(
                              context: context,
                              phone: false,
                              tablet: false,
                              tabletLandscape: false,
                            ))
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    60.0, 10.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'INÍCIO',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Rajdhani',
                                            fontSize: 22.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                    Text(
                                      'IMPRESSÃO JATO DE TINTA',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Rajdhani',
                                            fontSize: 22.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                    Text(
                                      'IMPRESSÃO LASER',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Rajdhani',
                                            fontSize: 22.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                    Text(
                                      'CONTATOS',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Rajdhani',
                                            fontSize: 22.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ].divide(SizedBox(width: 20.0)),
                                ),
                              ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 10.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (currentUserEmail != null &&
                                          currentUserEmail != '') {
                                        context.pushNamed('UserArea');
                                      } else {
                                        await showModalBottomSheet(
                                          isScrollControlled: true,
                                          backgroundColor: Colors.transparent,
                                          enableDrag: false,
                                          context: context,
                                          builder: (context) {
                                            return GestureDetector(
                                              onTap: () =>
                                                  FocusScope.of(context)
                                                      .unfocus(),
                                              child: Padding(
                                                padding:
                                                    MediaQuery.viewInsetsOf(
                                                        context),
                                                child: LoginWidget(),
                                              ),
                                            );
                                          },
                                        ).then((value) => safeSetState(() {}));
                                      }
                                    },
                                    child: Icon(
                                      Icons.person,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed('Carrinho');
                                    },
                                    child: Icon(
                                      Icons.shopping_cart,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                ].divide(SizedBox(width: 20.0)),
                              ),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
              wrapWithModel(
                model: _model.headerLineModel,
                updateCallback: () => setState(() {}),
                child: HeaderLineWidget(),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 10.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  constraints: BoxConstraints(
                                    minHeight: 550.0,
                                    maxWidth: 800.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(20.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 5.0, 0.0, 0.0),
                                              child: Wrap(
                                                spacing: 20.0,
                                                runSpacing: 20.0,
                                                alignment: WrapAlignment.start,
                                                crossAxisAlignment:
                                                    WrapCrossAlignment.start,
                                                direction: Axis.horizontal,
                                                runAlignment:
                                                    WrapAlignment.start,
                                                verticalDirection:
                                                    VerticalDirection.down,
                                                clipBehavior: Clip.none,
                                                children: [
                                                  Container(
                                                    width: 400.0,
                                                    decoration: BoxDecoration(),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .stretch,
                                                          children: [
                                                            ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              child:
                                                                  Image.network(
                                                                widget!.produto!
                                                                    .foto,
                                                                width: 280.0,
                                                                height: 200.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          10.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  widget!
                                                                      .produto
                                                                      ?.descricao,
                                                                  'Descrição',
                                                                ),
                                                                textAlign:
                                                                    TextAlign
                                                                        .justify,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Montserrat',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      fontSize:
                                                                          16.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
                                                                    ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          20.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .end,
                                                                    children: [
                                                                      Text(
                                                                        'Como usar',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Montserrat',
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                      InkWell(
                                                                        splashColor:
                                                                            Colors.transparent,
                                                                        focusColor:
                                                                            Colors.transparent,
                                                                        hoverColor:
                                                                            Colors.transparent,
                                                                        highlightColor:
                                                                            Colors.transparent,
                                                                        onTap:
                                                                            () async {
                                                                          _model.comoUsar =
                                                                              !_model.comoUsar;
                                                                          setState(
                                                                              () {});
                                                                        },
                                                                        child:
                                                                            FaIcon(
                                                                          FontAwesomeIcons
                                                                              .questionCircle,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                      ),
                                                                    ].divide(SizedBox(
                                                                        width:
                                                                            10.0)),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          10.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color(
                                                                      0x2DE65454),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              5.0),
                                                                ),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          10.0,
                                                                          10.0,
                                                                          10.0),
                                                                  child: Text(
                                                                    'O site calcula automaticamente a quantidade de páginas dos seus arquivos. Em alguns casos pode ser que o sistema não consiga ler algum arquivo pdf. Isso pode acontecer com arquivos protegidos por senha, corrompidos ou que tenham caracteres especiais no nome. Caso haja diferença, entre em contato através do nosso Whatsapp.',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .justify,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Montserrat',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          fontSize:
                                                                              14.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 310.0,
                                                    decoration: BoxDecoration(),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                              constraints:
                                                                  BoxConstraints(
                                                                minWidth: 350.0,
                                                              ),
                                                              decoration:
                                                                  BoxDecoration(),
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  widget!
                                                                      .produto
                                                                      ?.nome,
                                                                  'Nome do Produto',
                                                                ),
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Montserrat',
                                                                      fontSize:
                                                                          20.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                              ),
                                                            ),
                                                          ].divide(SizedBox(
                                                              height: 5.0)),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      15.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Container(
                                                            width: 300.0,
                                                            height: 100.0,
                                                            child: custom_widgets
                                                                .PdfUploader(
                                                              width: 300.0,
                                                              height: 100.0,
                                                              maxSizeInBytes:
                                                                  104857600,
                                                            ),
                                                          ),
                                                        ),
                                                        Text(
                                                          'Quantidade de Arquivos: ${valueOrDefault<String>(
                                                            _model.num,
                                                            '0',
                                                          )}',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Montserrat',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                        Text(
                                                          'Páginas: ${_model.pags}',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Montserrat',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      15.0),
                                                          child: Text(
                                                            'Folhas: ${valueOrDefault<String>(
                                                              _model.folhas,
                                                              '0',
                                                            )}',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ),
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Theme(
                                                                  data:
                                                                      ThemeData(
                                                                    checkboxTheme:
                                                                        CheckboxThemeData(
                                                                      visualDensity:
                                                                          VisualDensity
                                                                              .compact,
                                                                      materialTapTargetSize:
                                                                          MaterialTapTargetSize
                                                                              .shrinkWrap,
                                                                      shape:
                                                                          RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(4.0),
                                                                      ),
                                                                    ),
                                                                    unselectedWidgetColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                  ),
                                                                  child:
                                                                      Checkbox(
                                                                    value: _model
                                                                            .checkbox75gValue ??=
                                                                        _model
                                                                            .check75,
                                                                    onChanged:
                                                                        (newValue) async {
                                                                      setState(() =>
                                                                          _model.checkbox75gValue =
                                                                              newValue!);
                                                                      if (newValue!) {
                                                                        setState(
                                                                            () {
                                                                          _model.checkbox90gValue =
                                                                              false;
                                                                        });
                                                                      }
                                                                    },
                                                                    side:
                                                                        BorderSide(
                                                                      width: 2,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                    ),
                                                                    activeColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                    checkColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .info,
                                                                  ),
                                                                ),
                                                                Text(
                                                                  '75g',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            16.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Theme(
                                                                      data:
                                                                          ThemeData(
                                                                        checkboxTheme:
                                                                            CheckboxThemeData(
                                                                          visualDensity:
                                                                              VisualDensity.compact,
                                                                          materialTapTargetSize:
                                                                              MaterialTapTargetSize.shrinkWrap,
                                                                          shape:
                                                                              RoundedRectangleBorder(
                                                                            borderRadius:
                                                                                BorderRadius.circular(4.0),
                                                                          ),
                                                                        ),
                                                                        unselectedWidgetColor:
                                                                            FlutterFlowTheme.of(context).secondaryText,
                                                                      ),
                                                                      child:
                                                                          Checkbox(
                                                                        value: _model.checkbox90gValue ??=
                                                                            false,
                                                                        onChanged:
                                                                            (newValue) async {
                                                                          setState(() =>
                                                                              _model.checkbox90gValue = newValue!);
                                                                          if (newValue!) {
                                                                            _model.g75 =
                                                                                false;
                                                                            _model.check75 =
                                                                                false;
                                                                            setState(() {});
                                                                            setState(() {
                                                                              _model.checkbox75gValue = _model.check75;
                                                                            });
                                                                          }
                                                                        },
                                                                        side:
                                                                            BorderSide(
                                                                          width:
                                                                              2,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                        ),
                                                                        activeColor:
                                                                            FlutterFlowTheme.of(context).primary,
                                                                        checkColor:
                                                                            FlutterFlowTheme.of(context).info,
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      '90g',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            fontSize:
                                                                                16.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ].divide(SizedBox(
                                                                  width: 20.0)),
                                                            ),
                                                          ].divide(SizedBox(
                                                              width: 15.0)),
                                                        ),
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Theme(
                                                              data: ThemeData(
                                                                checkboxTheme:
                                                                    CheckboxThemeData(
                                                                  visualDensity:
                                                                      VisualDensity
                                                                          .compact,
                                                                  materialTapTargetSize:
                                                                      MaterialTapTargetSize
                                                                          .shrinkWrap,
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            4.0),
                                                                  ),
                                                                ),
                                                                unselectedWidgetColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                              ),
                                                              child: Checkbox(
                                                                value: _model
                                                                        .checkboxFrenteVValue ??=
                                                                    false,
                                                                onChanged:
                                                                    (newValue) async {
                                                                  setState(() =>
                                                                      _model.checkboxFrenteVValue =
                                                                          newValue!);
                                                                },
                                                                side:
                                                                    BorderSide(
                                                                  width: 2,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                ),
                                                                activeColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                checkColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .info,
                                                              ),
                                                            ),
                                                            Text(
                                                              'Frente e Verso',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Montserrat',
                                                                    fontSize:
                                                                        16.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                          ].divide(SizedBox(
                                                              width: 0.0)),
                                                        ),
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Theme(
                                                              data: ThemeData(
                                                                checkboxTheme:
                                                                    CheckboxThemeData(
                                                                  visualDensity:
                                                                      VisualDensity
                                                                          .compact,
                                                                  materialTapTargetSize:
                                                                      MaterialTapTargetSize
                                                                          .shrinkWrap,
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            4.0),
                                                                  ),
                                                                ),
                                                                unselectedWidgetColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                              ),
                                                              child: Checkbox(
                                                                value: _model
                                                                        .checkboxColoridoValue ??=
                                                                    false,
                                                                onChanged:
                                                                    (newValue) async {
                                                                  setState(() =>
                                                                      _model.checkboxColoridoValue =
                                                                          newValue!);
                                                                },
                                                                side:
                                                                    BorderSide(
                                                                  width: 2,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                ),
                                                                activeColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                checkColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .info,
                                                              ),
                                                            ),
                                                            Text(
                                                              'Colorido',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Montserrat',
                                                                    fontSize:
                                                                        16.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                          ].divide(SizedBox(
                                                              width: 0.0)),
                                                        ),
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Theme(
                                                                  data:
                                                                      ThemeData(
                                                                    checkboxTheme:
                                                                        CheckboxThemeData(
                                                                      visualDensity:
                                                                          VisualDensity
                                                                              .compact,
                                                                      materialTapTargetSize:
                                                                          MaterialTapTargetSize
                                                                              .shrinkWrap,
                                                                      shape:
                                                                          RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(4.0),
                                                                      ),
                                                                    ),
                                                                    unselectedWidgetColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                  ),
                                                                  child:
                                                                      Checkbox(
                                                                    value: _model
                                                                            .checkboxEncadernacaoValue ??=
                                                                        widget!
                                                                            .encad,
                                                                    onChanged:
                                                                        (newValue) async {
                                                                      setState(() =>
                                                                          _model.checkboxEncadernacaoValue =
                                                                              newValue!);
                                                                      if (newValue!) {
                                                                        setState(
                                                                            () {
                                                                          _model.checkboxIndividuaisValue =
                                                                              _model.checkEncad;
                                                                          _model.checkboxJuntosValue =
                                                                              false;
                                                                          _model.checkboxVerticalValue =
                                                                              _model.checkVert;
                                                                          _model.checkboxHorizontalValue =
                                                                              false;
                                                                        });
                                                                      }
                                                                    },
                                                                    side:
                                                                        BorderSide(
                                                                      width: 2,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                    ),
                                                                    activeColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                    checkColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .info,
                                                                  ),
                                                                ),
                                                                Text(
                                                                  'Encadernação Espiral',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            16.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ].divide(SizedBox(
                                                              width: 15.0)),
                                                        ),
                                                        if (valueOrDefault<
                                                            bool>(
                                                          _model
                                                              .checkboxEncadernacaoValue,
                                                          false,
                                                        ))
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            10.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Text(
                                                                      'Divisão:',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            fontSize:
                                                                                16.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Theme(
                                                                    data:
                                                                        ThemeData(
                                                                      checkboxTheme:
                                                                          CheckboxThemeData(
                                                                        visualDensity:
                                                                            VisualDensity.compact,
                                                                        materialTapTargetSize:
                                                                            MaterialTapTargetSize.shrinkWrap,
                                                                        shape:
                                                                            RoundedRectangleBorder(
                                                                          borderRadius:
                                                                              BorderRadius.circular(4.0),
                                                                        ),
                                                                      ),
                                                                      unselectedWidgetColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondaryText,
                                                                    ),
                                                                    child:
                                                                        Checkbox(
                                                                      value: _model
                                                                              .checkboxIndividuaisValue ??=
                                                                          _model
                                                                              .checkEncad,
                                                                      onChanged:
                                                                          (newValue) async {
                                                                        setState(() =>
                                                                            _model.checkboxIndividuaisValue =
                                                                                newValue!);
                                                                        if (newValue!) {
                                                                          _model.divisao =
                                                                              true;
                                                                          setState(
                                                                              () {});
                                                                          setState(
                                                                              () {
                                                                            _model.checkboxJuntosValue =
                                                                                false;
                                                                          });
                                                                        } else {
                                                                          _model.divisao =
                                                                              false;
                                                                          setState(
                                                                              () {});
                                                                          setState(
                                                                              () {
                                                                            _model.checkboxJuntosValue =
                                                                                false;
                                                                          });
                                                                        }
                                                                      },
                                                                      side:
                                                                          BorderSide(
                                                                        width:
                                                                            2,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                      ),
                                                                      activeColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primary,
                                                                      checkColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .info,
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    'Encadernações inviduais',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Montserrat',
                                                                          fontSize:
                                                                              16.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Theme(
                                                                    data:
                                                                        ThemeData(
                                                                      checkboxTheme:
                                                                          CheckboxThemeData(
                                                                        visualDensity:
                                                                            VisualDensity.compact,
                                                                        materialTapTargetSize:
                                                                            MaterialTapTargetSize.shrinkWrap,
                                                                        shape:
                                                                            RoundedRectangleBorder(
                                                                          borderRadius:
                                                                              BorderRadius.circular(4.0),
                                                                        ),
                                                                      ),
                                                                      unselectedWidgetColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondaryText,
                                                                    ),
                                                                    child:
                                                                        Checkbox(
                                                                      value: _model
                                                                              .checkboxJuntosValue ??=
                                                                          false,
                                                                      onChanged:
                                                                          (newValue) async {
                                                                        setState(() =>
                                                                            _model.checkboxJuntosValue =
                                                                                newValue!);
                                                                        if (newValue!) {
                                                                          _model.checkEncad =
                                                                              false;
                                                                          setState(
                                                                              () {});
                                                                          setState(
                                                                              () {
                                                                            _model.checkboxIndividuaisValue =
                                                                                _model.checkEncad;
                                                                          });
                                                                          _model.divisao =
                                                                              false;
                                                                          setState(
                                                                              () {});
                                                                        }
                                                                      },
                                                                      side:
                                                                          BorderSide(
                                                                        width:
                                                                            2,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                      ),
                                                                      activeColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primary,
                                                                      checkColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .info,
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    'Juntando os arquivos',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Montserrat',
                                                                          fontSize:
                                                                              16.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            10.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Text(
                                                                      'Orientação:',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            fontSize:
                                                                                16.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            5.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Theme(
                                                                      data:
                                                                          ThemeData(
                                                                        checkboxTheme:
                                                                            CheckboxThemeData(
                                                                          visualDensity:
                                                                              VisualDensity.compact,
                                                                          materialTapTargetSize:
                                                                              MaterialTapTargetSize.shrinkWrap,
                                                                          shape:
                                                                              RoundedRectangleBorder(
                                                                            borderRadius:
                                                                                BorderRadius.circular(4.0),
                                                                          ),
                                                                        ),
                                                                        unselectedWidgetColor:
                                                                            FlutterFlowTheme.of(context).secondaryText,
                                                                      ),
                                                                      child:
                                                                          Checkbox(
                                                                        value: _model.checkboxVerticalValue ??=
                                                                            _model.checkVert,
                                                                        onChanged:
                                                                            (newValue) async {
                                                                          setState(() =>
                                                                              _model.checkboxVerticalValue = newValue!);
                                                                          if (newValue!) {
                                                                            setState(() {
                                                                              _model.checkboxHorizontalValue = false;
                                                                            });
                                                                            _model.vertical =
                                                                                valueOrDefault<String>(
                                                                              _model.checkboxHorizontalValue! ? 'Horizontal' : 'Vertical',
                                                                              '-',
                                                                            );
                                                                            setState(() {});
                                                                          } else {
                                                                            setState(() {
                                                                              _model.checkboxHorizontalValue = false;
                                                                            });
                                                                            _model.vertical =
                                                                                valueOrDefault<String>(
                                                                              _model.checkboxHorizontalValue! ? 'Horizontal' : 'Vertical',
                                                                              '-',
                                                                            );
                                                                            setState(() {});
                                                                          }
                                                                        },
                                                                        side:
                                                                            BorderSide(
                                                                          width:
                                                                              2,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                        ),
                                                                        activeColor:
                                                                            FlutterFlowTheme.of(context).primary,
                                                                        checkColor:
                                                                            FlutterFlowTheme.of(context).info,
                                                                      ),
                                                                    ),
                                                                    ClipRRect(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              0.0),
                                                                      child: Image
                                                                          .asset(
                                                                        'assets/images/vertical.png',
                                                                        width:
                                                                            50.0,
                                                                        height:
                                                                            60.0,
                                                                        fit: BoxFit
                                                                            .contain,
                                                                        alignment: Alignment(
                                                                            0.0,
                                                                            1.0),
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      'Vertical',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            fontSize:
                                                                                16.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                  ].divide(SizedBox(
                                                                      width:
                                                                          5.0)),
                                                                ),
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Theme(
                                                                    data:
                                                                        ThemeData(
                                                                      checkboxTheme:
                                                                          CheckboxThemeData(
                                                                        visualDensity:
                                                                            VisualDensity.compact,
                                                                        materialTapTargetSize:
                                                                            MaterialTapTargetSize.shrinkWrap,
                                                                        shape:
                                                                            RoundedRectangleBorder(
                                                                          borderRadius:
                                                                              BorderRadius.circular(4.0),
                                                                        ),
                                                                      ),
                                                                      unselectedWidgetColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondaryText,
                                                                    ),
                                                                    child:
                                                                        Checkbox(
                                                                      value: _model
                                                                              .checkboxHorizontalValue ??=
                                                                          false,
                                                                      onChanged:
                                                                          (newValue) async {
                                                                        setState(() =>
                                                                            _model.checkboxHorizontalValue =
                                                                                newValue!);
                                                                        if (newValue!) {
                                                                          _model.checkVert =
                                                                              false;
                                                                          setState(
                                                                              () {});
                                                                          setState(
                                                                              () {
                                                                            _model.checkboxVerticalValue =
                                                                                _model.checkVert;
                                                                          });
                                                                          _model.vertical =
                                                                              valueOrDefault<String>(
                                                                            _model.checkboxHorizontalValue!
                                                                                ? 'Horizontal'
                                                                                : 'Vertical',
                                                                            '-',
                                                                          );
                                                                          setState(
                                                                              () {});
                                                                        } else {
                                                                          setState(
                                                                              () {
                                                                            _model.checkboxVerticalValue =
                                                                                _model.checkVert;
                                                                          });
                                                                          _model.vertical =
                                                                              valueOrDefault<String>(
                                                                            _model.checkboxHorizontalValue!
                                                                                ? 'Horizontal'
                                                                                : 'Vertical',
                                                                            '-',
                                                                          );
                                                                          setState(
                                                                              () {});
                                                                        }
                                                                      },
                                                                      side:
                                                                          BorderSide(
                                                                        width:
                                                                            2,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                      ),
                                                                      activeColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primary,
                                                                      checkColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .info,
                                                                    ),
                                                                  ),
                                                                  ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            0.0),
                                                                    child: Image
                                                                        .asset(
                                                                      'assets/images/horizontal.png',
                                                                      width:
                                                                          65.0,
                                                                      height:
                                                                          45.0,
                                                                      fit: BoxFit
                                                                          .contain,
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    'Horizontal',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Montserrat',
                                                                          fontSize:
                                                                              16.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    width:
                                                                        5.0)),
                                                              ),
                                                            ].divide(SizedBox(
                                                                height: 5.0)),
                                                          ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      10.0,
                                                                      0.0,
                                                                      10.0),
                                                          child: InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              if (FFAppState()
                                                                      .pdfString ==
                                                                  'null') {
                                                                _model.folhas =
                                                                    '0';
                                                                _model.impre =
                                                                    '0';
                                                                _model.pags =
                                                                    '0';
                                                                _model.encad =
                                                                    '0';
                                                                _model.valor =
                                                                    '0';
                                                                _model.num =
                                                                    '0';
                                                                setState(() {});
                                                              }
                                                              _model.pdfToUpload =
                                                                  await actions
                                                                      .baseToByte();
                                                              _model.out =
                                                                  await actions
                                                                      .calculateCost(
                                                                _model
                                                                    .pdfToUpload!
                                                                    .toList(),
                                                                _model
                                                                    .checkboxColoridoValue!,
                                                                _model
                                                                    .checkboxFrenteVValue!,
                                                                _model
                                                                    .checkbox75gValue!,
                                                                valueOrDefault<
                                                                    bool>(
                                                                  _model
                                                                      .checkboxIndividuaisValue,
                                                                  false,
                                                                ),
                                                                valueOrDefault<
                                                                    bool>(
                                                                  _model
                                                                      .checkboxEncadernacaoValue,
                                                                  false,
                                                                ),
                                                              );
                                                              _model.folhas =
                                                                  getJsonField(
                                                                _model.out,
                                                                r'''$.Paginas''',
                                                              ).toString();
                                                              _model.impre =
                                                                  getJsonField(
                                                                _model.out,
                                                                r'''$.Impressoes''',
                                                              ).toString();
                                                              _model.pags =
                                                                  getJsonField(
                                                                _model.out,
                                                                r'''$.Folhas''',
                                                              ).toString();
                                                              _model.encad =
                                                                  getJsonField(
                                                                _model.out,
                                                                r'''$.Encad''',
                                                              ).toString();
                                                              _model.valor =
                                                                  getJsonField(
                                                                _model.out,
                                                                r'''$.Valor''',
                                                              ).toString();
                                                              _model.num =
                                                                  valueOrDefault<
                                                                      String>(
                                                                _model
                                                                    .pdfToUpload
                                                                    ?.length
                                                                    ?.toString(),
                                                                '0',
                                                              );
                                                              _model.altura =
                                                                  valueOrDefault<
                                                                      String>(
                                                                getJsonField(
                                                                  _model.out,
                                                                  r'''$.Dimensoes.height''',
                                                                )?.toString(),
                                                                '0',
                                                              );
                                                              _model.valorDouble =
                                                                  valueOrDefault<
                                                                      double>(
                                                                double.parse(
                                                                    getJsonField(
                                                                  _model.out,
                                                                  r'''$.Valor''',
                                                                ).toString()),
                                                                0.0,
                                                              );
                                                              setState(() {});

                                                              setState(() {});
                                                            },
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Text(
                                                                          'Atualizar',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Montserrat',
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w500,
                                                                              ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ].divide(SizedBox(
                                                                      width:
                                                                          20.0)),
                                                                ),
                                                                Icon(
                                                                  Icons.refresh,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  size: 24.0,
                                                                ),
                                                              ].divide(SizedBox(
                                                                  width: 10.0)),
                                                            ),
                                                          ),
                                                        ),
                                                        Text(
                                                          'Total: R\$ ${(String var1) {
                                                            return double
                                                                    .parse(var1)
                                                                .toStringAsFixed(
                                                                    2)
                                                                .replaceAll(
                                                                    '.', ',')
                                                                .replaceAllMapped(
                                                                    RegExp(
                                                                        r'(?<=\d)(?=(\d{3})+(?!\d))'),
                                                                    (match) =>
                                                                        '.');
                                                          }(valueOrDefault<String>(
                                                            _model.valor,
                                                            '0',
                                                          ))}',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Montserrat',
                                                                fontSize: 16.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      10.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              if (_model
                                                                      .valorDouble <=
                                                                  0.0) {
                                                                await showDialog(
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (alertDialogContext) {
                                                                    return AlertDialog(
                                                                      title: Text(
                                                                          'Não há nada adicionado!'),
                                                                      content: Text(
                                                                          'Atualize a calculadora de custos.'),
                                                                      actions: [
                                                                        TextButton(
                                                                          onPressed: () =>
                                                                              Navigator.pop(alertDialogContext),
                                                                          child:
                                                                              Text('Ok'),
                                                                        ),
                                                                      ],
                                                                    );
                                                                  },
                                                                );
                                                                return;
                                                              }
                                                              _model.visivel =
                                                                  true;
                                                              setState(() {});
                                                              FFAppState()
                                                                  .updateCarrinhoStateStruct(
                                                                (e) => e
                                                                  ..updateProdutos(
                                                                    (e) => e.add(
                                                                        ProdutosStruct(
                                                                      nome: widget!
                                                                          .produto
                                                                          ?.nome,
                                                                      valor:
                                                                          getJsonField(
                                                                        _model
                                                                            .out,
                                                                        r'''$.Valor''',
                                                                      ),
                                                                      quantidade:
                                                                          1,
                                                                      foto: widget!
                                                                          .produto
                                                                          ?.foto,
                                                                      ref: widget!
                                                                          .produto
                                                                          ?.reference,
                                                                      peso:
                                                                          getJsonField(
                                                                        _model
                                                                            .out,
                                                                        r'''$.Peso''',
                                                                      ),
                                                                      altura:
                                                                          getJsonField(
                                                                        _model
                                                                            .out,
                                                                        r'''$.Dimensoes.depth''',
                                                                      ),
                                                                      largura:
                                                                          getJsonField(
                                                                        _model
                                                                            .out,
                                                                        r'''$.Dimensoes.width''',
                                                                      ),
                                                                      espessura:
                                                                          getJsonField(
                                                                        _model
                                                                            .out,
                                                                        r'''$.Dimensoes.height''',
                                                                      ),
                                                                      g75: _model
                                                                          .checkbox75gValue,
                                                                      g90: _model
                                                                          .checkbox90gValue,
                                                                      frenteVerso:
                                                                          valueOrDefault<
                                                                              bool>(
                                                                        _model
                                                                            .checkboxFrenteVValue,
                                                                        false,
                                                                      ),
                                                                      orientacao:
                                                                          valueOrDefault<
                                                                              String>(
                                                                        _model
                                                                            .vertical,
                                                                        '-',
                                                                      ),
                                                                      dividido:
                                                                          valueOrDefault<
                                                                              bool>(
                                                                        _model
                                                                            .divisao,
                                                                        false,
                                                                      ),
                                                                      colorido:
                                                                          _model
                                                                              .checkboxColoridoValue,
                                                                      encadernacoes:
                                                                          valueOrDefault<
                                                                              int>(
                                                                        int.parse(
                                                                            _model.encad),
                                                                        0,
                                                                      ),
                                                                      impressoes:
                                                                          valueOrDefault<
                                                                              int>(
                                                                        int.parse(
                                                                            _model.impre),
                                                                        0,
                                                                      ),
                                                                      qntArquivos:
                                                                          valueOrDefault<
                                                                              int>(
                                                                        int.parse(
                                                                            _model.num),
                                                                        0,
                                                                      ),
                                                                      pDFs: FFAppState()
                                                                          .pdfStringList,
                                                                      subTotal:
                                                                          getJsonField(
                                                                        _model
                                                                            .out,
                                                                        r'''$.Valor''',
                                                                      ),
                                                                      pesoTotalProduto:
                                                                          getJsonField(
                                                                        _model
                                                                            .out,
                                                                        r'''$.Peso''',
                                                                      ),
                                                                      alturaTotalProduto:
                                                                          getJsonField(
                                                                        _model
                                                                            .out,
                                                                        r'''$.Dimensoes.depth''',
                                                                      ),
                                                                      larguraTotalProduto:
                                                                          getJsonField(
                                                                        _model
                                                                            .out,
                                                                        r'''$.Dimensoes.width''',
                                                                      ),
                                                                      espessuraTotalProduto:
                                                                          getJsonField(
                                                                        _model
                                                                            .out,
                                                                        r'''$.Dimensoes.height''',
                                                                      ),
                                                                    )),
                                                                  )
                                                                  ..subTotalTotal = functions
                                                                      .stringToDoubleSOMA(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            getJsonField(
                                                                              _model.out,
                                                                              r'''$.Valor''',
                                                                            )?.toString(),
                                                                            '0',
                                                                          ),
                                                                          valueOrDefault<
                                                                              String>(
                                                                            FFAppState().CarrinhoState.subTotalTotal.toString(),
                                                                            '0',
                                                                          ))
                                                                  ..totalTotal = functions
                                                                      .stringToDoubleSOMA(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            getJsonField(
                                                                              _model.out,
                                                                              r'''$.Valor''',
                                                                            )?.toString(),
                                                                            '0',
                                                                          ),
                                                                          valueOrDefault<
                                                                              String>(
                                                                            FFAppState().CarrinhoState.totalTotal.toString(),
                                                                            '0',
                                                                          ))
                                                                  ..incrementQntArquivosTotal(
                                                                      1)
                                                                  ..incrementPesoTotal(
                                                                      valueOrDefault<
                                                                          double>(
                                                                    getJsonField(
                                                                      _model
                                                                          .out,
                                                                      r'''$.Peso''',
                                                                    ),
                                                                    0.0,
                                                                  ))
                                                                  ..incrementAlturaTotal(
                                                                      valueOrDefault<
                                                                          double>(
                                                                    getJsonField(
                                                                      _model
                                                                          .out,
                                                                      r'''$.Dimensoes.depth''',
                                                                    ),
                                                                    0.0,
                                                                  ))
                                                                  ..incrementLarguraTotal(
                                                                      valueOrDefault<
                                                                          double>(
                                                                    getJsonField(
                                                                      _model
                                                                          .out,
                                                                      r'''$.Dimensoes.width''',
                                                                    ),
                                                                    0.0,
                                                                  ))
                                                                  ..incrementEspessuraTotal(
                                                                      valueOrDefault<
                                                                          double>(
                                                                    getJsonField(
                                                                      _model
                                                                          .out,
                                                                      r'''$.Dimensoes.height''',
                                                                    ),
                                                                    0.0,
                                                                  )),
                                                              );
                                                              setState(() {});
                                                              _model.iterationPdfCarrinho =
                                                                  0;
                                                              setState(() {});
                                                              FFAppState()
                                                                  .freteItem = [];
                                                              FFAppState()
                                                                      .indexfrete =
                                                                  999;
                                                              FFAppState()
                                                                  .updateCarrinhoStateStruct(
                                                                (e) => e
                                                                  ..totalTotal =
                                                                      valueOrDefault<
                                                                          double>(
                                                                    functions.stringToDoubleSUBTRAI(
                                                                        valueOrDefault<String>(
                                                                          FFAppState()
                                                                              .CarrinhoState
                                                                              .totalTotal
                                                                              .toString(),
                                                                          '0',
                                                                        ),
                                                                        valueOrDefault<String>(
                                                                          FFAppState()
                                                                              .CarrinhoState
                                                                              .freteTotal
                                                                              .toString(),
                                                                          '0',
                                                                        )),
                                                                    0.0,
                                                                  ),
                                                              );
                                                              setState(() {});
                                                              FFAppState()
                                                                  .updateCarrinhoStateStruct(
                                                                (e) => e
                                                                  ..freteTotal =
                                                                      null,
                                                              );
                                                              setState(() {});

                                                              context.pushNamed(
                                                                  'Carrinho');
                                                            },
                                                            text:
                                                                'Adicionar ao carrinho',
                                                            options:
                                                                FFButtonOptions(
                                                              height: 40.0,
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                              iconPadding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        color: Colors
                                                                            .white,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                              elevation: 3.0,
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                          ),
                                                        ),
                                                      ].divide(SizedBox(
                                                          height: 5.0)),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          if (MediaQuery.sizeOf(context).height >= 980.0)
                            Container(
                              width: 100.0,
                              height: 135.0,
                              decoration: BoxDecoration(),
                            ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: wrapWithModel(
                              model: _model.footerModel,
                              updateCallback: () => setState(() {}),
                              child: FooterWidget(),
                            ),
                          ),
                        ].divide(SizedBox(height: 20.0)),
                      ),
                    ),
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
