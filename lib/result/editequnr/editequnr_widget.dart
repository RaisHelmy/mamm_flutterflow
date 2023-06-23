import '/backend/api_requests/api_calls.dart';
import '/components/equipmentphoto_widget.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'editequnr_model.dart';
export 'editequnr_model.dart';

class EditequnrWidget extends StatefulWidget {
  const EditequnrWidget({
    Key? key,
    required this.equnr,
  }) : super(key: key);

  final String? equnr;

  @override
  _EditequnrWidgetState createState() => _EditequnrWidgetState();
}

class _EditequnrWidgetState extends State<EditequnrWidget> {
  late EditequnrModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditequnrModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FutureBuilder<ApiCallResponse>(
      future: GetequipmentCall.call(
        equnr: widget.equnr,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: SpinKitSquareCircle(
                  color: FlutterFlowTheme.of(context).primary,
                  size: 50.0,
                ),
              ),
            ),
          );
        }
        final editequnrGetequipmentResponse = snapshot.data!;
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
                'Edit Equipment',
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
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(1.0, 0.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 20.0, 20.0, 20.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            _model.apiResultxq7 =
                                await CreateEquipmentCall.call(
                              eqNo: widget.equnr,
                              createdBy: getJsonField(
                                FFAppState().alluserinfo,
                                r'''$.EmployeeID''',
                              ).toString(),
                              fl: _model.dropdowntplnrValue,
                              countryCode:
                                  _model.dropdowncountrycodeofmanufacturerValue,
                              businessArea:
                                  _model.gsberorbusinessareaController.text,
                              equipmentDesc: _model
                                  .eqktuorequipmentdescriptionController.text,
                              startUpDate:
                                  '${_model.inbdtyearValue}${_model.inbdtmonthValue}${_model.inbdtdayValue}',
                              constructYear:
                                  _model.baujjorconstructionyearValue,
                              constructMonth:
                                  _model.baummorconstructionmonthValue,
                              mainWorkCenterCode:
                                  _model.dropdownmainworkcentercodeValue,
                              manufacturer:
                                  _model.herstormanufacturerController.text,
                              plannerGroupCode:
                                  _model.dropdownplannergroupValue,
                              objectTypeCode: _model.eqartorobjecttypeValue,
                              assetNo: _model.anlnrorassetnoController.text,
                              modelNo: _model.typbzormodelnumberController.text,
                              serialNo: _model
                                  .sergeormanufacturerserialnumberController
                                  .text,
                            );
                            if ((_model.apiResultxq7?.succeeded ?? true)) {
                              context.pushNamed(
                                'equipment',
                                queryParameters: {
                                  'equnr': serializeParam(
                                    widget.equnr,
                                    ParamType.String,
                                  ),
                                }.withoutNulls,
                              );
                            }

                            setState(() {});
                          },
                          text: 'Save',
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
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
                      alignment: AlignmentDirectional(0.0, -1.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.0, -1.0),
                              child: Container(
                                width: 1080.0,
                                height: 1900.0,
                                decoration: BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: 400.0,
                                      height: 300.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      child: Stack(
                                        children: [
                                          Image.network(
                                            'https://p0.pikist.com/photos/884/667/cooling-towers-industry-sunset-clouds-evening-dark-power-plant-coal-fired-power-plant-energy.jpg',
                                            width: 500.0,
                                            height: double.infinity,
                                            fit: BoxFit.none,
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'Equipment Detail',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleMedium,
                                                ),
                                                Text(
                                                  widget.equnr!,
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .headlineMedium
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        fontSize: 40.0,
                                                        fontWeight:
                                                            FontWeight.w900,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Flexible(
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.0, -1.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 20.0, 0.0),
                                          child: DefaultTabController(
                                            length: 5,
                                            initialIndex: 0,
                                            child: Column(
                                              children: [
                                                Align(
                                                  alignment: Alignment(0.0, 0),
                                                  child: TabBar(
                                                    isScrollable: true,
                                                    labelColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText,
                                                    unselectedLabelColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          fontSize: 14.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                    indicatorColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                    tabs: [
                                                      Tab(
                                                        text: 'GENERAL',
                                                      ),
                                                      Tab(
                                                        text: 'ORGANIZATION',
                                                      ),
                                                      Tab(
                                                        text: 'CLASS INFO',
                                                      ),
                                                      Tab(
                                                        text: 'CHANGE HISTORY',
                                                      ),
                                                      Tab(
                                                        text: 'PHOTOS',
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Expanded(
                                                  child: TabBarView(
                                                    physics:
                                                        const NeverScrollableScrollPhysics(),
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, -1.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.0,
                                                                      -1.0),
                                                              child:
                                                                  SingleChildScrollView(
                                                                primary: false,
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Align(
                                                                      alignment: AlignmentDirectional(
                                                                          -1.0,
                                                                          -1.0),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            20.0,
                                                                            20.0,
                                                                            20.0,
                                                                            20.0),
                                                                        child:
                                                                            Text(
                                                                          'Details',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Readex Pro',
                                                                                fontSize: 32.0,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.0,
                                                                      -1.0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Container(
                                                                    width: double
                                                                        .infinity,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              5.0),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: Color(
                                                                            0x2557636C),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          10.0,
                                                                          10.0,
                                                                          10.0,
                                                                          10.0),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Align(
                                                                            alignment:
                                                                                AlignmentDirectional(-1.0, 0.0),
                                                                            child:
                                                                                Text(
                                                                              'EQUIPMENT',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium,
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                                AlignmentDirectional(-1.0, 0.0),
                                                                            child:
                                                                                Text(
                                                                              GetequipmentCall.equnr(
                                                                                editequnrGetequipmentResponse.jsonBody,
                                                                              ).toString(),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Readex Pro',
                                                                                    fontWeight: FontWeight.w300,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    width: double
                                                                        .infinity,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              5.0),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: Color(
                                                                            0x2757636C),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                    ),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              10.0,
                                                                              10.0,
                                                                              10.0,
                                                                              10.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              Align(
                                                                                alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                child: Text(
                                                                                  'Description',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                ),
                                                                              ),
                                                                              Align(
                                                                                alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                child: Text(
                                                                                  GetequipmentCall.eqktu(
                                                                                    editequnrGetequipmentResponse.jsonBody,
                                                                                  ).toString(),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Readex Pro',
                                                                                        fontWeight: FontWeight.w300,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                              Align(
                                                                                alignment: AlignmentDirectional(-1.0, -1.0),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                  child: TextFormField(
                                                                                    controller: _model.eqktuorequipmentdescriptionController ??= TextEditingController(
                                                                                      text: GetequipmentCall.eqktu(
                                                                                        editequnrGetequipmentResponse.jsonBody,
                                                                                      ).toString(),
                                                                                    ),
                                                                                    autofocus: true,
                                                                                    obscureText: false,
                                                                                    decoration: InputDecoration(
                                                                                      labelText: 'Description',
                                                                                      labelStyle: FlutterFlowTheme.of(context).labelMedium,
                                                                                      hintStyle: FlutterFlowTheme.of(context).labelMedium,
                                                                                      enabledBorder: UnderlineInputBorder(
                                                                                        borderSide: BorderSide(
                                                                                          color: Color(0x2757636C),
                                                                                          width: 2.0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                      ),
                                                                                      focusedBorder: UnderlineInputBorder(
                                                                                        borderSide: BorderSide(
                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                          width: 2.0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                      ),
                                                                                      errorBorder: UnderlineInputBorder(
                                                                                        borderSide: BorderSide(
                                                                                          color: FlutterFlowTheme.of(context).error,
                                                                                          width: 2.0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                      ),
                                                                                      focusedErrorBorder: UnderlineInputBorder(
                                                                                        borderSide: BorderSide(
                                                                                          color: FlutterFlowTheme.of(context).error,
                                                                                          width: 2.0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                      ),
                                                                                      contentPadding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                    validator: _model.eqktuorequipmentdescriptionControllerValidator.asValidator(context),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    width: double
                                                                        .infinity,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              5.0),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: Color(
                                                                            0x2757636C),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                    ),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              10.0,
                                                                              10.0,
                                                                              10.0,
                                                                              10.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              Align(
                                                                                alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                child: Text(
                                                                                  'Object Type',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                ),
                                                                              ),
                                                                              Align(
                                                                                alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                                                                                  child: FutureBuilder<ApiCallResponse>(
                                                                                    future: GetObjectTypeCall.call(),
                                                                                    builder: (context, snapshot) {
                                                                                      // Customize what your widget looks like when it's loading.
                                                                                      if (!snapshot.hasData) {
                                                                                        return Center(
                                                                                          child: SizedBox(
                                                                                            width: 50.0,
                                                                                            height: 50.0,
                                                                                            child: SpinKitSquareCircle(
                                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                                              size: 50.0,
                                                                                            ),
                                                                                          ),
                                                                                        );
                                                                                      }
                                                                                      final eqartorobjecttypeGetObjectTypeResponse = snapshot.data!;
                                                                                      return FlutterFlowDropDown<String>(
                                                                                        controller: _model.eqartorobjecttypeValueController ??= FormFieldController<String>(
                                                                                          _model.eqartorobjecttypeValue ??= GetequipmentCall.eqart(
                                                                                            editequnrGetequipmentResponse.jsonBody,
                                                                                          ).toString(),
                                                                                        ),
                                                                                        options: [
                                                                                          'Option 1'
                                                                                        ],
                                                                                        optionLabels: [
                                                                                          'Option 1'
                                                                                        ],
                                                                                        onChanged: (val) => setState(() => _model.eqartorobjecttypeValue = val),
                                                                                        height: 30.0,
                                                                                        searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium,
                                                                                        textStyle: FlutterFlowTheme.of(context).bodyMedium,
                                                                                        hintText: 'Object Type (EQART)',
                                                                                        searchHintText: 'Search for an item...',
                                                                                        icon: Icon(
                                                                                          Icons.keyboard_arrow_down_rounded,
                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                          size: 24.0,
                                                                                        ),
                                                                                        elevation: 2.0,
                                                                                        borderColor: Color(0x2757636C),
                                                                                        borderWidth: 1.0,
                                                                                        borderRadius: 5.0,
                                                                                        margin: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 16.0, 4.0),
                                                                                        hidesUnderline: true,
                                                                                        isSearchable: true,
                                                                                      );
                                                                                    },
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    width: double
                                                                        .infinity,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              5.0),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: Color(
                                                                            0x2757636C),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                    ),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              10.0,
                                                                              10.0,
                                                                              10.0,
                                                                              10.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              Align(
                                                                                alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                child: Text(
                                                                                  'Startup Date',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                ),
                                                                              ),
                                                                              Align(
                                                                                alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                child: Text(
                                                                                  GetequipmentCall.inbdt(
                                                                                    editequnrGetequipmentResponse.jsonBody,
                                                                                  ).toString(),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Readex Pro',
                                                                                        fontWeight: FontWeight.w300,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                              FlutterFlowCalendar(
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                iconColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                weekFormat: false,
                                                                                weekStartsMonday: false,
                                                                                rowHeight: 64.0,
                                                                                onChange: (DateTimeRange? newSelectedDate) {
                                                                                  setState(() => _model.calendarSelectedDay = newSelectedDate);
                                                                                },
                                                                                titleStyle: FlutterFlowTheme.of(context).headlineSmall,
                                                                                dayOfWeekStyle: FlutterFlowTheme.of(context).labelLarge,
                                                                                dateStyle: FlutterFlowTheme.of(context).bodyMedium,
                                                                                selectedDateStyle: FlutterFlowTheme.of(context).titleSmall,
                                                                                inactiveDateStyle: FlutterFlowTheme.of(context).labelMedium,
                                                                              ),
                                                                              Align(
                                                                                alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                                                                                  child: FlutterFlowDropDown<String>(
                                                                                    controller: _model.inbdtyearValueController ??= FormFieldController<String>(null),
                                                                                    options: <String>[],
                                                                                    onChanged: (val) => setState(() => _model.inbdtyearValue = val),
                                                                                    height: 30.0,
                                                                                    searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium,
                                                                                    textStyle: FlutterFlowTheme.of(context).bodyMedium,
                                                                                    hintText: 'Year',
                                                                                    searchHintText: 'Search for an item...',
                                                                                    icon: Icon(
                                                                                      Icons.keyboard_arrow_down_rounded,
                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                      size: 24.0,
                                                                                    ),
                                                                                    elevation: 2.0,
                                                                                    borderColor: Color(0x2757636C),
                                                                                    borderWidth: 1.0,
                                                                                    borderRadius: 5.0,
                                                                                    margin: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                                                                                    hidesUnderline: true,
                                                                                    isSearchable: true,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Align(
                                                                                alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                                                                                  child: FlutterFlowDropDown<String>(
                                                                                    controller: _model.inbdtmonthValueController ??= FormFieldController<String>(
                                                                                      _model.inbdtmonthValue ??= '',
                                                                                    ),
                                                                                    options: [
                                                                                      'Option 1'
                                                                                    ],
                                                                                    optionLabels: [
                                                                                      'Option 1'
                                                                                    ],
                                                                                    onChanged: (val) => setState(() => _model.inbdtmonthValue = val),
                                                                                    height: 30.0,
                                                                                    searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium,
                                                                                    textStyle: FlutterFlowTheme.of(context).bodyMedium,
                                                                                    hintText: 'Month',
                                                                                    searchHintText: 'Search for an item...',
                                                                                    icon: Icon(
                                                                                      Icons.keyboard_arrow_down_rounded,
                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                      size: 24.0,
                                                                                    ),
                                                                                    elevation: 2.0,
                                                                                    borderColor: Color(0x2757636C),
                                                                                    borderWidth: 1.0,
                                                                                    borderRadius: 5.0,
                                                                                    margin: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                                                                                    hidesUnderline: true,
                                                                                    isSearchable: true,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Align(
                                                                                alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                                                                                  child: FlutterFlowDropDown<String>(
                                                                                    controller: _model.inbdtdayValueController ??= FormFieldController<String>(
                                                                                      _model.inbdtdayValue ??= '',
                                                                                    ),
                                                                                    options: [
                                                                                      'Option 1'
                                                                                    ],
                                                                                    optionLabels: [
                                                                                      'Option 1'
                                                                                    ],
                                                                                    onChanged: (val) => setState(() => _model.inbdtdayValue = val),
                                                                                    height: 30.0,
                                                                                    textStyle: FlutterFlowTheme.of(context).bodyMedium,
                                                                                    hintText: 'Day',
                                                                                    icon: Icon(
                                                                                      Icons.keyboard_arrow_down_rounded,
                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                      size: 24.0,
                                                                                    ),
                                                                                    elevation: 2.0,
                                                                                    borderColor: Color(0x2757636C),
                                                                                    borderWidth: 1.0,
                                                                                    borderRadius: 5.0,
                                                                                    margin: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                                                                                    hidesUnderline: true,
                                                                                    isSearchable: false,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    width: double
                                                                        .infinity,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              5.0),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: Color(
                                                                            0x2757636C),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                    ),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              10.0,
                                                                              10.0,
                                                                              10.0,
                                                                              10.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              Align(
                                                                                alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                child: Text(
                                                                                  'Manufacturer',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                ),
                                                                              ),
                                                                              Align(
                                                                                alignment: AlignmentDirectional(-1.0, -1.0),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                  child: TextFormField(
                                                                                    controller: _model.herstormanufacturerController ??= TextEditingController(
                                                                                      text: GetequipmentCall.herst(
                                                                                        editequnrGetequipmentResponse.jsonBody,
                                                                                      ).toString(),
                                                                                    ),
                                                                                    autofocus: true,
                                                                                    obscureText: false,
                                                                                    decoration: InputDecoration(
                                                                                      labelText: 'Manufacturer/ Maker',
                                                                                      labelStyle: FlutterFlowTheme.of(context).labelMedium,
                                                                                      hintStyle: FlutterFlowTheme.of(context).labelMedium,
                                                                                      enabledBorder: UnderlineInputBorder(
                                                                                        borderSide: BorderSide(
                                                                                          color: Color(0x2757636C),
                                                                                          width: 2.0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                      ),
                                                                                      focusedBorder: UnderlineInputBorder(
                                                                                        borderSide: BorderSide(
                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                          width: 2.0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                      ),
                                                                                      errorBorder: UnderlineInputBorder(
                                                                                        borderSide: BorderSide(
                                                                                          color: FlutterFlowTheme.of(context).error,
                                                                                          width: 2.0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                      ),
                                                                                      focusedErrorBorder: UnderlineInputBorder(
                                                                                        borderSide: BorderSide(
                                                                                          color: FlutterFlowTheme.of(context).error,
                                                                                          width: 2.0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                      ),
                                                                                      contentPadding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                    validator: _model.herstormanufacturerControllerValidator.asValidator(context),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    width: double
                                                                        .infinity,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              5.0),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: Color(
                                                                            0x2757636C),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                    ),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              10.0,
                                                                              10.0,
                                                                              10.0,
                                                                              10.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              Align(
                                                                                alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                child: Text(
                                                                                  'Model Number',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                ),
                                                                              ),
                                                                              Align(
                                                                                alignment: AlignmentDirectional(-1.0, -1.0),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                  child: TextFormField(
                                                                                    controller: _model.typbzormodelnumberController ??= TextEditingController(
                                                                                      text: GetequipmentCall.typbz(
                                                                                        editequnrGetequipmentResponse.jsonBody,
                                                                                      ).toString(),
                                                                                    ),
                                                                                    autofocus: true,
                                                                                    obscureText: false,
                                                                                    decoration: InputDecoration(
                                                                                      labelText: 'Model Number',
                                                                                      labelStyle: FlutterFlowTheme.of(context).labelMedium,
                                                                                      hintStyle: FlutterFlowTheme.of(context).labelMedium,
                                                                                      enabledBorder: UnderlineInputBorder(
                                                                                        borderSide: BorderSide(
                                                                                          color: Color(0x2757636C),
                                                                                          width: 2.0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                      ),
                                                                                      focusedBorder: UnderlineInputBorder(
                                                                                        borderSide: BorderSide(
                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                          width: 2.0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                      ),
                                                                                      errorBorder: UnderlineInputBorder(
                                                                                        borderSide: BorderSide(
                                                                                          color: FlutterFlowTheme.of(context).error,
                                                                                          width: 2.0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                      ),
                                                                                      focusedErrorBorder: UnderlineInputBorder(
                                                                                        borderSide: BorderSide(
                                                                                          color: FlutterFlowTheme.of(context).error,
                                                                                          width: 2.0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                      ),
                                                                                      contentPadding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                    validator: _model.typbzormodelnumberControllerValidator.asValidator(context),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    width: double
                                                                        .infinity,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              5.0),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: Color(
                                                                            0x2757636C),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                    ),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              10.0,
                                                                              10.0,
                                                                              10.0,
                                                                              10.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              Align(
                                                                                alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                child: Text(
                                                                                  'Manufacturer Serial Number',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                ),
                                                                              ),
                                                                              Align(
                                                                                alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                child: Text(
                                                                                  GetequipmentCall.serge(
                                                                                    editequnrGetequipmentResponse.jsonBody,
                                                                                  ).toString(),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Readex Pro',
                                                                                        fontWeight: FontWeight.w300,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                              Align(
                                                                                alignment: AlignmentDirectional(-1.0, -1.0),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                  child: TextFormField(
                                                                                    controller: _model.sergeormanufacturerserialnumberController ??= TextEditingController(
                                                                                      text: GetequipmentCall.serge(
                                                                                        editequnrGetequipmentResponse.jsonBody,
                                                                                      ).toString(),
                                                                                    ),
                                                                                    autofocus: true,
                                                                                    obscureText: false,
                                                                                    decoration: InputDecoration(
                                                                                      labelText: 'Description',
                                                                                      labelStyle: FlutterFlowTheme.of(context).labelMedium,
                                                                                      hintStyle: FlutterFlowTheme.of(context).labelMedium,
                                                                                      enabledBorder: UnderlineInputBorder(
                                                                                        borderSide: BorderSide(
                                                                                          color: Color(0x2757636C),
                                                                                          width: 2.0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                      ),
                                                                                      focusedBorder: UnderlineInputBorder(
                                                                                        borderSide: BorderSide(
                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                          width: 2.0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                      ),
                                                                                      errorBorder: UnderlineInputBorder(
                                                                                        borderSide: BorderSide(
                                                                                          color: FlutterFlowTheme.of(context).error,
                                                                                          width: 2.0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                      ),
                                                                                      focusedErrorBorder: UnderlineInputBorder(
                                                                                        borderSide: BorderSide(
                                                                                          color: FlutterFlowTheme.of(context).error,
                                                                                          width: 2.0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                      ),
                                                                                      contentPadding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                    validator: _model.sergeormanufacturerserialnumberControllerValidator.asValidator(context),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    width: double
                                                                        .infinity,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              5.0),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: Color(
                                                                            0x2757636C),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                    ),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              10.0,
                                                                              10.0,
                                                                              10.0,
                                                                              10.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              Align(
                                                                                alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                child: Text(
                                                                                  'Country of Manufacturer',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                ),
                                                                              ),
                                                                              Align(
                                                                                alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                                                                                  child: FutureBuilder<ApiCallResponse>(
                                                                                    future: GetCountryCall.call(),
                                                                                    builder: (context, snapshot) {
                                                                                      // Customize what your widget looks like when it's loading.
                                                                                      if (!snapshot.hasData) {
                                                                                        return Center(
                                                                                          child: SizedBox(
                                                                                            width: 50.0,
                                                                                            height: 50.0,
                                                                                            child: SpinKitSquareCircle(
                                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                                              size: 50.0,
                                                                                            ),
                                                                                          ),
                                                                                        );
                                                                                      }
                                                                                      final dropdowncountrycodeofmanufacturerGetCountryResponse = snapshot.data!;
                                                                                      return FlutterFlowDropDown<String>(
                                                                                        controller: _model.dropdowncountrycodeofmanufacturerValueController ??= FormFieldController<String>(
                                                                                          _model.dropdowncountrycodeofmanufacturerValue ??= GetequipmentCall.herld(
                                                                                            editequnrGetequipmentResponse.jsonBody,
                                                                                          ).toString(),
                                                                                        ),
                                                                                        options: (getJsonField(
                                                                                          dropdowncountrycodeofmanufacturerGetCountryResponse.jsonBody,
                                                                                          r'''$[:]''',
                                                                                        ) as List)
                                                                                            .map<String>((s) => s.toString())
                                                                                            .toList()!,
                                                                                        optionLabels: functions.combinelist(
                                                                                            (GetCountryCall.code(
                                                                                              dropdowncountrycodeofmanufacturerGetCountryResponse.jsonBody,
                                                                                            ) as List)
                                                                                                .map<String>((s) => s.toString())
                                                                                                .toList()
                                                                                                ?.map((e) => e.toString())
                                                                                                .toList()
                                                                                                ?.toList(),
                                                                                            (GetCountryCall.name(
                                                                                              dropdowncountrycodeofmanufacturerGetCountryResponse.jsonBody,
                                                                                            ) as List)
                                                                                                .map<String>((s) => s.toString())
                                                                                                .toList()
                                                                                                ?.map((e) => e.toString())
                                                                                                .toList()
                                                                                                ?.toList(),
                                                                                            '  -  ')!,
                                                                                        onChanged: (val) => setState(() => _model.dropdowncountrycodeofmanufacturerValue = val),
                                                                                        height: 30.0,
                                                                                        searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium,
                                                                                        textStyle: FlutterFlowTheme.of(context).bodyMedium,
                                                                                        hintText: 'Country',
                                                                                        searchHintText: 'Search for an item...',
                                                                                        icon: Icon(
                                                                                          Icons.keyboard_arrow_down_rounded,
                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                          size: 24.0,
                                                                                        ),
                                                                                        elevation: 2.0,
                                                                                        borderColor: Color(0x2757636C),
                                                                                        borderWidth: 1.0,
                                                                                        borderRadius: 5.0,
                                                                                        margin: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 16.0, 4.0),
                                                                                        hidesUnderline: true,
                                                                                        isSearchable: true,
                                                                                      );
                                                                                    },
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    width: double
                                                                        .infinity,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              5.0),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: Color(
                                                                            0x2757636C),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                    ),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              10.0,
                                                                              10.0,
                                                                              10.0,
                                                                              10.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              Align(
                                                                                alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                child: Text(
                                                                                  'Construction Year/Month',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                ),
                                                                              ),
                                                                              Align(
                                                                                alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                                                                                  child: FlutterFlowDropDown<String>(
                                                                                    controller: _model.baujjorconstructionyearValueController ??= FormFieldController<String>(
                                                                                      _model.baujjorconstructionyearValue ??= GetequipmentCall.baujj(
                                                                                        editequnrGetequipmentResponse.jsonBody,
                                                                                      ).toString(),
                                                                                    ),
                                                                                    options: functions.generatefromyear(1950),
                                                                                    onChanged: (val) => setState(() => _model.baujjorconstructionyearValue = val),
                                                                                    height: 30.0,
                                                                                    searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium,
                                                                                    textStyle: FlutterFlowTheme.of(context).bodyMedium,
                                                                                    hintText: 'Year',
                                                                                    searchHintText: 'Search for an item...',
                                                                                    icon: Icon(
                                                                                      Icons.keyboard_arrow_down_rounded,
                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                      size: 24.0,
                                                                                    ),
                                                                                    elevation: 2.0,
                                                                                    borderColor: Color(0x2757636C),
                                                                                    borderWidth: 1.0,
                                                                                    borderRadius: 5.0,
                                                                                    margin: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                                                                                    hidesUnderline: true,
                                                                                    isSearchable: true,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Align(
                                                                                alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                                                                                  child: FlutterFlowDropDown<String>(
                                                                                    controller: _model.baummorconstructionmonthValueController ??= FormFieldController<String>(
                                                                                      _model.baummorconstructionmonthValue ??= GetequipmentCall.baumm(
                                                                                        editequnrGetequipmentResponse.jsonBody,
                                                                                      ).toString(),
                                                                                    ),
                                                                                    options: functions
                                                                                        .generatemonth()
                                                                                        .map((e) => getJsonField(
                                                                                              e,
                                                                                              r'''$.value''',
                                                                                            ))
                                                                                        .toList()
                                                                                        .map((e) => e.toString())
                                                                                        .toList(),
                                                                                    optionLabels: functions
                                                                                        .generatemonth()
                                                                                        .map((e) => getJsonField(
                                                                                              e,
                                                                                              r'''$.name''',
                                                                                            ))
                                                                                        .toList()
                                                                                        .map((e) => e.toString())
                                                                                        .toList(),
                                                                                    onChanged: (val) => setState(() => _model.baummorconstructionmonthValue = val),
                                                                                    height: 30.0,
                                                                                    searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium,
                                                                                    textStyle: FlutterFlowTheme.of(context).bodyMedium,
                                                                                    hintText: 'Month',
                                                                                    searchHintText: 'Search for an item...',
                                                                                    icon: Icon(
                                                                                      Icons.keyboard_arrow_down_rounded,
                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                      size: 24.0,
                                                                                    ),
                                                                                    elevation: 2.0,
                                                                                    borderColor: Color(0x2757636C),
                                                                                    borderWidth: 1.0,
                                                                                    borderRadius: 5.0,
                                                                                    margin: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                                                                                    hidesUnderline: true,
                                                                                    isSearchable: true,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, -1.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      -1.0,
                                                                      -1.0),
                                                              child: Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        20.0,
                                                                        20.0,
                                                                        20.0,
                                                                        20.0),
                                                                child: Text(
                                                                  'Details',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        fontSize:
                                                                            32.0,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                            ListView(
                                                              padding:
                                                                  EdgeInsets
                                                                      .zero,
                                                              shrinkWrap: true,
                                                              scrollDirection:
                                                                  Axis.vertical,
                                                              children: [
                                                                Container(
                                                                  width: 100.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            5.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: Color(
                                                                          0x2557636C),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10.0,
                                                                            10.0,
                                                                            10.0,
                                                                            10.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Align(
                                                                          alignment: AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            'Business Area',
                                                                            style:
                                                                                FlutterFlowTheme.of(context).bodyMedium,
                                                                          ),
                                                                        ),
                                                                        Align(
                                                                          alignment: AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            'Auto Populated based on Main Work Center',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  fontWeight: FontWeight.w300,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Align(
                                                                          alignment: AlignmentDirectional(
                                                                              -1.0,
                                                                              -1.0),
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                8.0,
                                                                                0.0),
                                                                            child:
                                                                                TextFormField(
                                                                              controller: _model.gsberorbusinessareaController ??= TextEditingController(
                                                                                text: getJsonField(
                                                                                          _model.mainworkcenter,
                                                                                          r'''$.Code''',
                                                                                        ) !=
                                                                                        null
                                                                                    ? getJsonField(
                                                                                        _model.mainworkcenter,
                                                                                        r'''$.BusinessArea''',
                                                                                      ).toString()
                                                                                    : GetequipmentCall.gsber(
                                                                                        editequnrGetequipmentResponse.jsonBody,
                                                                                      ).toString(),
                                                                              ),
                                                                              autofocus: true,
                                                                              readOnly: true,
                                                                              obscureText: false,
                                                                              decoration: InputDecoration(
                                                                                labelText: 'Business Area',
                                                                                labelStyle: FlutterFlowTheme.of(context).labelMedium,
                                                                                hintStyle: FlutterFlowTheme.of(context).labelMedium,
                                                                                enabledBorder: UnderlineInputBorder(
                                                                                  borderSide: BorderSide(
                                                                                    color: Color(0x2757636C),
                                                                                    width: 2.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                focusedBorder: UnderlineInputBorder(
                                                                                  borderSide: BorderSide(
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                    width: 2.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                errorBorder: UnderlineInputBorder(
                                                                                  borderSide: BorderSide(
                                                                                    color: FlutterFlowTheme.of(context).error,
                                                                                    width: 2.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                focusedErrorBorder: UnderlineInputBorder(
                                                                                  borderSide: BorderSide(
                                                                                    color: FlutterFlowTheme.of(context).error,
                                                                                    width: 2.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                contentPadding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium,
                                                                              validator: _model.gsberorbusinessareaControllerValidator.asValidator(context),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  width: 100.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            5.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: Color(
                                                                          0x2757636C),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10.0,
                                                                            10.0,
                                                                            10.0,
                                                                            10.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Align(
                                                                          alignment: AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            'Asset',
                                                                            style:
                                                                                FlutterFlowTheme.of(context).bodyMedium,
                                                                          ),
                                                                        ),
                                                                        Align(
                                                                          alignment: AlignmentDirectional(
                                                                              -1.0,
                                                                              -1.0),
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                8.0,
                                                                                0.0),
                                                                            child:
                                                                                TextFormField(
                                                                              controller: _model.anlnrorassetnoController ??= TextEditingController(
                                                                                text: GetequipmentCall.anlnr(
                                                                                  editequnrGetequipmentResponse.jsonBody,
                                                                                ).toString(),
                                                                              ),
                                                                              autofocus: true,
                                                                              obscureText: false,
                                                                              decoration: InputDecoration(
                                                                                labelText: 'Asset No',
                                                                                labelStyle: FlutterFlowTheme.of(context).labelMedium,
                                                                                hintStyle: FlutterFlowTheme.of(context).labelMedium,
                                                                                enabledBorder: UnderlineInputBorder(
                                                                                  borderSide: BorderSide(
                                                                                    color: Color(0x2757636C),
                                                                                    width: 2.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                focusedBorder: UnderlineInputBorder(
                                                                                  borderSide: BorderSide(
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                    width: 2.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                errorBorder: UnderlineInputBorder(
                                                                                  borderSide: BorderSide(
                                                                                    color: FlutterFlowTheme.of(context).error,
                                                                                    width: 2.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                focusedErrorBorder: UnderlineInputBorder(
                                                                                  borderSide: BorderSide(
                                                                                    color: FlutterFlowTheme.of(context).error,
                                                                                    width: 2.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                contentPadding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium,
                                                                              validator: _model.anlnrorassetnoControllerValidator.asValidator(context),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  width: 100.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            5.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: Color(
                                                                          0x2757636C),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10.0,
                                                                            10.0,
                                                                            10.0,
                                                                            10.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Align(
                                                                          alignment: AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            'Cost Center',
                                                                            style:
                                                                                FlutterFlowTheme.of(context).bodyMedium,
                                                                          ),
                                                                        ),
                                                                        Align(
                                                                          alignment: AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            'Auto Populated based on Main Work Center',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  fontWeight: FontWeight.w300,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Align(
                                                                          alignment: AlignmentDirectional(
                                                                              -1.0,
                                                                              -1.0),
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                8.0,
                                                                                0.0),
                                                                            child:
                                                                                TextFormField(
                                                                              controller: _model.costcentervalueController1 ??= TextEditingController(
                                                                                text: getJsonField(
                                                                                          _model.mainworkcenter,
                                                                                          r'''$[0].Code''',
                                                                                        ) !=
                                                                                        null
                                                                                    ? getJsonField(
                                                                                        _model.mainworkcenter,
                                                                                        r'''$.CostCenter''',
                                                                                      ).toString()
                                                                                    : GetequipmentCall.kostl(
                                                                                        editequnrGetequipmentResponse.jsonBody,
                                                                                      ).toString(),
                                                                              ),
                                                                              autofocus: true,
                                                                              readOnly: true,
                                                                              obscureText: false,
                                                                              decoration: InputDecoration(
                                                                                labelText: 'Cost Center',
                                                                                labelStyle: FlutterFlowTheme.of(context).labelMedium,
                                                                                hintStyle: FlutterFlowTheme.of(context).labelMedium,
                                                                                enabledBorder: UnderlineInputBorder(
                                                                                  borderSide: BorderSide(
                                                                                    color: Color(0x2757636C),
                                                                                    width: 2.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                focusedBorder: UnderlineInputBorder(
                                                                                  borderSide: BorderSide(
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                    width: 2.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                errorBorder: UnderlineInputBorder(
                                                                                  borderSide: BorderSide(
                                                                                    color: FlutterFlowTheme.of(context).error,
                                                                                    width: 2.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                focusedErrorBorder: UnderlineInputBorder(
                                                                                  borderSide: BorderSide(
                                                                                    color: FlutterFlowTheme.of(context).error,
                                                                                    width: 2.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                contentPadding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium,
                                                                              validator: _model.costcentervalueController1Validator.asValidator(context),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  width: 100.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            5.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: Color(
                                                                          0x2757636C),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10.0,
                                                                            10.0,
                                                                            10.0,
                                                                            10.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Align(
                                                                          alignment: AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            'Planner Group',
                                                                            style:
                                                                                FlutterFlowTheme.of(context).bodyMedium,
                                                                          ),
                                                                        ),
                                                                        Align(
                                                                          alignment: AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                10.0,
                                                                                10.0,
                                                                                10.0,
                                                                                10.0),
                                                                            child:
                                                                                FutureBuilder<ApiCallResponse>(
                                                                              future: GetPlannerGroupCall.call(),
                                                                              builder: (context, snapshot) {
                                                                                // Customize what your widget looks like when it's loading.
                                                                                if (!snapshot.hasData) {
                                                                                  return Center(
                                                                                    child: SizedBox(
                                                                                      width: 50.0,
                                                                                      height: 50.0,
                                                                                      child: SpinKitSquareCircle(
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                        size: 50.0,
                                                                                      ),
                                                                                    ),
                                                                                  );
                                                                                }
                                                                                final dropdownplannergroupGetPlannerGroupResponse = snapshot.data!;
                                                                                return FlutterFlowDropDown<String>(
                                                                                  controller: _model.dropdownplannergroupValueController ??= FormFieldController<String>(
                                                                                    _model.dropdownplannergroupValue ??= '',
                                                                                  ),
                                                                                  options: (getJsonField(
                                                                                    dropdownplannergroupGetPlannerGroupResponse.jsonBody,
                                                                                    r'''$[:]''',
                                                                                  ) as List)
                                                                                      .map<String>((s) => s.toString())
                                                                                      .toList()!,
                                                                                  optionLabels: functions.combinelist(
                                                                                      (GetPlannerGroupCall.code(
                                                                                        dropdownplannergroupGetPlannerGroupResponse.jsonBody,
                                                                                      ) as List)
                                                                                          .map<String>((s) => s.toString())
                                                                                          .toList()
                                                                                          ?.map((e) => e.toString())
                                                                                          .toList()
                                                                                          ?.toList(),
                                                                                      (GetPlannerGroupCall.name(
                                                                                        dropdownplannergroupGetPlannerGroupResponse.jsonBody,
                                                                                      ) as List)
                                                                                          .map<String>((s) => s.toString())
                                                                                          .toList()
                                                                                          ?.map((e) => e.toString())
                                                                                          .toList()
                                                                                          ?.toList(),
                                                                                      '  -  ')!,
                                                                                  onChanged: (val) => setState(() => _model.dropdownplannergroupValue = val),
                                                                                  height: 30.0,
                                                                                  textStyle: FlutterFlowTheme.of(context).bodyMedium,
                                                                                  hintText: 'Planner Group',
                                                                                  icon: Icon(
                                                                                    Icons.keyboard_arrow_down_rounded,
                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                    size: 24.0,
                                                                                  ),
                                                                                  elevation: 2.0,
                                                                                  borderColor: Color(0x2757636C),
                                                                                  borderWidth: 1.0,
                                                                                  borderRadius: 5.0,
                                                                                  margin: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                                                                                  hidesUnderline: true,
                                                                                  isSearchable: false,
                                                                                );
                                                                              },
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  width: 100.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            5.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: Color(
                                                                          0x2757636C),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10.0,
                                                                            10.0,
                                                                            10.0,
                                                                            10.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Align(
                                                                          alignment: AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            'Main Work Center',
                                                                            style:
                                                                                FlutterFlowTheme.of(context).bodyMedium,
                                                                          ),
                                                                        ),
                                                                        Align(
                                                                          alignment: AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                10.0,
                                                                                10.0,
                                                                                10.0,
                                                                                10.0),
                                                                            child:
                                                                                FutureBuilder<ApiCallResponse>(
                                                                              future: GetMainWorkCenterCall.call(),
                                                                              builder: (context, snapshot) {
                                                                                // Customize what your widget looks like when it's loading.
                                                                                if (!snapshot.hasData) {
                                                                                  return Center(
                                                                                    child: SizedBox(
                                                                                      width: 50.0,
                                                                                      height: 50.0,
                                                                                      child: SpinKitSquareCircle(
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                        size: 50.0,
                                                                                      ),
                                                                                    ),
                                                                                  );
                                                                                }
                                                                                final dropdownmainworkcentercodeGetMainWorkCenterResponse = snapshot.data!;
                                                                                return FlutterFlowDropDown<String>(
                                                                                  controller: _model.dropdownmainworkcentercodeValueController ??= FormFieldController<String>(
                                                                                    _model.dropdownmainworkcentercodeValue ??= GetequipmentCall.mainworkcentercode(
                                                                                      editequnrGetequipmentResponse.jsonBody,
                                                                                    ).toString(),
                                                                                  ),
                                                                                  options: (getJsonField(
                                                                                    dropdownmainworkcentercodeGetMainWorkCenterResponse.jsonBody,
                                                                                    r'''$[:].Code''',
                                                                                  ) as List)
                                                                                      .map<String>((s) => s.toString())
                                                                                      .toList()!,
                                                                                  optionLabels: functions.combinelist(
                                                                                      (GetMainWorkCenterCall.code(
                                                                                        dropdownmainworkcentercodeGetMainWorkCenterResponse.jsonBody,
                                                                                      ) as List)
                                                                                          .map<String>((s) => s.toString())
                                                                                          .toList()
                                                                                          ?.map((e) => e.toString())
                                                                                          .toList()
                                                                                          ?.toList(),
                                                                                      (GetMainWorkCenterCall.name(
                                                                                        dropdownmainworkcentercodeGetMainWorkCenterResponse.jsonBody,
                                                                                      ) as List)
                                                                                          .map<String>((s) => s.toString())
                                                                                          .toList()
                                                                                          ?.map((e) => e.toString())
                                                                                          .toList()
                                                                                          ?.toList(),
                                                                                      '  -  ')!,
                                                                                  onChanged: (val) => setState(() => _model.dropdownmainworkcentercodeValue = val),
                                                                                  height: 30.0,
                                                                                  searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium,
                                                                                  textStyle: FlutterFlowTheme.of(context).bodyMedium,
                                                                                  hintText: 'Main Work Center',
                                                                                  searchHintText: 'Search for an item...',
                                                                                  icon: Icon(
                                                                                    Icons.keyboard_arrow_down_rounded,
                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                    size: 24.0,
                                                                                  ),
                                                                                  elevation: 2.0,
                                                                                  borderColor: Color(0x2757636C),
                                                                                  borderWidth: 1.0,
                                                                                  borderRadius: 5.0,
                                                                                  margin: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                                                                                  hidesUnderline: true,
                                                                                  isSearchable: true,
                                                                                );
                                                                              },
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  width: 100.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            5.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: Color(
                                                                          0x2757636C),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10.0,
                                                                            10.0,
                                                                            10.0,
                                                                            10.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Align(
                                                                          alignment: AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            'Functional Location',
                                                                            style:
                                                                                FlutterFlowTheme.of(context).bodyMedium,
                                                                          ),
                                                                        ),
                                                                        Align(
                                                                          alignment: AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                10.0,
                                                                                10.0,
                                                                                10.0,
                                                                                10.0),
                                                                            child:
                                                                                FlutterFlowDropDown<String>(
                                                                              controller: _model.dropdowntplnrValueController ??= FormFieldController<String>(
                                                                                _model.dropdowntplnrValue ??= GetequipmentCall.tplnr(
                                                                                  editequnrGetequipmentResponse.jsonBody,
                                                                                ).toString(),
                                                                              ),
                                                                              options: [
                                                                                'Option 1'
                                                                              ],
                                                                              optionLabels: [
                                                                                'Option 1'
                                                                              ],
                                                                              onChanged: (val) => setState(() => _model.dropdowntplnrValue = val),
                                                                              height: 30.0,
                                                                              searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium,
                                                                              textStyle: FlutterFlowTheme.of(context).bodyMedium,
                                                                              hintText: 'Functional Location',
                                                                              searchHintText: 'Search for an item...',
                                                                              icon: Icon(
                                                                                Icons.keyboard_arrow_down_rounded,
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                size: 24.0,
                                                                              ),
                                                                              elevation: 2.0,
                                                                              borderColor: Color(0x2757636C),
                                                                              borderWidth: 1.0,
                                                                              borderRadius: 5.0,
                                                                              margin: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                                                                              hidesUnderline: true,
                                                                              isSearchable: true,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  width: 100.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            5.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: Color(
                                                                          0x2757636C),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10.0,
                                                                            10.0,
                                                                            10.0,
                                                                            10.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Align(
                                                                          alignment: AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            'Functional Location Description',
                                                                            style:
                                                                                FlutterFlowTheme.of(context).bodyMedium,
                                                                          ),
                                                                        ),
                                                                        Align(
                                                                          alignment: AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            'Auto Populated based on Functional Location',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  fontWeight: FontWeight.w300,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Align(
                                                                          alignment: AlignmentDirectional(
                                                                              -1.0,
                                                                              -1.0),
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                8.0,
                                                                                0.0),
                                                                            child:
                                                                                TextFormField(
                                                                              controller: _model.costcentervalueController2 ??= TextEditingController(
                                                                                text: GetequipmentCall.kostl(
                                                                                  editequnrGetequipmentResponse.jsonBody,
                                                                                ).toString(),
                                                                              ),
                                                                              autofocus: true,
                                                                              readOnly: true,
                                                                              obscureText: false,
                                                                              decoration: InputDecoration(
                                                                                labelText: 'Functional Location Description',
                                                                                labelStyle: FlutterFlowTheme.of(context).labelMedium,
                                                                                hintStyle: FlutterFlowTheme.of(context).labelMedium,
                                                                                enabledBorder: UnderlineInputBorder(
                                                                                  borderSide: BorderSide(
                                                                                    color: Color(0x2757636C),
                                                                                    width: 2.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                focusedBorder: UnderlineInputBorder(
                                                                                  borderSide: BorderSide(
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                    width: 2.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                errorBorder: UnderlineInputBorder(
                                                                                  borderSide: BorderSide(
                                                                                    color: FlutterFlowTheme.of(context).error,
                                                                                    width: 2.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                focusedErrorBorder: UnderlineInputBorder(
                                                                                  borderSide: BorderSide(
                                                                                    color: FlutterFlowTheme.of(context).error,
                                                                                    width: 2.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                contentPadding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium,
                                                                              validator: _model.costcentervalueController2Validator.asValidator(context),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, -1.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      -1.0,
                                                                      -1.0),
                                                              child: Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        20.0,
                                                                        20.0,
                                                                        20.0,
                                                                        20.0),
                                                                child: Text(
                                                                  'Details',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        fontSize:
                                                                            32.0,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      1.0,
                                                                      -1.0),
                                                              child:
                                                                  FFButtonWidget(
                                                                onPressed:
                                                                    () async {
                                                                  setState(() {
                                                                    _model.addclassheader =
                                                                        true;
                                                                  });
                                                                },
                                                                text:
                                                                    'Add Class Header',
                                                                options:
                                                                    FFButtonOptions(
                                                                  height: 40.0,
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                                  iconPadding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                  elevation:
                                                                      3.0,
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
                                                            if (_model
                                                                .addclassheader)
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        1.0,
                                                                        -1.0),
                                                                child: FutureBuilder<
                                                                    ApiCallResponse>(
                                                                  future:
                                                                      GetListClassCall
                                                                          .call(),
                                                                  builder: (context,
                                                                      snapshot) {
                                                                    // Customize what your widget looks like when it's loading.
                                                                    if (!snapshot
                                                                        .hasData) {
                                                                      return Center(
                                                                        child:
                                                                            SizedBox(
                                                                          width:
                                                                              50.0,
                                                                          height:
                                                                              50.0,
                                                                          child:
                                                                              SpinKitSquareCircle(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            size:
                                                                                50.0,
                                                                          ),
                                                                        ),
                                                                      );
                                                                    }
                                                                    final dropDownGetListClassResponse =
                                                                        snapshot
                                                                            .data!;
                                                                    return FlutterFlowDropDown<
                                                                        String>(
                                                                      controller: _model
                                                                          .dropDownValueController ??= FormFieldController<
                                                                              String>(
                                                                          null),
                                                                      options: (GetListClassCall
                                                                              .classheadercode(
                                                                        dropDownGetListClassResponse
                                                                            .jsonBody,
                                                                      ) as List)
                                                                          .map<String>((s) => s
                                                                              .toString())
                                                                          .toList()!
                                                                          .map((e) =>
                                                                              e.toString())
                                                                          .toList(),
                                                                      onChanged:
                                                                          (val) =>
                                                                              setState(() => _model.dropDownValue = val),
                                                                      width:
                                                                          300.0,
                                                                      height:
                                                                          50.0,
                                                                      searchHintTextStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiary,
                                                                          ),
                                                                      textStyle:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMedium,
                                                                      hintText:
                                                                          'Click to select 1 class header only..',
                                                                      searchHintText:
                                                                          'Search for an item...',
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .keyboard_arrow_down_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                      elevation:
                                                                          2.0,
                                                                      borderColor:
                                                                          Color(
                                                                              0x9CABABAB),
                                                                      borderWidth:
                                                                          2.0,
                                                                      borderRadius:
                                                                          8.0,
                                                                      margin: EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          4.0,
                                                                          16.0,
                                                                          4.0),
                                                                      hidesUnderline:
                                                                          true,
                                                                      isSearchable:
                                                                          true,
                                                                    );
                                                                  },
                                                                ),
                                                              ),
                                                            Builder(
                                                              builder:
                                                                  (context) {
                                                                final listofclassheader =
                                                                    getJsonField(
                                                                  functions
                                                                      .distinctlist(
                                                                          getJsonField(
                                                                    editequnrGetequipmentResponse
                                                                        .jsonBody,
                                                                    r'''$.Query1[1][*].ClassHeaderCode''',
                                                                  )),
                                                                  r'''$''',
                                                                ).toList();
                                                                if (listofclassheader
                                                                    .isEmpty) {
                                                                  return Image
                                                                      .asset(
                                                                    'assets/images/unnamed.png',
                                                                  );
                                                                }
                                                                return ListView
                                                                    .builder(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .zero,
                                                                  shrinkWrap:
                                                                      true,
                                                                  scrollDirection:
                                                                      Axis.vertical,
                                                                  itemCount:
                                                                      listofclassheader
                                                                          .length,
                                                                  itemBuilder:
                                                                      (context,
                                                                          listofclassheaderIndex) {
                                                                    final listofclassheaderItem =
                                                                        listofclassheader[
                                                                            listofclassheaderIndex];
                                                                    return Container(
                                                                      width:
                                                                          100.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(5.0),
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              Color(0x2557636C),
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                      ),
                                                                      alignment: AlignmentDirectional(
                                                                          -1.0,
                                                                          -1.0),
                                                                      child:
                                                                          Align(
                                                                        alignment: AlignmentDirectional(
                                                                            -1.0,
                                                                            -1.0),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              10.0,
                                                                              10.0,
                                                                              10.0,
                                                                              10.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              Align(
                                                                                alignment: AlignmentDirectional(-1.0, -1.0),
                                                                                child: Text(
                                                                                  getJsonField(
                                                                                    listofclassheaderItem,
                                                                                    r'''$''',
                                                                                  ).toString(),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Readex Pro',
                                                                                        fontSize: 30.0,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                              Align(
                                                                                alignment: AlignmentDirectional(-1.0, -1.0),
                                                                                child: Builder(
                                                                                  builder: (context) {
                                                                                    final classheadercode = GetequipmentCall.classheader(
                                                                                          editequnrGetequipmentResponse.jsonBody,
                                                                                        )
                                                                                            ?.map((e) => e)
                                                                                            .toList()
                                                                                            ?.where((e) =>
                                                                                                getJsonField(
                                                                                                  e,
                                                                                                  r'''$.ClassHeaderCode''',
                                                                                                ) ==
                                                                                                getJsonField(
                                                                                                  listofclassheaderItem,
                                                                                                  r'''$''',
                                                                                                ))
                                                                                            .toList()
                                                                                            ?.toList() ??
                                                                                        [];
                                                                                    return ListView.builder(
                                                                                      padding: EdgeInsets.zero,
                                                                                      shrinkWrap: true,
                                                                                      scrollDirection: Axis.vertical,
                                                                                      itemCount: classheadercode.length,
                                                                                      itemBuilder: (context, classheadercodeIndex) {
                                                                                        final classheadercodeItem = classheadercode[classheadercodeIndex];
                                                                                        return Container(
                                                                                          width: 100.0,
                                                                                          decoration: BoxDecoration(
                                                                                            borderRadius: BorderRadius.circular(5.0),
                                                                                            border: Border.all(
                                                                                              color: Color(0x2557636C),
                                                                                              width: 1.0,
                                                                                            ),
                                                                                          ),
                                                                                          child: Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                                                                                            child: Column(
                                                                                              mainAxisSize: MainAxisSize.min,
                                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                                              children: [
                                                                                                Builder(
                                                                                                  builder: (context) {
                                                                                                    final classinfo = GetequipmentCall.char(
                                                                                                          editequnrGetequipmentResponse.jsonBody,
                                                                                                        )
                                                                                                            ?.where((e) =>
                                                                                                                getJsonField(
                                                                                                                  e,
                                                                                                                  r'''$..CharID''',
                                                                                                                ) ==
                                                                                                                getJsonField(
                                                                                                                  classheadercodeItem,
                                                                                                                  r'''$.CharacteristicCode''',
                                                                                                                ))
                                                                                                            .toList()
                                                                                                            ?.toList() ??
                                                                                                        [];
                                                                                                    return ListView.builder(
                                                                                                      padding: EdgeInsets.zero,
                                                                                                      shrinkWrap: true,
                                                                                                      scrollDirection: Axis.vertical,
                                                                                                      itemCount: classinfo.length,
                                                                                                      itemBuilder: (context, classinfoIndex) {
                                                                                                        final classinfoItem = classinfo[classinfoIndex];
                                                                                                        return Align(
                                                                                                          alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                                          child: Text(
                                                                                                            getJsonField(
                                                                                                              classinfoItem,
                                                                                                              r'''$.CharName''',
                                                                                                            ).toString(),
                                                                                                            style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                          ),
                                                                                                        );
                                                                                                      },
                                                                                                    );
                                                                                                  },
                                                                                                ),
                                                                                                Align(
                                                                                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                                  child: Text(
                                                                                                    getJsonField(
                                                                                                      classheadercodeItem,
                                                                                                      r'''$.NewValue''',
                                                                                                    ).toString(),
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: 'Readex Pro',
                                                                                                          fontWeight: FontWeight.w300,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        );
                                                                                      },
                                                                                    );
                                                                                  },
                                                                                ),
                                                                              ),
                                                                            ],
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
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, -1.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      -1.0,
                                                                      -1.0),
                                                              child: Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        20.0,
                                                                        20.0,
                                                                        20.0,
                                                                        20.0),
                                                                child: Text(
                                                                  'History Details',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        fontSize:
                                                                            32.0,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                            FutureBuilder<
                                                                ApiCallResponse>(
                                                              future: (_model.apiRequestCompleter ??= Completer<
                                                                      ApiCallResponse>()
                                                                    ..complete(
                                                                        GetequipmenthistoryCall
                                                                            .call(
                                                                      equnr: widget
                                                                          .equnr,
                                                                    )))
                                                                  .future,
                                                              builder: (context,
                                                                  snapshot) {
                                                                // Customize what your widget looks like when it's loading.
                                                                if (!snapshot
                                                                    .hasData) {
                                                                  return Center(
                                                                    child:
                                                                        SizedBox(
                                                                      width:
                                                                          50.0,
                                                                      height:
                                                                          50.0,
                                                                      child:
                                                                          SpinKitSquareCircle(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        size:
                                                                            50.0,
                                                                      ),
                                                                    ),
                                                                  );
                                                                }
                                                                final listViewGetequipmenthistoryResponse =
                                                                    snapshot
                                                                        .data!;
                                                                return Builder(
                                                                  builder:
                                                                      (context) {
                                                                    final gehistory =
                                                                        getJsonField(
                                                                      listViewGetequipmenthistoryResponse
                                                                          .jsonBody,
                                                                      r'''$''',
                                                                    ).toList();
                                                                    if (gehistory
                                                                        .isEmpty) {
                                                                      return Image
                                                                          .asset(
                                                                        'assets/images/unnamed.png',
                                                                      );
                                                                    }
                                                                    return RefreshIndicator(
                                                                      onRefresh:
                                                                          () async {
                                                                        setState(() =>
                                                                            _model.apiRequestCompleter =
                                                                                null);
                                                                        await _model
                                                                            .waitForApiRequestCompleted();
                                                                      },
                                                                      child: ListView
                                                                          .builder(
                                                                        padding:
                                                                            EdgeInsets.zero,
                                                                        shrinkWrap:
                                                                            true,
                                                                        scrollDirection:
                                                                            Axis.vertical,
                                                                        itemCount:
                                                                            gehistory.length,
                                                                        itemBuilder:
                                                                            (context,
                                                                                gehistoryIndex) {
                                                                          final gehistoryItem =
                                                                              gehistory[gehistoryIndex];
                                                                          return Container(
                                                                            width:
                                                                                double.infinity,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              borderRadius: BorderRadius.circular(5.0),
                                                                              border: Border.all(
                                                                                color: Color(0x2557636C),
                                                                                width: 1.0,
                                                                              ),
                                                                            ),
                                                                            child:
                                                                                Align(
                                                                              alignment: AlignmentDirectional(0.0, -1.0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Align(
                                                                                    alignment: AlignmentDirectional(-1.0, -1.0),
                                                                                    child: Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                                                                                      child: Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                        children: [
                                                                                          Container(
                                                                                            width: MediaQuery.of(context).size.width * 0.5,
                                                                                            decoration: BoxDecoration(),
                                                                                            child: Align(
                                                                                              alignment: AlignmentDirectional(-1.0, -1.0),
                                                                                              child: Column(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Align(
                                                                                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                                    child: Text(
                                                                                                      getJsonField(
                                                                                                        gehistoryItem,
                                                                                                        r'''$.EmployeeName''',
                                                                                                      ).toString(),
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                    ),
                                                                                                  ),
                                                                                                  Align(
                                                                                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                                    child: Text(
                                                                                                      getJsonField(
                                                                                                        gehistoryItem,
                                                                                                        r'''$.ReferenceNo''',
                                                                                                      ).toString(),
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: 'Readex Pro',
                                                                                                            fontWeight: FontWeight.w300,
                                                                                                          ),
                                                                                                    ),
                                                                                                  ),
                                                                                                  Align(
                                                                                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                                    child: Text(
                                                                                                      getJsonField(
                                                                                                        gehistoryItem,
                                                                                                        r'''$.RequestID''',
                                                                                                      ).toString(),
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: 'Readex Pro',
                                                                                                            fontWeight: FontWeight.w300,
                                                                                                          ),
                                                                                                    ),
                                                                                                  ),
                                                                                                  Align(
                                                                                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                                    child: Text(
                                                                                                      getJsonField(
                                                                                                        gehistoryItem,
                                                                                                        r'''$.SubmissionDate''',
                                                                                                      ).toString(),
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: 'Readex Pro',
                                                                                                            fontWeight: FontWeight.w300,
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
                                                                                  Expanded(
                                                                                    child: Align(
                                                                                      alignment: AlignmentDirectional(0.0, 0.0),
                                                                                      child: FFButtonWidget(
                                                                                        onPressed: () {
                                                                                          print('Button pressed ...');
                                                                                        },
                                                                                        text: getJsonField(
                                                                                          gehistoryItem,
                                                                                          r'''$.StatusDesc''',
                                                                                        ).toString(),
                                                                                        options: FFButtonOptions(
                                                                                          height: 40.0,
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                          iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                          color: colorFromCssString(
                                                                                            functions.colortohex(getJsonField(
                                                                                              gehistoryItem,
                                                                                              r'''$.ColorCode''',
                                                                                            ).toString())!,
                                                                                            defaultColor: FlutterFlowTheme.of(context).tertiary,
                                                                                          ),
                                                                                          textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                fontFamily: 'Readex Pro',
                                                                                                color: Colors.white,
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
                                                                          );
                                                                        },
                                                                      ),
                                                                    );
                                                                  },
                                                                );
                                                              },
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      wrapWithModel(
                                                        model: _model
                                                            .equipmentphotoModel,
                                                        updateCallback: () =>
                                                            setState(() {}),
                                                        child:
                                                            EquipmentphotoWidget(
                                                          eqno: widget.equnr!,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(1.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 40.0, 0.0, 0.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            context.pushNamed(
                                              'editequnr',
                                              queryParameters: {
                                                'equnr': serializeParam(
                                                  widget.equnr,
                                                  ParamType.String,
                                                ),
                                              }.withoutNulls,
                                            );
                                          },
                                          text: 'Create',
                                          options: FFButtonOptions(
                                            height: 40.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    24.0, 0.0, 24.0, 0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color: Colors.white,
                                                    ),
                                            elevation: 3.0,
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
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
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
