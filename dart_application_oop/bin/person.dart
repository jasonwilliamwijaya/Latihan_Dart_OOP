class Person {
  String? nama = '';
  String? tanggal_lahir = '';
  Person(this.nama, this.tanggal_lahir);

  set set_nama(String dtNama) {
    nama = dtNama;
  }

  set set_tanggal_lahir(String dtTanggalLahir) {
    nama = dtTanggalLahir;
  }

  String get get_nama => this.nama!;
  String get get_tanggal_lahir => this.tanggal_lahir!;
}
