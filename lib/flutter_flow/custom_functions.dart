import 'dart:convert';
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

String nutriscore(String? type) {
  // display an url in function of a string
  switch (type) {
    case ("e"):
      return 'https://static.openfoodfacts.org/images/attributes/nutriscore-e.png';
      break;
    case ("d"):
      return 'https://static.openfoodfacts.org/images/attributes/nutriscore-d.png';
      break;
    case ("c"):
      return 'https://static.openfoodfacts.org/images/attributes/nutriscore-c.png';
      break;
    case ("b"):
      return 'https://static.openfoodfacts.org/images/attributes/nutriscore-b.png';
      break;
    case ("a"):
      return 'https://static.openfoodfacts.org/images/attributes/nutriscore-a.png';
      break;
    default:
      // return 'https://i.stack.imgur.com/CyQMX.png';
      return 'https://www.zupimages.net/up/22/25/gk9j.png';
  }
}

String? recette(String text) {
  // add the word hello to text
  if (text.isEmpty) return null;
  String clean = text.trim().replaceAll(' ', '-');
  if (clean.length == 0) return '';
  String modified =
      "https://www.marmiton.org/recettes/recherche.aspx?aqt=" + clean;
  return modified;
}

String novagroup(String? type) {
  // display an url in function of a string
  switch (type) {
    case ("4"):
      return 'https://static.openfoodfacts.org/images/attributes/nova-group-4.png';
      break;
    case ("3"):
      return 'https://static.openfoodfacts.org/images/attributes/nova-group-3.png';
      break;
    case ("2"):
      return 'https://static.openfoodfacts.org/images/attributes/nova-group-2.png';
      break;
    case ("1"):
      return 'https://static.openfoodfacts.org/images/attributes/nova-group-1.png';
      break;
    default:
      return 'https://www.zupimages.net/up/22/25/gk9j.png';
  }
}

String? userScore(
  int registredProductCount,
  int expiredProductCount,
) {
  if (registredProductCount == 0) return '-';
  double ratio = expiredProductCount / registredProductCount;
  if (ratio < 0.025 && registredProductCount >= 10) return 'A+';
  if (ratio < 0.05 && registredProductCount >= 5) return 'A';
  if (ratio < 0.075) return 'B';
  if (ratio < 0.1) return 'C';
  if (ratio < 0.125 && registredProductCount >= 20) return 'D';
  if (ratio < 0.15 && registredProductCount >= 20) return 'E';
  return 'F';
}

String ecoscore(String? type) {
  // display an url in function of a string
  switch (type) {
    case ("e"):
      return 'https://static.openfoodfacts.org/images/attributes/ecoscore-e.png';
      break;
    case ("d"):
      return 'https://static.openfoodfacts.org/images/attributes/ecoscore-d.png';
      break;
    case ("c"):
      return 'https://static.openfoodfacts.org/images/attributes/ecoscore-c.png';
      break;
    case ("b"):
      return 'https://static.openfoodfacts.org/images/attributes/ecoscore-b.png';
      break;
    case ("a"):
      return 'https://static.openfoodfacts.org/images/attributes/ecoscore-a.png';
      break;
    default:
      return 'https://www.zupimages.net/up/22/25/gk9j.png';
  }
}

String userScoreComment(String? userScore) {
  if (userScore == 'A+') return 'You are the best !';
  if (userScore == 'A') return 'You are amazing !';
  if (userScore == 'B') return 'You are an example !';
  if (userScore == 'C') return 'You can do better !';
  if (userScore == 'D') return 'Faites attention au gaspillage... !';
  if (userScore == 'E') return 'Vous gaspillez trop !';
  if (userScore == 'F') return 'Vous gaspillez beaucoup trop !';
  return '';
}

String? enlevercrochet(String text) {
  // add the word hello to text
  return text.replaceAll('[', '').replaceAll(']', '');
}

bool? advert(int? number) {
  if (number != null && number > 5) {
    return true;
  } else {
    return false;
  }
}

String? plus(String text) {
  // replace space by +
  if (text == null) return null;
  return text.replaceAll(' ', '+');
}
