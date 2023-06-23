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

class EditequnrModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  dynamic mainworkcenter;

  bool addclassheader = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (CreateEquipment)] action in Button widget.
  ApiCallResponse? apiResultxq7;
  // State field(s) for eqktuorequipmentdescription widget.
  TextEditingController? eqktuorequipmentdescriptionController;
  String? Function(BuildContext, String?)?
      eqktuorequipmentdescriptionControllerValidator;
  // State field(s) for eqartorobjecttype widget.
  String? eqartorobjecttypeValue;
  FormFieldController<String>? eqartorobjecttypeValueController;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  // State field(s) for inbdtyear widget.
  String? inbdtyearValue;
  FormFieldController<String>? inbdtyearValueController;
  // State field(s) for inbdtmonth widget.
  String? inbdtmonthValue;
  FormFieldController<String>? inbdtmonthValueController;
  // State field(s) for inbdtday widget.
  String? inbdtdayValue;
  FormFieldController<String>? inbdtdayValueController;
  // State field(s) for herstormanufacturer widget.
  TextEditingController? herstormanufacturerController;
  String? Function(BuildContext, String?)?
      herstormanufacturerControllerValidator;
  // State field(s) for typbzormodelnumber widget.
  TextEditingController? typbzormodelnumberController;
  String? Function(BuildContext, String?)?
      typbzormodelnumberControllerValidator;
  // State field(s) for sergeormanufacturerserialnumber widget.
  TextEditingController? sergeormanufacturerserialnumberController;
  String? Function(BuildContext, String?)?
      sergeormanufacturerserialnumberControllerValidator;
  // State field(s) for dropdowncountrycodeofmanufacturer widget.
  String? dropdowncountrycodeofmanufacturerValue;
  FormFieldController<String>? dropdowncountrycodeofmanufacturerValueController;
  // State field(s) for baujjorconstructionyear widget.
  String? baujjorconstructionyearValue;
  FormFieldController<String>? baujjorconstructionyearValueController;
  // State field(s) for baummorconstructionmonth widget.
  String? baummorconstructionmonthValue;
  FormFieldController<String>? baummorconstructionmonthValueController;
  // State field(s) for gsberorbusinessarea widget.
  TextEditingController? gsberorbusinessareaController;
  String? Function(BuildContext, String?)?
      gsberorbusinessareaControllerValidator;
  // State field(s) for anlnrorassetno widget.
  TextEditingController? anlnrorassetnoController;
  String? Function(BuildContext, String?)? anlnrorassetnoControllerValidator;
  // State field(s) for costcentervalue widget.
  TextEditingController? costcentervalueController1;
  String? Function(BuildContext, String?)? costcentervalueController1Validator;
  // State field(s) for Dropdownplannergroup widget.
  String? dropdownplannergroupValue;
  FormFieldController<String>? dropdownplannergroupValueController;
  // State field(s) for Dropdownmainworkcentercode widget.
  String? dropdownmainworkcentercodeValue;
  FormFieldController<String>? dropdownmainworkcentercodeValueController;
  // State field(s) for Dropdowntplnr widget.
  String? dropdowntplnrValue;
  FormFieldController<String>? dropdowntplnrValueController;
  // State field(s) for costcentervalue widget.
  TextEditingController? costcentervalueController2;
  String? Function(BuildContext, String?)? costcentervalueController2Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  Completer<ApiCallResponse>? apiRequestCompleter;
  // Model for equipmentphoto component.
  late EquipmentphotoModel equipmentphotoModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    equipmentphotoModel = createModel(context, () => EquipmentphotoModel());
  }

  void dispose() {
    unfocusNode.dispose();
    eqktuorequipmentdescriptionController?.dispose();
    herstormanufacturerController?.dispose();
    typbzormodelnumberController?.dispose();
    sergeormanufacturerserialnumberController?.dispose();
    gsberorbusinessareaController?.dispose();
    anlnrorassetnoController?.dispose();
    costcentervalueController1?.dispose();
    costcentervalueController2?.dispose();
    equipmentphotoModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
