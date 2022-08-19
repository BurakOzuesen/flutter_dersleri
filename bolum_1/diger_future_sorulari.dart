void main(List<String> args) async{
  print("Program başladı");
  Future.delayed(Duration(seconds: 0), () {
    print("0 saniyelik işlem");
  });
  print("Program bitti");

  Future<int> toplam = Future(() {
    int toplam = 0;
    for(int i=0; i<10000000000; i++){
      toplam = toplam + i;
    }
    return toplam;
  });

  toplam.then((int toplam) => print(toplam));
}