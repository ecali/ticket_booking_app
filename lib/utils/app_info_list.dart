List<Map<String, dynamic>> hotelList = [
  {
    'image': 'one.png',
    'place': 'Open Space',
    'destination': 'London',
    'price': 25
  },
  {
    'image': 'two.png',
    'place': 'Global Will',
    'destination': 'London',
    'price': 40
  },
  {
    'image': 'three.png',
    'place': 'Tallest Building',
    'destination': 'Dubai',
    'price': 68
  },
];

List<Map<String, dynamic>> ticketList = [
  {
    'from': {
      'code':"NYC",
      'name':"New-York"
    },
    'to': {
      'code':"LDN",
      'name':"London"
    },
    'flying_time': '8H 30M',
    'date': "1 MAY",
    'departure_time':"08:00 AM",
    "number":23,
    "ticket_number": "55078 65355547",
    "booking_code": "B2SG28",
    "price": "245.99"

  },
  {
    'from': {
      'code':"DK",
      'name':"Dhaka"
    },
    'to': {
      'code':"SH",
      'name':"Shanghai"
    },
    'flying_time': '4H 20M',
    'date': "10 MAY",
    'departure_time':"09:00 AM",
    "number":45,
    "ticket_number": "24558 64596213",
    "booking_code": "B1XT58",
    "price": "199.98"
  },
];

Map<String, dynamic> user = {
    'name': 'Elvio',
    'surname': 'Cali',
    'passport': '5221 364869',
    'payment_method': 'visa',
    'cart_number': '2642',
    "city": "Milan",
    "premium": true,
    "total_miles": 192803,
    'last_miles' : [
      {'miles': '23 042', 'from': 'Airline CO'},
      {'miles': '24', 'from': 'McDonald\'s'},
      {'miles': '52 340', 'from': 'Exuma'},
    ],
    'reward': {
      'active': true,
      'flight': '50'
    }
  };