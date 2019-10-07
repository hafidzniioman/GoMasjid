class Warga{
  int id;
  String nama;

  Warga(this.id, this.nama);

  static List<Warga> getWarga(){
    return <Warga>[
      Warga(1, 'Kota Wisata'),
      Warga(2, 'Legenda Wisata'),
      Warga(3, 'Cileungsi'),
      Warga(4, 'Cibubur'),
      Warga(5, 'Kampung Sebelah'),
    ];
  }
}