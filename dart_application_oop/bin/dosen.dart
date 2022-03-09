import 'pegawai.dart';

class Dosen extends Pegawai {
  int? penghasilan_total = 0;
  String? mata_kuliah_diajar = '';
  int? sks_diajar = 0;

  Dosen(String? nama, String? tanggal_lahir, String? nip, int? gaji_dasar,
      int? penghasilan_total, String? mata_kuliah_diajar, int? sks_diajar)
      : super(nama, tanggal_lahir, nip, gaji_dasar) {
    this.penghasilan_total = penghasilan_total;
    this.mata_kuliah_diajar = mata_kuliah_diajar;
    this.sks_diajar = sks_diajar;
  }
}

class DosenLB extends Dosen {
  DosenLB(String? nama, String? tanggal_lahir, String? nip, int? gaji_dasar,
      int? penghasilan_total, String? mata_kuliah_diajar, int? sks_diajar)
      : super(nama, tanggal_lahir, nip, gaji_dasar, penghasilan_total,
            mata_kuliah_diajar, sks_diajar);
}

class DosenTamu extends Dosen {
  int? tunjangan_kehadiran = 0;

  DosenTamu(
      String? nama,
      String? tanggal_lahir,
      String? nip,
      int? gaji_dasar,
      int? penghasilan_total,
      String? mata_kuliah_diajar,
      int? sks_diajar,
      int? tunjangan_kehadiran)
      : super(nama, tanggal_lahir, nip, gaji_dasar, penghasilan_total,
            mata_kuliah_diajar, sks_diajar) {
    this.tunjangan_kehadiran = tunjangan_kehadiran;
  }
}

class DosenTetap extends Dosen {
  int? tunjangan_kehadiran = 0;

  DosenTetap(
      String? nama,
      String? tanggal_lahir,
      String? nip,
      int? gaji_dasar,
      int? penghasilan_total,
      String? mata_kuliah_diajar,
      int? sks_diajar,
      int? tunjangan_kehadiran)
      : super(nama, tanggal_lahir, nip, gaji_dasar, penghasilan_total,
            mata_kuliah_diajar, sks_diajar) {
              this.tunjangan_kehadiran = tunjangan_kehadiran;
            }
}
