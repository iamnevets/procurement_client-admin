class ProcurerEntity {
  String id = '';
  String name = '';
  String logo = '';
  String location = '';
  String emailAddress = '';
  String address = '';
  String about = '';
  List<String> contact = [];

  ProcurerEntity({
    required this.id,
    required this.name,
    required this.emailAddress,
    required this.logo,
    required this.location,
    required this.address,
    required this.about,
    required this.contact,
  });
}

final List<ProcurerEntity> listAllProcurerEntitys = [
  ProcurerEntity(
      id: '1askh1',
      name: 'Agra Industrie',
      logo: 'assets/img/logo_1.jpg',
      location: 'Accra',
      address: '21st Baker Street',
      emailAddress: 'info@agra.com',
      about: 'We are some kind of a company',
      contact: ['029183891, 2190381265']),
  ProcurerEntity(
      id: '291230h',
      name: 'Scientifists',
      emailAddress: 'ingo@scientifists,com',
      logo: 'assets/img/logo_2.jpg',
      location: 'Accra',
      address: 'RiverView, Numvoi',
      about: 'This is some descripition of the comany.',
      contact: ['209138751, 120957j1'])
];
