import 'person.dart';
import 'dart:io';

class Mahasiswa extends Person {
  String? nrp;
  bool? cuti = false;
  int? sks = 0;
  double? IPS = 0;
  double? IPK = 0;
  int? semester = 1;
  double? akumulasi_ips = 0;

  Mahasiswa(String? nama, String? tanggal_lahir, String? nrp, bool? cuti,
      int? sks, int? semester)
      : super(nama, tanggal_lahir) {
    this.nrp = nrp;
    this.cuti = cuti;
    this.sks = sks;
    this.semester = semester;
  }

  void set_nrp(String dtNRP) {
    nrp = dtNRP;
  }

  void set_status_cuti(bool dtCuti) {
    cuti = dtCuti;
  }

  void set_sks(int dtSKS) {
    if (sks! < 2) {
      print("SKS minimal 2, maka didefaultkan 2");
      sks = 2;
    } else if (sks! > 24) {
      print("SKS maksimal 24, maka didefaultkan 24");
      sks = 24;
    }
  }

  void set_semester(int dtSemester) {
    if (dtSemester > 0) {
      semester = dtSemester;
    } else {
      print("Semester harus diatas 0, maka didefaultkan 1");
      semester = 1;
    }
  }

  get get_nrp {
    return nrp;
  }

  get get_status_cuti {
    if (cuti == true) {
      return ("Sedang cuti");
    } else {
      return ("Sedang Studi");
    }
  }

  get get_sks {
    return sks;
  }

  get get_semester {
    return semester;
  }

  get get_ipk {
    for (int i = 0; i < semester!; i++) {
      stdout.write("Masukkan IPS semester ke-${i + 1} untuk $nama: ");
      String? input_ips = stdin.readLineSync();
      IPS = double.parse(input_ips!);
      if (IPS! < 0) {
        print("Min IPS = 0, akan didefaultkan 0");
        IPS = 0;
      } else if (IPS! > 4) {
        print("Max IPS = 4, akan didefaultkan 4");
        IPS = 4;
      }
      akumulasi_ips = akumulasi_ips! + IPS!;
    }

    IPK = akumulasi_ips! / semester!;
    return IPK;
  }
}
