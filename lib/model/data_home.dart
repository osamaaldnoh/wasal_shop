class DataHome {
  late int dId;
  late String dImage, dName;

  DataHome({required this.dId, required this.dImage, required this.dName});

  factory DataHome.jaon(Map<String, dynamic> data) {
    return DataHome(
      dId: data['dId'],
      dImage: data['dImage'],
      dName: data['cName'],
    );
  }
}
