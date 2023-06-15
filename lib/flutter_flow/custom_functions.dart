import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';

String? dateformat(String? originalDate) {
  if (originalDate != null) {
    DateTime dateTime = DateTime.parse(originalDate);
    String formattedDate = DateFormat('M/d/yyyy h:mm:ss a').format(dateTime);
    return formattedDate;
  }
}

dynamic distinctlist(dynamic test) {
  List<String> inputList = List<String>.from(test);
  List<String> distinctList = inputList.toSet().toList();
  return distinctList;
}

String? colortohex(String colorName) {
  String hexColor = '';
  switch (colorName.toLowerCase()) {
    case 'red':
      hexColor = '#FF0000';
      break;
    case 'green':
      hexColor = '#00FF00';
      break;
    case 'blue':
      hexColor = '#0000FF';
      break;
    case 'yellow':
      hexColor = '#FFFF00';
      break;
    case 'orange':
      hexColor = '#FFA500';
      break;
    case 'purple':
      hexColor = '#800080';
      break;
    case 'pink':
      hexColor = '#FFC0CB';
      break;
    case 'brown':
      hexColor = '#A52A2A';
      break;
    case 'black':
      hexColor = '#000000';
      break;
    case 'white':
      hexColor = '#FFFFFF';
      break;
    default:
      print('Color not found!');
  }
  return hexColor;
}

dynamic tokentojson(String token) {
  try {
    final parts = token.split('.');
    final payload = parts[1];

    final normalizedPayload = base64Url.normalize(payload);
    final decodedPayload = utf8.decode(base64Url.decode(normalizedPayload));

    final payloadData = json.decode(decodedPayload);

    final username = payloadData['sub'].toString().replaceAll('\\\\', '\\');
    final expiration = payloadData['exp'] as int?;

    if (username != null && expiration != null) {
      final expirationDate =
          DateTime.fromMillisecondsSinceEpoch(expiration * 1000);
      final formattedExpiration =
          DateFormat.yMMMMd().add_jms().format(expirationDate);
      final timeAgo = timeago.format(expirationDate);

      final result = [
        {
          'username': username,
          'expiration': formattedExpiration,
        }
      ];
      final jsonString = json.encode(result);
      return jsonString;
    }
  } catch (e) {
    print('Error parsing JWT token: $e');
  }
  return null;
}

String? uriencode(String input) {
  try {
    final encodedInput = Uri.encodeComponent(input);
    return encodedInput;
  } catch (e) {
    print('Error encoding input: $e');
  }
  return null;
}

String? tokentousername(String token) {
  try {
    final parts = token.split('.');
    final payload = parts[1];

    final normalizedPayload = base64Url.normalize(payload);
    final decodedPayload = utf8.decode(base64Url.decode(normalizedPayload));

    final payloadData = json.decode(decodedPayload);

    final username = payloadData['sub'].toString().replaceAll('\\\\', '\\');
    return username;
  } catch (e) {
    print('Error parsing JWT token: $e');
  }

  return null;
}

DateTime? tokentoexpieration(String token) {
  try {
    final parts = token.split('.');
    final payload = parts[1];

    final normalizedPayload = base64Url.normalize(payload);
    final decodedPayload = utf8.decode(base64Url.decode(normalizedPayload));

    final payloadData = json.decode(decodedPayload);

    final expiration = payloadData['exp'] as int?;

    if (expiration != null) {
      final expirationDate =
          DateTime.fromMillisecondsSinceEpoch(expiration * 1000);

      return expirationDate;
    }
  } catch (e) {
    print('Error parsing JWT token: $e');
  }
  return null;
}

String doubletosingleslash(String doubleslash) {
  return doubleslash.replaceAll('\\\\', '\\');
}
