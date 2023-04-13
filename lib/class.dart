abstract class Society {
  void makan();
}

class Manusia extends Society {
  //deklarasi atribut/properti
  String nama = ''; //atribut nama bertipe string dan nilai awal null

  //pembuatan konstruktor, nama konstruktor adalah nama class
  Manusia(nm) {
    //nm a/ sebuah parameter yg dipergunakan untuk menampung data
    this.nama = nm; //atribut nama memiliki data dari parameter nm
  }

  //deklarasi method/fungsi/behavior bernama makan
  void makan() {
    print('$nama makan nasi'); //tambahkan var nama pada string makan
  }
}

//awal inheritance
class ManusiaMilenial extends Manusia {
  String email = '';
  String _password = '';

  ManusiaMilenial(String email) : super(email);

  void info() {
    print('namaku: $nama, Email:$email');
  }
} //akhir intheritance

class programmer extends ManusiaMilenial {
  programmer(String email) : super(email);

  void info() {
    print('Email: $email pemiliknya adalah $nama');
  }
}

class Dosen extends ManusiaMilenial {
  Dosen(String nama) : super(nama);

  void info() {
    print('$nama, telah memiliki email= $email');
  }
}