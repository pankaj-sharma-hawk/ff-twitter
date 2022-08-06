import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

int countText(String? word) {
  // Add your function code here!
  if (word == null) return 0;
  return word.length;
}

bool isCreateAccountEmpty(
  String? name,
  String? emailAddress,
  String? date,
) {
  if (name == null || emailAddress == null || date == null) {
    return true;
  }
  return false;
}

String getUserHandleFromEmail(String emailId) {
  return emailId.split("@")[0];
}
