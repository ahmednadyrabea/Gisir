class User {
  final int id;
  final String name;
  final String imageUrl;
  final bool isOnline;

  User({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.isOnline,
  });
}

// YOU - current user
final User currentUser = User(
  id: 0,
  name: 'احمد نادى',
  imageUrl: 'assets/nick-fury.jpg',
  isOnline: true,
);

// USERS
final User ironMan = User(
  id: 1,
  name: 'محمد على',
  imageUrl: 'assets/ironman.jpeg',
  isOnline: true,
);
final User captainAmerica = User(
  id: 2,
  name: 'كمال جمال',
  imageUrl: 'assets/captain-america.jpg',
  isOnline: true,
);
final User hulk = User(
  id: 3,
  name: 'جمال',
  imageUrl: 'assets/hulk.jpg',
  isOnline: false,
);
final User scarletWitch = User(
  id: 4,
  name: ' على سعيد',
  imageUrl: 'assets/scarlet-witch.jpg',
  isOnline: false,
);
final User spiderMan = User(
  id: 5,
  name: ' يوسف',
  imageUrl: 'assets/spiderman.jpg',
  isOnline: true,
);
final User blackWindow = User(
  id: 6,
  name: 'اسامة ',
  imageUrl: 'assets/black-widow.jpg',
  isOnline: false,
);
final User thor = User(
  id: 7,
  name: 'محمد',
  imageUrl: 'assets/thor.png',
  isOnline: false,
);
final User captainMarvel = User(
  id: 8,
  name: ' محمود',
  imageUrl: 'assets/captain-marvel.jpg',
  isOnline: false,
);