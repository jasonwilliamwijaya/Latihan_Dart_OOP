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

  stdout
      .write("Masukkan Tunjangan Kehadiran Seluruh Pegawai ( Dosen,Staff ) : ");
  String? input_tunjangankehadiran = stdin.readLineSync();
  int? tunjangankehadiran = int.parse(input_tunjangankehadiran!);

  //parameter mahasiswa :
  //Mahasiswa(String? nama, String? tanggal_lahir, String? nrp, bool? cuti,
  //int? sks, int? semester, double? IPK)
  Mahasiswa mhs1 = Mahasiswa('Jason', '09-09-2001', 'C14190030 ', false, 20, 3);
  print(
      'Mahasiswa = ${mhs1.get_nama}, ${mhs1.get_tanggal_lahir}, ${mhs1.get_nrp}, ${mhs1.get_status_cuti}, ${mhs1.get_sks}, ${mhs1.get_semester}, ${mhs1.get_ipk}');

  //parameter staff :
  //Staff(String? nama, String? tanggal_lahir, String? nip, int? gaji_dasar,
  //int? ambil_cuti, int? jumlah_kehadiran)

  Staff st1 = Staff(
      'Som', '07-12-1995', 'A123456', gaji_dasar, 13, 30, tunjangankehadiran);
  print(
      'Staff = ${st1.get_nama}, ${st1.get_tanggal_lahir}, ${st1.get_nip}, ${st1.get_total_gaji}, ${st1.get_jatah_cuti}');
  st1.absensi();
}
