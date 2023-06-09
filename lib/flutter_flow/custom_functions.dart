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
