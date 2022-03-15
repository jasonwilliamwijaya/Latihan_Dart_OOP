import 'pegawai.dart';
import 'tugas.dart';

//Dosen LB dapet SKS saja
//Dosen Tamu dapet SKS + Tunjangan Kehadiran
//Dosen Tetap dapet Gaji Dasar + SKS + Tunjangan Kehadiran

class DosenLB extends Pegawai with Absensi, Mengajar {
  String? mata_kuliah_diajar = '';
  int? sks_diajar = 0;

  DosenLB(String? nama, String? tanggal_lahir, String? nip, int? gaji_dasar,
      String? mata_kuliah_diajar, int? sks_diajar)
      : super(nama, tanggal_lahir, nip, gaji_dasar) {
    this.mata_kuliah_diajar = mata_kuliah_diajar;
    this.sks_diajar = sks_diajar;
  }

  void set_mata_kuliah_diajar(String dtMatkul) {
    mata_kuliah_diajar = dtMatkul;
  }

  void set_sks_diajar(int dtSKS) {
    if (dtSKS < 0) {
      sks_diajar = 0;
    } else {
      sks_diajar = dtSKS;
    }
  }

  void set_matkul_diajar(String dtMatkul) {
    mata_kuliah_diajar = dtMatkul;
  }

  get get_sks_diajar {
    return sks_diajar;
  }

  get get_penghasilan_total {
    return sks_diajar! * 40000;
  }

  get get_matkul_diajar {
    return mata_kuliah_diajar;
  }
}

class DosenTamu extends DosenLB {
  int? tunjangan_kehadiran = 0;
  int? jumlah_kehadiran = 0;

  DosenTamu(
      String? nama,
      String? tanggal_lahir,
      String? nip,
      int? gaji_dasar,
      String? mata_kuliah_diajar,
      int? sks_diajar,
      int? tunjangan_kehadiran,
      int? jumlah_kehadiran)
      : super(nama, tanggal_lahir, nip, gaji_dasar, mata_kuliah_diajar,
            sks_diajar) {
    this.tunjangan_kehadiran = tunjangan_kehadiran;
    this.jumlah_kehadiran = jumlah_kehadiran;
  }

  void set_tunjangan_kehadiran(int dtTunjanganKehadiran) {
    tunjangan_kehadiran = dtTunjanganKehadiran;
  }

  void set_jumlah_kehadiran(int dtJumlahKehadiran) {
    jumlah_kehadiran = dtJumlahKehadiran;
  }

  get get_sks_diajar {
    return sks_diajar;
  }

  get get_penghasilan_total {
    return (sks_diajar! * 40000) + (tunjangan_kehadiran! * jumlah_kehadiran!);
  }
}

class DosenTetap extends DosenTamu {
  DosenTetap(
      String? nama,
      String? tanggal_lahir,
      String? nip,
      int? gaji_dasar,
      String? mata_kuliah_diajar,
      int? sks_diajar,
      int? tunjangan_kehadiran,
      int? jumlah_kehadiran)
      : super(nama, tanggal_lahir, nip, gaji_dasar, mata_kuliah_diajar,
            sks_diajar, tunjangan_kehadiran, jumlah_kehadiran) {}

  void set_tunjangan_kehadiran(int dtTunjanganKehadiran) {
    tunjangan_kehadiran = dtTunjanganKehadiran;
  }

  void set_jumlah_kehadiran(int dtJumlahKehadiran) {
    jumlah_kehadiran = dtJumlahKehadiran;
  }

  get get_sks_diajar {
    return sks_diajar;
  }

  get get_penghasilan_total {
    return gaji_dasar! +
        (sks_diajar! * 40000) +
        (tunjangan_kehadiran! * jumlah_kehadiran!);
  }
}
