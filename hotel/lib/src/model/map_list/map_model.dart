

class DataCategory {
  final String title;
  final String address;
  final String price;
  final String imageUrl;
  final String description;
  final String rating;
  final String lat;
  final String lng;
  DataCategory({
    this.title,
    this.imageUrl,
    this.description,
    this.rating,
    this.address,
    this.price,
    this.lat,
    this.lng,
  });
}
List<Map<String, dynamic>> getDataCategoryList = [
  {
    "title": 'Residence Hotel',
    "address": 'Phnom Penh',
    "price": '\$450',
    "imageUrl": 'asset/image/room1.png',
    "description": 'Situated in Phnom Penh, 2.1 km from Vattanac Capital,'
        ' One Park Hotel and Serviced Apartments features accommodation with a restaurant,'
        ' free private parking, an outdoor swimming pool.'
        'One Park Hotel and Serviced Apartments features accommodation with a restaurant,'
        'One Park Hotel and Serviced Apartments features accommodation with a restaurant,',
    "rating": '4.2 Rattings',
    "lat": '11.584858348660918',
    "lng": '104.89803326660031',
  },
  {
    "title": 'TK View Hotel',
    "address": 'Phnom Penh',
    "price": '\$400',
    "imageUrl": 'asset/image/room2.jpg',
    "description": 'Situated in Phnom Penh, 2.2 km from Vattanac Capital,'
        ' One Park Hotel and Serviced Apartments features accommodation with a restaurant,'
        ' free private parking, an outdoor swimming pool.'
        'One Park Hotel and Serviced Apartments features accommodation with a restaurant,'
        'One Park Hotel and Serviced Apartments features accommodation with a restaurant,',
    "rating": '4.3 Rattins',
    "lat": '11.593228265510907',
    "lng": '104.89972684601443',
  },
  {
    "title": 'Sokha Hotel',
    "address": 'Phnom Penh',
    "price": '\$500',
    "imageUrl": 'asset/image/room3.jpg',
    "description": 'Situated in Phnom Penh, 2.3 km from Vattanac Capital,'
        ' One Park Hotel and Serviced Apartments features accommodation with a restaurant,'
        ' free private parking, an outdoor swimming pool.'
        'One Park Hotel and Serviced Apartments features accommodation with a restaurant,'
        'One Park Hotel and Serviced Apartments features accommodation with a restaurant,',
    "rating": '4.4 Rattings',
    "lat": '11.584105089322573',
    "lng": '104.89321475576313',

  },
  {
    "title": 'Naga World',
    "address": 'Phnom Penh',
    "price": '\$600',
    "imageUrl": 'asset/image/room4.jpg',
    "description": 'Situated in Phnom Penh, 2.4 km from Vattanac Capital,'
        ' One Park Hotel and Serviced Apartments features accommodation with a restaurant,'
        ' free private parking, an outdoor swimming pool.'
        'One Park Hotel and Serviced Apartments features accommodation with a restaurant,'
        'One Park Hotel and Serviced Apartments features accommodation with a restaurant,',
    "rating": '4.5 Rattings',
    "lat": '11.586281468589371',
     "lng": '104.9026849174534',
  },
];
// final MapList = [
// DataCategory(
// title: 'Residence Hotel',
// address: 'Phnom Penh',
// price: '\$450',
// imageUrl: 'asset/image/room1.png',
// description: 'Situated in Phnom Penh, 2.1 km from Vattanac Capital,'
//     ' One Park Hotel and Serviced Apartments features accommodation with a restaurant,'
//     ' free private parking, an outdoor swimming pool.'
//     'One Park Hotel and Serviced Apartments features accommodation with a restaurant,'
//     'One Park Hotel and Serviced Apartments features accommodation with a restaurant,',
// rating: '4.2 Rattings',
//   lat: '11.584858348660918',
//   lng: '104.89803326660031',
// ),
// DataCategory(
// title: 'TK View Hotel',
// address: 'Phnom Penh',
// price: '\$400',
// imageUrl: 'asset/image/room2.jpg',
// description: 'Situated in Phnom Penh, 2.2 km from Vattanac Capital,'
// ' One Park Hotel and Serviced Apartments features accommodation with a restaurant,'
// ' free private parking, an outdoor swimming pool.'
// 'One Park Hotel and Serviced Apartments features accommodation with a restaurant,'
// 'One Park Hotel and Serviced Apartments features accommodation with a restaurant,',
// rating: '4.3 Rattins',
//   lat: '11.593228265510907',
//   lng: '104.89972684601443',
//
// ),
//   DataCategory(
//     title: 'Sokha Hotel',
//     address: 'Phnom Penh',
//     price: '\$500',
//     imageUrl: 'asset/image/room3.jpg',
//     description: 'Situated in Phnom Penh, 2.3 km from Vattanac Capital,'
//         ' One Park Hotel and Serviced Apartments features accommodation with a restaurant,'
//         ' free private parking, an outdoor swimming pool.'
//         'One Park Hotel and Serviced Apartments features accommodation with a restaurant,'
//         'One Park Hotel and Serviced Apartments features accommodation with a restaurant,',
//     rating: '4.4 Rattings',
//     lat: '11.584105089322573',
//     lng: '104.89321475576313',
//
//   ),
//   DataCategory(
//     title: 'Naga World',
//     address: 'Phnom Penh',
//     price: '\$600',
//     imageUrl: 'asset/image/room4.jpg',
//     description: 'Situated in Phnom Penh, 2.4 km from Vattanac Capital,'
//         ' One Park Hotel and Serviced Apartments features accommodation with a restaurant,'
//         ' free private parking, an outdoor swimming pool.'
//         'One Park Hotel and Serviced Apartments features accommodation with a restaurant,'
//         'One Park Hotel and Serviced Apartments features accommodation with a restaurant,',
//     rating: '4.5 Rattings',
//     lat: '11.586281468589371',
//     lng: '104.9026849174534',
//
//   ),
// ];