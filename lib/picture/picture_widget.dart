import '/components/photoinfo_widget.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'picture_model.dart';
export 'picture_model.dart';

class PictureWidget extends StatefulWidget {
  const PictureWidget({
    Key? key,
    required this.filename,
    required this.filesize,
    required this.filestatus,
    required this.category,
    required this.createdby,
    required this.createddate,
    required this.modifiedby,
    required this.modifieddate,
  }) : super(key: key);

  final String? filename;
  final String? filesize;
  final String? filestatus;
  final String? category;
  final String? createdby;
  final String? createddate;
  final String? modifiedby;
  final String? modifieddate;

  @override
  _PictureWidgetState createState() => _PictureWidgetState();
}

class _PictureWidgetState extends State<PictureWidget> {
  late PictureModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PictureModel());
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
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            widget.filename!,
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: AlignmentDirectional(1.0, -1.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 10.0, 5.0),
                  child: Text(
                    'Single tap to expand image and\nDouble tap to get photo info / delete',
                    textAlign: TextAlign.end,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color: Color(0xFFFF0000),
                          fontSize: 10.0,
                        ),
                  ),
                ),
              ),
              Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.03),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            child: FlutterFlowExpandedImageView(
                              image: Image.network(
                                'https://mammtnbapi2.ap.ngrok.io/EquipmentPhoto/testPhoto/${widget.filename}',
                                fit: BoxFit.contain,
                              ),
                              allowRotation: true,
                              tag:
                                  'https://mammtnbapi2.ap.ngrok.io/EquipmentPhoto/testPhoto/${widget.filename}',
                              useHeroAnimation: true,
                            ),
                          ),
                        );
                      },
                      onDoubleTap: () async {
                        await showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Colors.white,
                          context: context,
                          builder: (context) {
                            return GestureDetector(
                              onTap: () => FocusScope.of(context)
                                  .requestFocus(_model.unfocusNode),
                              child: Padding(
                                padding: MediaQuery.of(context).viewInsets,
                                child: PhotoinfoWidget(
                                  filename: widget.filename!,
                                  filestatus: widget.filestatus!,
                                  filesize: widget.filesize!,
                                  category: widget.category!,
                                  createdby: widget.createdby!,
                                  createddate: widget.createddate!,
                                  modifiedby: widget.modifiedby!,
                                  modifieddate: widget.modifieddate!,
                                ),
                              ),
                            );
                          },
                        ).then((value) => setState(() {}));
                      },
                      child: Hero(
                        tag:
                            'https://mammtnbapi2.ap.ngrok.io/EquipmentPhoto/testPhoto/${widget.filename}',
                        transitionOnUserGestures: true,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            'https://mammtnbapi2.ap.ngrok.io/EquipmentPhoto/testPhoto/${widget.filename}',
                            fit: BoxFit.cover,
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
      ),
    );
  }
}
