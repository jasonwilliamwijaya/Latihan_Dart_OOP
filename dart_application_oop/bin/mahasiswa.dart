import 'person.dart';

class Mahasiswa extends Person {
  String? nrp;
  bool? cuti = false;
  int? sks = 0;
  double? IPS = 0;
  double? IPK = 0;

  Mahasiswa(String? nama, String? tanggal_lahir, String? nrp, bool? cuti,
      int? sks, double? IPS, double? IPK)
      : super(nama, tanggal_lahir) {
    this.nrp = nrp;
    this.cuti = cuti;
    this.sks = sks;
    this.IPS = IPS;
    this.IPK = IPK;
  }
}
