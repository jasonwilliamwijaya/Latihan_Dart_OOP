import 'person.dart';

class Pegawai extends Person {
  String? nip = '';
  int? gaji_dasar = 0;

  Pegawai(String? nama, String? tanggal_lahir, String? nip, int? gaji_dasar)
      : super(nama, tanggal_lahir) {
    this.nip = nip;
    this.gaji_dasar = gaji_dasar;
  }
}
