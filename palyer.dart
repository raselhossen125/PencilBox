import 'country.dart';
import 'format.dart';

class Player {
  String pName;
  int pIccRankOdiBating;
  Country? country;
  List<Format>? formatList;

  Player({
    required this.pName,
    required this.pIccRankOdiBating,
    this.country,
    this.formatList,
  });
}
