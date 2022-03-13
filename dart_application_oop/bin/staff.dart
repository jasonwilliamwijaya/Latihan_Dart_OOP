import 'pegawai.dart';
import 'tugas.dart';
import 'dart:io';

//Staff dapet Gaji Dasar + Tunjangan Kehadiran

class Staff extends Pegawai with Absensi {
  int? jatah_cuti = 12;
  int? jumlah_kehadiran = 0;
  int? ambil_cuti = 0;
  int? tunjangan_kehadiran = 0;

  Staff(String? nama, String? tanggal_lahir, String? nip, int? gaji_dasar,
      int? ambil_cuti, int? jumlah_kehadiran, int? tunjangan_kehadiran)
      : super(nama, tanggal_lahir, nip, gaji_dasar) {
    this.jatah_cuti = jatah_cuti;
    this.ambil_cuti = ambil_cuti;
    this.jumlah_kehadiran = jumlah_kehadiran;
    this.tunjangan_kehadiran = tunjangan_kehadiran;
  }

  set set_jatah_cuti(int dtJatahCuti) {
    jatah_cuti = dtJatahCuti;
  }

  set set_tunjangan_kehadiran(int dtTunjanganKehadiran) {
    tunjangan_kehadiran = dtTunjanganKehadiran;
  }

  set set_jumlah_kehadiran(int dtJumlahKehadiran) {
    jumlah_kehadiran = dtJumlahKehadiran;
  }

  set set_ambil_cuti(int dtAmbilCuti) {
    ambil_cuti = dtAmbilCuti;
  }

  get get_jatah_cuti {
    if (ambil_cuti! <= jatah_cuti!) {
      return jatah_cuti! - ambil_cuti!;
    } else
      return ("Pengambilan cuti lebih besar dari jatah cuti yang ada");
  }

  get get_total_gaji {
    return gaji_dasar! + (jumlah_kehadiran! * tunjangan_kehadiran!);
  }

  get get_ambil_cuti {
    return ambil_cuti;
  }

  get get_jumlah_kehadiran {
    return jumlah_kehadiran;
  }
}
