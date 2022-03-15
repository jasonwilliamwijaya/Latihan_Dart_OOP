import 'person.dart';
import 'mahasiswa.dart';
import 'pegawai.dart';
import 'dosen.dart';
import 'staff.dart';
import 'dart:io';

void main() {
  stdout.write("Masukkan Gaji Dasar Seluruh Pegawai ( Dosen,Staff ) : ");
  String? input_gajidasar = stdin.readLineSync();
  int? gaji_dasar = int.parse(input_gajidasar!);

  int? tunjangankehadiran = 0;

  while (true) {
    stdout.write(
        "Masukkan Tunjangan Kehadiran Seluruh Pegawai ( Dosen,Staff ) : ");
    String? input_tunjangankehadiran = stdin.readLineSync();
    tunjangankehadiran = int.parse(input_tunjangankehadiran!);

    if (tunjangankehadiran >= 0) {
      break;
    } else {
      print("Tunjangan Kehadiran tidak boleh negatif");
    }
  }
  print("");

  //parameter mahasiswa :
  //Mahasiswa(String? nama, String? tanggal_lahir, String? nrp, bool? cuti,
  //int? sks, int? semester, double? IPK)
  Mahasiswa mhs1 = Mahasiswa('Jason', '09-09-2001', 'C14190030 ', false, 20, 3);
  print(
      'Mahasiswa = ${mhs1.get_nama}, ${mhs1.get_tanggal_lahir}, ${mhs1.get_nrp}, ${mhs1.get_status_cuti}, ${mhs1.get_sks}, ${mhs1.get_semester}, ${mhs1.get_ipk}');

  print("");

  //parameter Dosen LB :
  //DosenLB(String? nama, String? tanggal_lahir, String? nip, int? gaji_dasar,
  //String? mata_kuliah_diajar, int? sks_diajar)

  DosenLB dsnlb1 = DosenLB(
      'Mark', '07-12-1993', 'DLB141562', gaji_dasar, 'Bahasa Indonesia', 30);
  print(
      'Dosen LB = ${dsnlb1.get_nama}, TTL : ${dsnlb1.get_tanggal_lahir}, NIP : ${dsnlb1.get_nip}, Matkul diajar : ${dsnlb1.get_matkul_diajar}, SKS diampu : ${dsnlb1.get_sks_diajar}, Total Gaji : ${dsnlb1.get_penghasilan_total}}');
  dsnlb1.mengajar();
  dsnlb1.absensi();

  print("");

  //parameter Dosen Tamu :
  //DosenTamu(String? nama, String? tanggal_lahir, String? nip, int? gaji_dasar,
  //String? mata_kuliah_diajar, int? sks_diajar, int? tunjangan_kehadiran, int? jumlah_kehadiran)

  DosenTamu dsntm1 = DosenTamu('Tim', '07-12-1987', 'DTM315412', gaji_dasar,
      'Bahasa Inggris', 40, tunjangankehadiran, 20);
  print(
      'Dosen Tamu = ${dsntm1.get_nama}, TTL : ${dsntm1.get_tanggal_lahir}, NIP : ${dsntm1.get_nip}, Matkul diajar : ${dsntm1.get_matkul_diajar}, SKS diampu : ${dsntm1.get_sks_diajar}, Total Gaji : ${dsntm1.get_penghasilan_total}');
  dsnlb1.mengajar();
  dsnlb1.absensi();

  print("");

  //parameter Dosen Tamu :
  //DosenTamu(String? nama, String? tanggal_lahir, String? nip, int? gaji_dasar,
  //String? mata_kuliah_diajar, int? sks_diajar, int? tunjangan_kehadiran, int? jumlah_kehadiran)

  DosenTetap dsnttp1 = DosenTetap('Rika', '07-12-1983', 'DTP912354', gaji_dasar,
      'Pancasila', 50, tunjangankehadiran, 30);
  print(
      'Dosen Tetap = ${dsnttp1.get_nama}, TTL : ${dsnttp1.get_tanggal_lahir}, NIP : ${dsnttp1.get_nip}, Matkul diajar : ${dsnttp1.get_matkul_diajar}, SKS diampu : ${dsnttp1.get_sks_diajar}, Total Gaji : ${dsnttp1.get_penghasilan_total}}');
  dsnttp1.mengajar();
  dsnttp1.absensi();

  print("");

  //parameter staff :
  //Staff(String? nama, String? tanggal_lahir, String? nip, int? gaji_dasar,
  //int? ambil_cuti, int? jumlah_kehadiran, int? tunjangan_kehadiran)

  Staff st1 = Staff(
      'Som', '07-12-1995', 'A123456', gaji_dasar, 13, 30, tunjangankehadiran);
  print(
      'Staff = ${st1.get_nama}, TTL : ${st1.get_tanggal_lahir}, NIP : ${st1.get_nip}, Total Gaji : ${st1.get_total_gaji}, Jatah Cuti : ${st1.get_jatah_cuti}');
  st1.absensi();
}
