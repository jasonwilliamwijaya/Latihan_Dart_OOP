import 'person.dart';

class Pegawai extends Person {
  String? nip = '';
  int? gaji_dasar = 0;

  Pegawai(String? nama, String? tanggal_lahir, String? nip, int? gaji_dasar)
      : super(nama, tanggal_lahir) {
    this.nip = nip;
    this.gaji_dasar = gaji_dasar;
  }

  set set_nip(String dtNIP) {
    nip = dtNIP;
  }

  set set_gaji_dasar(int dtGajiDasar) {
    gaji_dasar = dtGajiDasar;
  }

  get get_nip {
    return nip;
  }

  get get_gaji_dasar {
    return nip;
  }
}
