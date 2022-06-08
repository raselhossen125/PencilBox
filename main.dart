import 'country.dart';
import 'format.dart';
import 'palyer.dart';

void main() {
  Player p1 = Player(pName: "Tamim Iqball", pIccRankOdiBating: 18);
  Player p2 = Player(pName: "Sakib All Hasan", pIccRankOdiBating: 30);
  Player p3 = Player(pName: "Mahmudullah All Riad", pIccRankOdiBating: 24);

  p1.country = Country(cName: "Bangladesh", cIccRank: 7);
  p2.country = Country(cName: "Bangladesh", cIccRank: 7);
  p3.country = Country(cName: "Bangladesh", cIccRank: 7);

  p1.formatList = [
    Format(fName: "Test", fMatchNo: 92),
    Format(fName: "Odi", fMatchNo: 231),
    Format(fName: "T20", fMatchNo: 143),
  ];

  p2.formatList = [
    Format(fName: "Test", fMatchNo: 87),
    Format(fName: "Odi", fMatchNo: 224),
    Format(fName: "T20", fMatchNo: 150),
  ];

  p3.formatList = [
    Format(fName: "Odi", fMatchNo: 170),
    Format(fName: "T20", fMatchNo: 122),
  ];

  List list = [p1, p2, p3];
  int serial = 1;
  for (var playerList in list) {
    List<String> formatListName = List.generate(playerList.formatList.length,
        (index) => playerList.formatList[index].fName);

    final nameString = formatListName.join(', ');
    print(
        '$serial. ${playerList.pName} form ${playerList.country?.cName} Contribute by: ${nameString} ');
    serial++;
  }
}
