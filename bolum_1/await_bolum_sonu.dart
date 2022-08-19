void main(List<String> args) async {
  Map<String, dynamic> gelenUser = await idyeGoreUserGetir(6);
  List<String> kurslarListesi = await usernameGoreKurslariGetir(gelenUser['username']);
  String yorum = await kursunIlkYorumunuGetir(kurslarListesi.first);
  print(yorum);
}

Future<String> kursunIlkYorumunuGetir(String kursAdi){
    return Future<String>.delayed(Duration(seconds: 1), () {
      return "Kurs mükemmel";
    });
}

Future<List<String>> usernameGoreKurslariGetir(String username){
    print("$username kullanıcısının kursları getiriliyor");
    return Future<List<String>>.delayed(Duration(seconds: 4), (){
        return ['flutter', 'kotlin', 'javascripts'];
    });
}

Future<Map<String, dynamic>> idyeGoreUserGetir(int id){
    print("$id idli kullanıcı getiriliyor");
    return Future<Map<String, dynamic>>.delayed(Duration(seconds: 2), (){
        return {'username': 'emrealtunbilek', 'id':id};
    });
}