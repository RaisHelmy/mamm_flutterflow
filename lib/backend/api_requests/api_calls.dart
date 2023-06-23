import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetuserinfoCall {
  static Future<ApiCallResponse> call({
    String? loginame = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getuserinfo',
      apiUrl: 'https://mammtnbapi2.ap.ngrok.io/Equipment/GetUserInfo',
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
        r'''$[0].EmployeeID''',
      );
  static dynamic empcode(dynamic response) => getJsonField(
        response,
        r'''$[0].EmployeeCode''',
      );
  static dynamic loginame(dynamic response) => getJsonField(
        response,
        r'''$[0].LoginName''',
      );
  static dynamic empname(dynamic response) => getJsonField(
        response,
        r'''$[0].EmployeeName''',
      );
  static dynamic email(dynamic response) => getJsonField(
        response,
        r'''$[0].EmailAddress''',
      );
  static dynamic workcenter(dynamic response) => getJsonField(
        response,
        r'''$[0].MainWorkCenter''',
      );
}

class GetequipmentCall {
  static Future<ApiCallResponse> call({
    String? equnr = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getequipment',
      apiUrl: 'https://mammtnbapi2.ap.ngrok.io/Equipment/GetEquipment',
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
      apiUrl:
          'https://mammtnbapi2.ap.ngrok.io/Equipment/GetMySubmissionHistory',
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
        true,
      );
  static dynamic refno(dynamic response) => getJsonField(
        response,
        r'''$[:].ReferenceNo''',
        true,
      );
  static dynamic eqno(dynamic response) => getJsonField(
        response,
        r'''$[:].EquipmentNo''',
        true,
      );
  static dynamic equnr(dynamic response) => getJsonField(
        response,
        r'''$[:].EQUNR''',
        true,
      );
  static dynamic objtypecode(dynamic response) => getJsonField(
        response,
        r'''$[:].ObjectTypeCode''',
        true,
      );
  static dynamic objtypedesc(dynamic response) => getJsonField(
        response,
        r'''$[:].ObjectTypeDesc''',
        true,
      );
  static dynamic statdesc(dynamic response) => getJsonField(
        response,
        r'''$[:].StatusDesc''',
        true,
      );
  static dynamic colorcode(dynamic response) => getJsonField(
        response,
        r'''$[:].ColorCode''',
        true,
      );
  static dynamic empcode(dynamic response) => getJsonField(
        response,
        r'''$[:].EmployeeCode''',
        true,
      );
  static dynamic empname(dynamic response) => getJsonField(
        response,
        r'''$[:].EmployeeName''',
        true,
      );
  static dynamic moddate(dynamic response) => getJsonField(
        response,
        r'''$[:].ModifiedDate''',
        true,
      );
  static dynamic allchild(dynamic response) => getJsonField(
        response,
        r'''$[:]''',
        true,
      );
  static dynamic all(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      );
  static dynamic eachchild(dynamic response) => getJsonField(
        response,
        r'''$[*]''',
        true,
      );
}

class GetequipmenthistoryCall {
  static Future<ApiCallResponse> call({
    String? equnr = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getequipmenthistory',
      apiUrl:
          'https://mammtnbapi2.ap.ngrok.io/Equipment/GetEquipmentChangeHistory',
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

class GetactionhistoryCall {
  static Future<ApiCallResponse> call({
    String? sourceid = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getactionhistory',
      apiUrl: 'https://mammtnbapi2.ap.ngrok.io/Equipment/GetActionHistory',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'sourceid': sourceid,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic empname(dynamic response) => getJsonField(
        response,
        r'''$[:].EmployeeName''',
        true,
      );
  static dynamic empcode(dynamic response) => getJsonField(
        response,
        r'''$[:].EmployeeCode''',
        true,
      );
  static dynamic comment(dynamic response) => getJsonField(
        response,
        r'''$[:].Comment''',
        true,
      );
  static dynamic activityname(dynamic response) => getJsonField(
        response,
        r'''$[:].ActivityName''',
        true,
      );
  static dynamic activityaction(dynamic response) => getJsonField(
        response,
        r'''$[:].ActivityAction''',
        true,
      );
  static dynamic createddate(dynamic response) => getJsonField(
        response,
        r'''$[:].CreatedDate''',
        true,
      );
  static dynamic colorcode(dynamic response) => getJsonField(
        response,
        r'''$[:].ColorCode''',
        true,
      );
}

class GetPhotoCall {
  static Future<ApiCallResponse> call({
    String? eqno = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GetPhoto',
      apiUrl: 'https://mammtnbapi2.ap.ngrok.io/EquipmentPhoto/getPhoto',
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
  static dynamic filesize(dynamic response) => getJsonField(
        response,
        r'''$[:].FileSize''',
        true,
      );
  static dynamic filestatus(dynamic response) => getJsonField(
        response,
        r'''$[:].FileStatus''',
        true,
      );
  static dynamic category(dynamic response) => getJsonField(
        response,
        r'''$[:].Category''',
        true,
      );
  static dynamic creatby(dynamic response) => getJsonField(
        response,
        r'''$[:].CreatedBy''',
        true,
      );
  static dynamic creatdate(dynamic response) => getJsonField(
        response,
        r'''$[:].CreatedDate''',
        true,
      );
  static dynamic modby(dynamic response) => getJsonField(
        response,
        r'''$[:].ModifiedBy''',
        true,
      );
  static dynamic moddate(dynamic response) => getJsonField(
        response,
        r'''$[:].ModifiedDate''',
        true,
      );
}

class GetAllTypeListfromJsonDataCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'GetAllTypeListfromJsonData',
      apiUrl:
          'https://mammtnbapi2.ap.ngrok.io/EquipmentType/GetAllTypeListfromJsonData',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic zone(dynamic response) => getJsonField(
        response,
        r'''$.Zone[:]''',
        true,
      );
  static dynamic subzone(dynamic response) => getJsonField(
        response,
        r'''$.Subzone[:]''',
        true,
      );
  static dynamic substation(dynamic response) => getJsonField(
        response,
        r'''$.Substation[:]''',
        true,
      );
  static dynamic bay(dynamic response) => getJsonField(
        response,
        r'''$.Bay[:]''',
        true,
      );
  static dynamic primarysecondary(dynamic response) => getJsonField(
        response,
        r'''$.Primarysecondary[:]''',
        true,
      );
  static dynamic objecttype(dynamic response) => getJsonField(
        response,
        r'''$.ObjectType[:]''',
        true,
      );
}

class GetZonefromJsonCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'GetZonefromJson',
      apiUrl: 'https://mammtnbapi2.ap.ngrok.io/EquipmentType/GetZonefromJson',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
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
  static dynamic value(dynamic response) => getJsonField(
        response,
        r'''$[:].Value''',
        true,
      );
}

class GetSubZonefromJsonCall {
  static Future<ApiCallResponse> call({
    String? zone = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GetSubZonefromJson',
      apiUrl:
          'https://mammtnbapi2.ap.ngrok.io/EquipmentType/GetSubZonefromJson',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'Zone': zone,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic ingrp(dynamic response) => getJsonField(
        response,
        r'''$[:].INGRP''',
        true,
      );
  static dynamic innam(dynamic response) => getJsonField(
        response,
        r'''$[:].INNAM''',
        true,
      );
  static dynamic auartwp(dynamic response) => getJsonField(
        response,
        r'''$[:].AUART_WP''',
        true,
      );
  static dynamic zonecode(dynamic response) => getJsonField(
        response,
        r'''$[:].ZoneCode''',
        true,
      );
  static dynamic zonedesc(dynamic response) => getJsonField(
        response,
        r'''$[:].ZoneDesc''',
        true,
      );
}

class GetSubstationfromJsonCall {
  static Future<ApiCallResponse> call({
    String? subzoneINGRP = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GetSubstationfromJson',
      apiUrl:
          'https://mammtnbapi2.ap.ngrok.io/EquipmentType/GetSubstationfromJson',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'SubzoneINGRP': subzoneINGRP,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetBayCall {
  static Future<ApiCallResponse> call({
    String? substationFL = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GetBay',
      apiUrl: 'https://mammtnbapi2.ap.ngrok.io/EquipmentType/GetBayfromJson',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'SubstationFL': substationFL,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetObjectTypeCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'GetObjectType',
      apiUrl:
          'https://mammtnbapi2.ap.ngrok.io/EquipmentType/GetObjectTypefromJson',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic objectclass(dynamic response) => getJsonField(
        response,
        r'''$[:].CLASS''',
        true,
      );
  static dynamic eqart(dynamic response) => getJsonField(
        response,
        r'''$[:].EQART''',
        true,
      );
  static dynamic objtext(dynamic response) => getJsonField(
        response,
        r'''$[:].ObjectTypeText''',
        true,
      );
  static dynamic objprefix(dynamic response) => getJsonField(
        response,
        r'''$[:].ObjectTypePrefix''',
        true,
      );
  static dynamic color(dynamic response) => getJsonField(
        response,
        r'''$[:].ColorCode''',
        true,
      );
}

class LoginCall {
  static Future<ApiCallResponse> call({
    String? userName = '',
    String? password = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Login',
      apiUrl:
          'https://mammtnbapi2.ap.ngrok.io/ADchecker/login?userName=${userName}&password=${password}',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class UploadPhotoCall {
  static Future<ApiCallResponse> call({
    String? uid = '',
    String? eqno = '',
    FFUploadedFile? photo,
    String? description = 'UAT',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'UploadPhoto',
      apiUrl:
          'https://mammtnbapi2.ap.ngrok.io/EquipmentPhoto/uploadPhoto?uid=${uid}&eqno=${eqno}&description=${description}',
      callType: ApiCallType.POST,
      headers: {},
      params: {
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
  static Future<ApiCallResponse> call({
    String? uid = '',
    String? eqno = '',
    List<FFUploadedFile>? photosList,
    String? description = '',
  }) {
    final photos = photosList ?? [];

    return ApiManager.instance.makeApiCall(
      callName: 'UploadPhotoM',
      apiUrl:
          'https://mammtnbapi2.ap.ngrok.io/EquipmentPhoto/uploadPhotoM?uid=${uid}&eqno=${eqno}&description=${description}',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'photos': photos,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class DeletePhotoCall {
  static Future<ApiCallResponse> call({
    String? filename = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'DeletePhoto',
      apiUrl:
          'https://mammtnbapi2.ap.ngrok.io/EquipmentPhoto/deletePhoto/${filename}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetEquipmentBySerialNoCall {
  static Future<ApiCallResponse> call({
    String? serialNo = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GetEquipmentBySerialNo',
      apiUrl:
          'https://mammtnbapi2.ap.ngrok.io/Equipment/GetEquipmentBySerialNo',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'serialNo': serialNo,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetEquipmentBySubstationCall {
  static Future<ApiCallResponse> call({
    String? substationFL = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GetEquipmentBySubstation',
      apiUrl:
          'https://mammtnbapi2.ap.ngrok.io/Equipment/GetEquipmentBySubstation',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'substationFL': substationFL,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class CreateEquipmentCall {
  static Future<ApiCallResponse> call({
    String? fl = '',
    String? flDesc = '',
    String? equipmentDesc = '',
    String? manufacturer = '',
    String? modelNo = '',
    String? serialNo = '',
    String? objectTypeCode = '',
    String? objectTypeDesc = '',
    String? startUpDate = '',
    String? constructYear = '',
    String? constructMonth = '',
    String? countryName = '',
    String? businessArea = '',
    String? assetNo = '',
    String? costCenter = '',
    String? plannerGroupCode = '',
    String? plannerGroupDesc = '',
    String? mainWorkCenterCode = '',
    String? mainWorkCenterDesc = '',
    String? superiorEquipmentNo = '',
    String? createdBy = '',
    String? eqNo = '',
    String? countryCode = '',
    String? assetSubNo = '',
  }) {
    final body = '''
{
  "fl": "${fl}",
  "flDesc": "${flDesc}",
  "equipmentDesc": "${equipmentDesc}",
  "manufacturer": "${manufacturer}",
  "modelNo": "${modelNo}",
  "serialNo": "${serialNo}",
  "objectTypeCode": "${objectTypeCode}",
  "objectTypeDesc": "${objectTypeDesc}",
  "startUpDate": "${startUpDate}",
  "constructYear": "${constructYear}",
  "constructMonth": "${constructMonth}",
  "countryCode": "${countryCode}",
  "countryName": "${countryName}",
  "businessArea": "${businessArea}",
  "assetNo": "${assetNo}",
  "assetSubNo": "${assetSubNo}",
  "costCenter": "${costCenter}",
  "plannerGroupCode": "${plannerGroupCode}",
  "plannerGroupDesc": "${plannerGroupDesc}",
  "mainWorkCenterCode": "${mainWorkCenterCode}",
  "mainWorkCenterDesc": "${mainWorkCenterDesc}",
  "superiorEquipmentNo": "",
  "statusCode": "PE",
  "createdBy": "${createdBy}",
  "eqNo": "${eqNo}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CreateEquipment',
      apiUrl: 'https://mammtnbapi2.ap.ngrok.io/Equipment/CreateEquipment',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic requestID(dynamic response) => getJsonField(
        response,
        r'''$[:].RequestID''',
      );
  static dynamic referenceNo(dynamic response) => getJsonField(
        response,
        r'''$[:].ReferenceNo''',
      );
}

class GetCountryCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'GetCountry',
      apiUrl: 'https://mammtnbapi2.ap.ngrok.io/EquipmentType/GetCountry',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic code(dynamic response) => getJsonField(
        response,
        r'''$[:].Code''',
        true,
      );
  static dynamic name(dynamic response) => getJsonField(
        response,
        r'''$[:].Name''',
        true,
      );
}

class GetPlannerGroupCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'GetPlannerGroup',
      apiUrl: 'https://mammtnbapi2.ap.ngrok.io/EquipmentType/GetPlannerGroup',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic code(dynamic response) => getJsonField(
        response,
        r'''$[:].Code''',
        true,
      );
  static dynamic name(dynamic response) => getJsonField(
        response,
        r'''$[:].Name''',
        true,
      );
}

class GetMainWorkCenterCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'GetMainWorkCenter',
      apiUrl: 'https://mammtnbapi2.ap.ngrok.io/EquipmentType/GetMainWorkCenter',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic code(dynamic response) => getJsonField(
        response,
        r'''$[:].Code''',
        true,
      );
  static dynamic name(dynamic response) => getJsonField(
        response,
        r'''$[:].Name''',
        true,
      );
  static dynamic costcenter(dynamic response) => getJsonField(
        response,
        r'''$[:].CostCenter''',
        true,
      );
  static dynamic businessArea(dynamic response) => getJsonField(
        response,
        r'''$[:].BusinessArea''',
        true,
      );
}

class GetListClassCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'GetListClass',
      apiUrl: 'https://mammtnbapi2.ap.ngrok.io/EquipmentType/GetListClass',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic classheadercode(dynamic response) => getJsonField(
        response,
        r'''$[:].ClassHeaderCode''',
        true,
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
