import 'pegawai.dart';

class Dosen extends Pegawai{
  int? penghasilan_total = 0;
  String? mata_kuliah_diajar = '';
  int? sks_diajar = 0;
}

class DosenLB extends Dosen {

}

class DosenTamu extends Dosen{
  int? tunjangan_kehadiran = 0;
}

class DosenTetap extends Dosen{
  int? tunjangan_kehadiran = 0;
}

