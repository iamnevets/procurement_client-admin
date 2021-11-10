import 'package:procurement/model/bidder.model.dart';
import 'package:procurement/model/entity.model.dart';

class Tender {
  String id = '';
  String name = '';
  String description = '';
  List<Bidder> bidders = [];
  String dayCreated = '';
  String monthCreated = '';
  String yearCreated = '';
  ProcurerEntity tenderEntity;

  Tender({
    required this.id,
    required this.name,
    required this.description,
    required this.bidders,
    required this.dayCreated,
    required this.monthCreated,
    required this.yearCreated,
    required this.tenderEntity,
  });
}

final List<Tender> listAllTenders = [
  Tender(
      id: '01951',
      name: 'Purchase of Land',
      description: 'This is a short description of the tender for the purchase of land',
      dayCreated: '02',
      monthCreated: 'July',
      yearCreated: '2021',
      tenderEntity: ProcurerEntity(
      id: '1askh1',
      name: 'Agra Industrie',
      logo: 'assets/img/logo_1.jpg',
      location: 'Accra',
      address: '21st Baker Street',
      emailAddress: 'info@agra.com',
      about: 'We are some kind of a company',
      contact: ['029183891, 2190381265']),
      bidders: [
        Bidder(
          id: '1',
          name: 'Henson Lans',
          emailAddress: 'info@hensonlands.com',
          logo: 'assets/img/logo_1.jpg',
          location: 'Accra',
          address: 'Accra',
          about: 'We are Henson Lands. We deal in land and real estate',
          contact: ['0218529119'],
        ),
      ]),
  Tender(
      id: '021oif2',
      name: 'Purchase of Furniture',
      description: 'This is a short description of the tender for the purchase of furniture',
      dayCreated: '18',
      monthCreated: 'September',
      yearCreated: '2021',
      tenderEntity: ProcurerEntity(
      id: '9012had',
      name: 'Bomi Brands',
      logo: 'assets/img/logo_2.jpg',
      location: 'Tema',
      address: '17th Cesan Avenu',
      emailAddress: 'info@bomi.com',
      about: 'We are a great company dealing in furniture for businesses.',
      contact: ['029183891, 2190381265']),
      bidders: [
        Bidder(
          id: '1',
          name: 'Henson Lans',
          emailAddress: 'info@hensonlands.com',
          logo: 'assets/img/logo_1.jpg',
          location: 'Accra',
          address: 'Accra',
          about: 'We are Henson Lands. We deal in land and real estate',
          contact: ['0218529119'],
        ),
      ]),
];
