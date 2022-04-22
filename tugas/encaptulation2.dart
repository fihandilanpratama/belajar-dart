import "dart:io";

class Mahasiswa {
  var nama, npm, kelas, semester;
  Mahasiswa(var nama, var npm, var kelas, var semester) {
    this.nama = nama;
    this.npm = npm;
    this.kelas = kelas;
    this.semester = semester;
  }
}

//
//
class Keyin_matakuliah extends Mahasiswa {
  var mataKuliah = ['dasar pemrograman', 'pemrograman web', 'metopen'];

  Keyin_matakuliah(var nama, var npm, var kelas, var semester)
      : super(nama, npm, kelas, semester);

  void runApp() {
    cetakMataKuliah();
    String pilihanMataKuliah = pilihMataKuliah();
    switch (pilihanMataKuliah) {
      case 'dasar pemrograman':
        new DasarPemrograman('fihan', '07351911051', '6IF3', '6');
        print('mata kuliah yang dipilih : ${pilihanMataKuliah}');
        break;
      case 'metopen':
        new Metopen('fihan', '07351911051', '6IF3', '6');
        print('mata kuliah yang dipilih : ${pilihanMataKuliah}');
        break;
      case 'pemrograman web':
        PemrogramanWeb('fihan', '07351911051', '6IF3', '6');
        print('mata kuliah yang dipilih : ${pilihanMataKuliah}');
        break;
      default:
        print('inputan tidak valid');
    }
  }

  void cetakInfo(var dosenMataKuliah) {
    cetakDosenMataKuliah(dosenMataKuliah);
    var namaDosen = pilihNamaDosen();
    print('\n\n\n\n\n\n====================');
    print('nama anda : ${nama}');
    print('NPM : ${npm}');
    print('kelas : ${kelas}');
    print('semester : ${semester}');
    print('====================');
    print('nama dosen yang dipilih : ${namaDosen}');
  }

  String pilihNamaDosen() {
    print('====================');
    stdout.write('pilih nama dosen : ');
    var namaDosen = stdin.readLineSync();
    return namaDosen.toString();
  }

  String pilihMataKuliah() {
    print('====================');
    stdout.write('pilih mata kuliah : ');
    var namaMataKuliah = stdin.readLineSync();
    return namaMataKuliah.toString();
  }

  void cetakMataKuliah() {
    print('====================');
    print('Daftar mata kuliah :');
    for (var i = 0; i < mataKuliah.length; i++) {
      print('> : ${mataKuliah[i]}');
    }
  }

  void cetakDosenMataKuliah(x) {
    print('====================');
    print('Dosen mata kuliah :');
    for (var i = 0; i < x.length; i++) {
      print('> : ${x[i]}');
    }
  }
}

//
//
class DasarPemrograman extends Keyin_matakuliah {
  var dosenMataKuliah = [
    'Mohammad Jamil',
    'Khairil Kurniadi',
    'Muhammad Fadli'
  ];

  DasarPemrograman(var nama, var npm, var kelas, var semester)
      : super(nama, npm, kelas, semester) {
    cetakInfo(dosenMataKuliah);
  }
}

//
//
class PemrogramanWeb extends Keyin_matakuliah {
  var dosenMataKuliah = ['Salkin Lutfi', 'Muhammad Sabri'];

  PemrogramanWeb(var nama, var npm, var kelas, var semester)
      : super(nama, npm, kelas, semester) {
    cetakInfo(dosenMataKuliah);
  }
}

//
//
class Metopen extends Keyin_matakuliah {
  var dosenMataKuliah = ['Alfa Nugraha', 'Khairil Kurniadi'];

  Metopen(var nama, var npm, var kelas, var semester)
      : super(nama, npm, kelas, semester) {
    cetakInfo(dosenMataKuliah);
  }
}

//
//
main() {
  var test = new Keyin_matakuliah('', '', '', ''); // initialisasi awal
  test.runApp();
}
