import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetUserInfoByLoginNameCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'GetUserInfoByLoginName',
      apiUrl:
          'https://24fca27f-f453-49c7-a121-cf218ff97cb5.mock.pstmn.io/Equipment/GetUserInfoByLoginName',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic guinfobyloginname(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
}

class GetMyHistoryCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'GetMyHistory',
      apiUrl:
          'https://24fca27f-f453-49c7-a121-cf218ff97cb5.mock.pstmn.io/Equipment/GetMyHistory',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic gmyhistory(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      );
  static dynamic gmyhistoryid(dynamic response) => getJsonField(
        response,
        r'''$[:].ID''',
      );
  static dynamic gmyhistoryreferenceno(dynamic response) => getJsonField(
        response,
        r'''$[:].ReferenceNo''',
      );
  static dynamic gmyhistoryeqno(dynamic response) => getJsonField(
        response,
        r'''$[:].EquipmentNo''',
      );
  static dynamic gmyhistoryequnr(dynamic response) => getJsonField(
        response,
        r'''$[:].EQUNR''',
      );
  static dynamic gmyhistoryobjtypecode(dynamic response) => getJsonField(
        response,
        r'''$[:].ObjectTypeCode''',
      );
  static dynamic gmyhistoryobjtypedesc(dynamic response) => getJsonField(
        response,
        r'''$[:].ObjectTypeDesc''',
      );
  static dynamic gmyhistorystatusdesc(dynamic response) => getJsonField(
        response,
        r'''$[:].StatusDesc''',
      );
  static dynamic gmyhistorycolorcode(dynamic response) => getJsonField(
        response,
        r'''$[:].ColorCode''',
      );
  static dynamic gmyhistoryemployeecode(dynamic response) => getJsonField(
        response,
        r'''$[:].EmployeeCode''',
      );
  static dynamic gmyhistoryemployeename(dynamic response) => getJsonField(
        response,
        r'''$[:].EmployeeName''',
      );
  static dynamic gmyhistorymodifieddate(dynamic response) => getJsonField(
        response,
        r'''$[:].ModifiedDate''',
      );
}

class GetPictureCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'GetPicture',
      apiUrl:
          'https://c9414b8e-426e-418d-bcdf-19bf5947f0f7.mock.pstmn.io/Equipment/testPhotos2',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': '*/*',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic filename(dynamic response) => getJsonField(
        response,
        r'''$[:].filename''',
      );
  static dynamic imagedata(dynamic response) => getJsonField(
        response,
        r'''$[:].imageData''',
      );
  static dynamic getpicture(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
}

class GetActionHistoryCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'GetActionHistory',
      apiUrl:
          'https://24fca27f-f453-49c7-a121-cf218ff97cb5.mock.pstmn.io/Equipment/GetActionHistory',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic gactionhistory(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
}

class GetEquipmentChangeHistoryByEQUNRCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'GetEquipmentChangeHistoryByEQUNR',
      apiUrl:
          'https://24fca27f-f453-49c7-a121-cf218ff97cb5.mock.pstmn.io/Equipment/GetEquipmentChangeHistoryByEQUNR',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic geqchangehistorybyequnr(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
}

class GetEquipmentBySerialNoCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'GetEquipmentBySerialNo',
      apiUrl:
          'https://24fca27f-f453-49c7-a121-cf218ff97cb5.mock.pstmn.io/Equipment/GetEquipmentBySerialNo',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic geqchangehistorybysrno(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
  static dynamic bysernoEqunr(dynamic response) => getJsonField(
        response,
        r'''$[:].EQUNR''',
        true,
      );
  static dynamic bysernoTplnr(dynamic response) => getJsonField(
        response,
        r'''$[:].TPLNR''',
        true,
      );
  static dynamic bysernoEqktu(dynamic response) => getJsonField(
        response,
        r'''$[:].EQKTU''',
        true,
      );
  static dynamic bysernoHerst(dynamic response) => getJsonField(
        response,
        r'''$[:].HERST''',
        true,
      );
  static dynamic bysernoTypbz(dynamic response) => getJsonField(
        response,
        r'''$[:].TYPBZ''',
        true,
      );
  static dynamic bysernoEqart(dynamic response) => getJsonField(
        response,
        r'''$[:].EQART''',
        true,
      );
  static dynamic bysernoObj(dynamic response) => getJsonField(
        response,
        r'''$[:].ObjectTypePrefix''',
        true,
      );
  static dynamic bysernoColor(dynamic response) => getJsonField(
        response,
        r'''$[:].ColorCode''',
        true,
      );
}

class GetEquipmentByEQUNRCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'GetEquipmentByEQUNR',
      apiUrl:
          'https://24fca27f-f453-49c7-a121-cf218ff97cb5.mock.pstmn.io/Equipment/GetEquipmentByEQUNR',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic gequnr(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
  static dynamic listA(dynamic response) => getJsonField(
        response,
        r'''$.ListA''',
      );
  static dynamic equnr(dynamic response) => getJsonField(
        response,
        r'''$.ListA[:].EQUNR''',
      );
  static dynamic tplnr(dynamic response) => getJsonField(
        response,
        r'''$.ListA[:].TPLNR''',
      );
  static dynamic pltxt(dynamic response) => getJsonField(
        response,
        r'''$.ListA[:].PLTXT''',
      );
  static dynamic eqktu(dynamic response) => getJsonField(
        response,
        r'''$.ListA[:].EQKTU''',
      );
  static dynamic herst(dynamic response) => getJsonField(
        response,
        r'''$.ListA[:].HERST''',
      );
  static dynamic typbz(dynamic response) => getJsonField(
        response,
        r'''$.ListA[:].TYPBZ''',
      );
  static dynamic serge(dynamic response) => getJsonField(
        response,
        r'''$.ListA[:].SERGE''',
      );
  static dynamic eqart(dynamic response) => getJsonField(
        response,
        r'''$.ListA[:].EQART''',
      );
  static dynamic obj(dynamic response) => getJsonField(
        response,
        r'''$.ListA[:].ObjectTypeText''',
      );
  static dynamic inbdt(dynamic response) => getJsonField(
        response,
        r'''$.ListA[:].INBDT''',
      );
  static dynamic herld(dynamic response) => getJsonField(
        response,
        r'''$.ListA[:].HERLD''',
      );
  static dynamic gsber(dynamic response) => getJsonField(
        response,
        r'''$.ListA[:].GSBER''',
      );
  static dynamic kostl(dynamic response) => getJsonField(
        response,
        r'''$.ListA[:].KOSTL''',
      );
  static dynamic ingrp(dynamic response) => getJsonField(
        response,
        r'''$.ListA[:].INGRP''',
      );
  static dynamic plannergroupname(dynamic response) => getJsonField(
        response,
        r'''$.ListA[:].PlannerGroupName''',
      );
  static dynamic plannergroup(dynamic response) => getJsonField(
        response,
        r'''$.ListA[:].PlannerGroup''',
      );
  static dynamic mainworkcentername(dynamic response) => getJsonField(
        response,
        r'''$.ListA[:].MainWorkCenterName''',
      );
  static dynamic mainworkcentercode(dynamic response) => getJsonField(
        response,
        r'''$.ListA[:].MainWorkCenterCode''',
      );
  static dynamic mainworkcenter(dynamic response) => getJsonField(
        response,
        r'''$.ListA[:].MainWorkCenter''',
      );
  static dynamic baujj(dynamic response) => getJsonField(
        response,
        r'''$.ListA[:].BAUJJ''',
      );
  static dynamic baumm(dynamic response) => getJsonField(
        response,
        r'''$.ListA[:].BAUMM''',
      );
  static dynamic listB(dynamic response) => getJsonField(
        response,
        r'''$.ListB''',
      );
  static dynamic classheadercode(dynamic response) => getJsonField(
        response,
        r'''$.ListB[:].ClassHeaderCode''',
      );
  static dynamic listC(dynamic response) => getJsonField(
        response,
        r'''$.ListC''',
      );
  static dynamic classheadcode(dynamic response) => getJsonField(
        response,
        r'''$.ListC[:].ClassHeaderCode''',
      );
  static dynamic characteristiccode(dynamic response) => getJsonField(
        response,
        r'''$.ListC[:].CharacteristicCode''',
      );
  static dynamic newvalue(dynamic response) => getJsonField(
        response,
        r'''$.ListC[:].NewValue''',
      );
  static dynamic listD(dynamic response) => getJsonField(
        response,
        r'''$.ListD''',
      );
  static dynamic filename(dynamic response) => getJsonField(
        response,
        r'''$.ListD[:].FileName''',
      );
  static dynamic filesize(dynamic response) => getJsonField(
        response,
        r'''$.ListD[:].FileSize''',
      );
  static dynamic description(dynamic response) => getJsonField(
        response,
        r'''$.ListD[:].Description''',
      );
  static dynamic filepath(dynamic response) => getJsonField(
        response,
        r'''$.ListD[:].FilePath''',
      );
  static dynamic approved(dynamic response) => getJsonField(
        response,
        r'''$.ListD[:].FileStatus''',
      );
  static dynamic createddate(dynamic response) => getJsonField(
        response,
        r'''$.ListD[:].CreatedDate''',
      );
  static dynamic uploadedby(dynamic response) => getJsonField(
        response,
        r'''$.ListD[:].UploadedBy''',
      );
}

class WSGetActionHistoryByRequestIDCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'WSGetActionHistoryByRequestID',
      apiUrl:
          'https://tomas2.tnb.com.my/_layouts/15/MAMM_WebApi/api/Equipment/WS_GetActionHistoryByRequestID',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'RequestID': "801D19EC-E7E1-4291-81A8-B31857404BBB",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic gequnr(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
