void main() {
  Book b1 = Book(bName: "Book1", bPrice: 200);
  Book b2 = Book(bName: "Book2", bPrice: 300);
  Book b3 = Book(bName: "Book3", bPrice: 250);

  b1.pub = Publication(pName: "Publication1", pEmai: "pub1@gmail.com");
  b2.pub = Publication(pName: "Publication2", pEmai: "pub2@gmail.com");
  b3.pub = Publication(pName: "Publication3", pEmai: "pub3@gmail.com");

  b1.aList = [
    Author(aName: "Author1", aPhone: "01700000000"),
    Author(aName: "Author2", aPhone: "01855555555"),
    Author(aName: "Author3", aPhone: "01722222222"),
  ];

  b2.aList = [
    Author(aName: "Author4", aPhone: "017888888888"),
    Author(aName: "Author5", aPhone: "01399999999"),
  ];

  b3.aList = [
    Author(aName: "Author6", aPhone: "01433333333"),
    Author(aName: "Author7", aPhone: "01944444444"),
    Author(aName: "Author8", aPhone: "01733333333"),
    Author(aName: "Author9", aPhone: "01588888888"),
  ];

  List bookList = [b1, b2, b3];
  int serial = 1;
  for (var book in bookList) {
    final List<String> authorNameList =
    List.generate(book.aList.length, (index) => book.aList[index].aName);

    final nameString = authorNameList.join(', ');
    print('$serial. ${book.bName} by ${nameString} form ${book.pub?.pName}');
    serial++;
  }
}

class Book {
  String bName;
  double bPrice;
  Publication? pub;
  List<Author>? aList;

  Book({
    required this.bName,
    required this.bPrice,
    this.pub,
    this.aList,
  });
}

class Author {
  String aName;
  String aPhone;

  Author({
    required this.aName,
    required this.aPhone,
  });
}

class Publication {
  String pName;
  String pEmai;

  Publication({
    required this.pName,
    required this.pEmai,
  });
}
