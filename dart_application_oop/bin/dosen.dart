import 'pegawai.dart';

//Dosen LB dapet Gaji Dasar + SKS
//Dosen Tamu dapet SKS + Tunjangan Kehadiran
//Dosen Tetap dapet Gaji Dasar + SKS + Tunjangan Kehadiran

class DosenLB extends Pegawai {
  int? penghasilan_total = 0;
  String? mata_kuliah_diajar = '';
  int? sks_diajar = 0;

  DosenLB(String? nama, String? tanggal_lahir, String? nip, int? gaji_dasar,
      int? penghasilan_total, String? mata_kuliah_diajar, int? sks_diajar)
      : super(nama, tanggal_lahir, nip, gaji_dasar) {
    this.penghasilan_total = penghasilan_total;
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

  get get_sks_diajar {
    return sks_diajar;
  }

  get get_penghasilan_total {
    return gaji_dasar! + (sks_diajar! * 40000);
  }
}

class DosenTamu extends DosenLB {
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

  void set(int dtTunjanganKehadiran) {
    tunjangan_kehadiran = dtTunjanganKehadiran;
  }

  get get_sks_diajar {
    return sks_diajar;
  }

  get get_penghasilan_total {
    return (sks_diajar! * 40000) + tunjangan_kehadiran!;
  }
}

class DosenTetap extends DosenTamu {
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
            mata_kuliah_diajar, sks_diajar, tunjangan_kehadiran) {
            }

  void set(int dtTunjanganKehadiran) {
    tunjangan_kehadiran = dtTunjanganKehadiran;
  }

  get get_sks_diajar {
    return sks_diajar;
  }

  get get_penghasilan_total {
    return gaji_dasar! + (sks_diajar! * 40000) + tunjangan_kehadiran!;
  }
}
