import 'package:procurement/model/bidder.model.dart';

class Bid {
  String id = '';
  String name = '';
  String description = '';
  List<Bidder> bidders = [];
  String dayCreated = '';
  String monthCreated = '';
  String yearCreated = '';

  Bid({
    required this.id,
    required this.name,
    required this.description,
    required this.bidders,
    required this.dayCreated,
    required this.monthCreated,
    required this.yearCreated,
  });
}

final List<Bid> listAllBids = [
  Bid(
    id: '01951', 
    name: 'Purchase of Land', 
    description: 'This is a short description of the tender for the purchase of land',
    dayCreated: '02',
    monthCreated: 'July',
    yearCreated: '2021',
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
  ])
];
