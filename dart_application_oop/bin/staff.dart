import 'pegawai.dart';

class Staff extends Pegawai {
  int? jatah_cuti = 12;
  int? akumulasi_tunjangan_kehadiran = 0;
  int? jumlah_kehadiran = 0;

  Staff(
      String? nama,
      String? tanggal_lahir,
      String? nip,
      int? gaji_dasar,
      int? jatah_cuti,
      int? akumulasi_tunjangan_kehadiran,
      int? jumlah_kehadiran)
      : super(nama, tanggal_lahir, nip, gaji_dasar) {
    this.jatah_cuti = jatah_cuti;
    this.akumulasi_tunjangan_kehadiran = akumulasi_tunjangan_kehadiran;
    this.jumlah_kehadiran = jumlah_kehadiran;
  }
}
