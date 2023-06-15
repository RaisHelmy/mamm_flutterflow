import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start MAMM API new Group Code

class MAMMAPINewGroup {
  static String baseUrl = 'https://mammtnbapi.ap.ngrok.io/';
  static Map<String, String> headers = {};
  static CreateEquipmentCall createEquipmentCall = CreateEquipmentCall();
  static UploadPhotoCall uploadPhotoCall = UploadPhotoCall();
  static UploadPhotoMCall uploadPhotoMCall = UploadPhotoMCall();
}

class CreateEquipmentCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'CreateEquipment',
      apiUrl: '${MAMMAPINewGroup.baseUrl}/Equipment/CreateEquipment',
      callType: ApiCallType.POST,
      headers: {
        ...MAMMAPINewGroup.headers,
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic reqid(dynamic response) => getJsonField(
        response,
        r'''$[:].RequestID''',
      );
  dynamic refno(dynamic response) => getJsonField(
        response,
        r'''$[:].ReferenceNo''',
      );
}

class UploadPhotoCall {
  Future<ApiCallResponse> call({
    String? uid = '',
    String? eqno = '',
    FFUploadedFile? photo,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'UploadPhoto',
      apiUrl: '${MAMMAPINewGroup.baseUrl}Equipment/uploadPhoto',
      callType: ApiCallType.POST,
      headers: {
        ...MAMMAPINewGroup.headers,
        'accept': '*/*',
        'Content-Type': 'multipart/form-data',
      },
      params: {
        'uid': uid,
        'eqno': eqno,
        'photo': photo,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class UploadPhotoMCall {
  Future<ApiCallResponse> call({
    String? uid = '',
    String? eqno = '',
    List<FFUploadedFile>? photoList,
  }) {
    final photo = photoList ?? [];

    return ApiManager.instance.makeApiCall(
      callName: 'UploadPhotoM',
      apiUrl: '${MAMMAPINewGroup.baseUrl}Equipment/uploadPhotoM',
      callType: ApiCallType.POST,
      headers: {
        ...MAMMAPINewGroup.headers,
        'accept': '*/*',
        'Content-Type': 'multipart/form-data',
      },
      params: {
        'uid': uid,
        'eqno': eqno,
        'photo': photo,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End MAMM API new Group Code

class GetuserinfoCall {
  static Future<ApiCallResponse> call({
    String? loginame = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getuserinfo',
      apiUrl: 'https://mammtnbapi.ap.ngrok.io/Equipment/GetUserInfo',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'uid': loginame,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic empid(dynamic response) => getJsonField(
        response,
        r'''$[:].EmployeeID''',
      );
  static dynamic empcode(dynamic response) => getJsonField(
        response,
        r'''$[:].EmployeeCode''',
      );
  static dynamic loginame(dynamic response) => getJsonField(
        response,
        r'''$[:].LoginName''',
      );
  static dynamic empname(dynamic response) => getJsonField(
        response,
        r'''$[:].EmployeeName''',
      );
  static dynamic email(dynamic response) => getJsonField(
        response,
        r'''$[:].EmailAddress''',
      );
  static dynamic workcenter(dynamic response) => getJsonField(
        response,
        r'''$[:].MainWorkCenter''',
      );
}

class GetequipmentCall {
  static Future<ApiCallResponse> call({
    String? equnr = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getequipment',
      apiUrl: 'https://mammtnbapi.ap.ngrok.io/Equipment/GetEquipment',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'EQUNR': equnr,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic query1(dynamic response) => getJsonField(
        response,
        r'''$.Query1''',
        true,
      );
  static dynamic equnr(dynamic response) => getJsonField(
        response,
        r'''$.Query1[:][:].EQUNR''',
      );
  static dynamic tplnr(dynamic response) => getJsonField(
        response,
        r'''$.Query1[:][:].TPLNR''',
      );
  static dynamic pltxt(dynamic response) => getJsonField(
        response,
        r'''$.Query1[:][:].PLTXT''',
      );
  static dynamic eqktu(dynamic response) => getJsonField(
        response,
        r'''$.Query1[:][:].EQKTU''',
      );
  static dynamic herst(dynamic response) => getJsonField(
        response,
        r'''$.Query1[:][:].HERST''',
      );
  static dynamic typbz(dynamic response) => getJsonField(
        response,
        r'''$.Query1[:][:].TYPBZ''',
      );
  static dynamic serge(dynamic response) => getJsonField(
        response,
        r'''$.Query1[:][:].SERGE''',
      );
  static dynamic eqart(dynamic response) => getJsonField(
        response,
        r'''$.Query1[:][:].EQART''',
      );
  static dynamic objtypetext(dynamic response) => getJsonField(
        response,
        r'''$.Query1[:][:].ObjectTypeText''',
      );
  static dynamic inbdt(dynamic response) => getJsonField(
        response,
        r'''$.Query1[:][:].INBDT''',
      );
  static dynamic herld(dynamic response) => getJsonField(
        response,
        r'''$.Query1[:][:].HERLD''',
      );
  static dynamic gsber(dynamic response) => getJsonField(
        response,
        r'''$.Query1[:][:].GSBER''',
      );
  static dynamic kostl(dynamic response) => getJsonField(
        response,
        r'''$.Query1[:][:].KOSTL''',
      );
  static dynamic ingrp(dynamic response) => getJsonField(
        response,
        r'''$.Query1[:][:].INGRP''',
      );
  static dynamic plannergroupname(dynamic response) => getJsonField(
        response,
        r'''$.Query1[:][:].PlannerGroupName''',
      );
  static dynamic plannergroup(dynamic response) => getJsonField(
        response,
        r'''$.Query1[:][:].PlannerGroup''',
      );
  static dynamic mainworkcentername(dynamic response) => getJsonField(
        response,
        r'''$.Query1[:][:].MainWorkCenterName''',
      );
  static dynamic mainworkcentercode(dynamic response) => getJsonField(
        response,
        r'''$.Query1[:][:].MainWorkCenterCode''',
      );
  static dynamic mainworkcenter(dynamic response) => getJsonField(
        response,
        r'''$.Query1[:][:].MainWorkCenter''',
      );
  static dynamic baujj(dynamic response) => getJsonField(
        response,
        r'''$.Query1[:][:].BAUJJ''',
      );
  static dynamic baumm(dynamic response) => getJsonField(
        response,
        r'''$.Query1[:][:].BAUMM''',
      );
  static dynamic query2(dynamic response) => getJsonField(
        response,
        r'''$.Query2''',
      );
  static dynamic anlnr(dynamic response) => getJsonField(
        response,
        r'''$.Query1[:][:].ANLNR''',
      );
  static dynamic anlun(dynamic response) => getJsonField(
        response,
        r'''$.Query1[:][:].ANLUN''',
      );
  static dynamic hequi(dynamic response) => getJsonField(
        response,
        r'''$.Query1[:][:].HEQUI''',
      );
  static dynamic classheader(dynamic response) => getJsonField(
        response,
        r'''$.Query1[1][*]''',
        true,
      );
  static dynamic classheadercode(dynamic response) => getJsonField(
        response,
        r'''$.Query1[1][*].ClassHeaderCode''',
        true,
      );
  static dynamic charid(dynamic response) => getJsonField(
        response,
        r'''$.Query2["[GetClassInfoByClass]"][*].CharID''',
        true,
      );
  static dynamic charname(dynamic response) => getJsonField(
        response,
        r'''$.Query2["[GetClassInfoByClass]"][*].CharName''',
        true,
      );
  static dynamic char(dynamic response) => getJsonField(
        response,
        r'''$.Query2["[GetClassInfoByClass]"][*]''',
        true,
      );
}

class GetmysubmissionCall {
  static Future<ApiCallResponse> call({
    String? uid = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getmysubmission',
      apiUrl: 'https://mammtnbapi.ap.ngrok.io/Equipment/GetMySubmissionHistory',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'uid': uid,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$[:].ID''',
      );
  static dynamic refno(dynamic response) => getJsonField(
        response,
        r'''$[:].ReferenceNo''',
      );
  static dynamic eqno(dynamic response) => getJsonField(
        response,
        r'''$[:].EquipmentNo''',
      );
  static dynamic equnr(dynamic response) => getJsonField(
        response,
        r'''$[:].EQUNR''',
      );
  static dynamic objtypecode(dynamic response) => getJsonField(
        response,
        r'''$[:].ObjectTypeCode''',
      );
  static dynamic objtypedesc(dynamic response) => getJsonField(
        response,
        r'''$[:].ObjectTypeDesc''',
      );
  static dynamic statdesc(dynamic response) => getJsonField(
        response,
        r'''$[:].StatusDesc''',
      );
  static dynamic colorcode(dynamic response) => getJsonField(
        response,
        r'''$[:].ColorCode''',
      );
  static dynamic empcode(dynamic response) => getJsonField(
        response,
        r'''$[:].EmployeeCode''',
      );
  static dynamic empname(dynamic response) => getJsonField(
        response,
        r'''$[:].EmployeeName''',
      );
  static dynamic moddate(dynamic response) => getJsonField(
        response,
        r'''$[:].ModifiedDate''',
      );
}

class GetequipmenthistoryCall {
  static Future<ApiCallResponse> call({
    String? equnr = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getequipmenthistory',
      apiUrl:
          'https://mammtnbapi.ap.ngrok.io/Equipment/GetEquipmentChangeHistory',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'EQUNR': equnr,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetphotoCall {
  static Future<ApiCallResponse> call({
    String? eqno = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getphoto',
      apiUrl: 'https://mammtnbapi.ap.ngrok.io/Equipment/getPhoto',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'eqno': eqno,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$[:].ID''',
        true,
      );
  static dynamic fileid(dynamic response) => getJsonField(
        response,
        r'''$[:].FileID''',
        true,
      );
  static dynamic listfile(dynamic response) => getJsonField(
        response,
        r'''$[:]''',
        true,
      );
}

class TestphotoCall {
  static Future<ApiCallResponse> call({
    String? filename = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'testphoto',
      apiUrl: 'https://mammtnbapi.ap.ngrok.io/Equipment/testPhoto',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'filename': filename,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class AdloginCall {
  static Future<ApiCallResponse> call({
    String? userName = '',
    String? password = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'adlogin',
      apiUrl:
          'https://mammtnbapi2.ap.ngrok.io/ADchecker/login?userName=${userName}&password=${password}',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.NONE,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic token(dynamic response) => getJsonField(
        response,
        r'''$.token''',
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
