class LocationData {
  String name;
  String location;
  double long;
  double lat;
  String imageDir;
  String about;

  LocationData(this.name, this.location, this.long, this.lat, this.imageDir, this.about);
}

class MovieData {
  String title;
  String imageDir;
  List<LocationData> locations;

  MovieData(this.title, this.imageDir, this.locations);
}

class LocationRepos {
  static var all = [
    MovieData(
      'Hobbit',
      'assets/images/hobbit/poster.jpeg',
      [
        LocationData(
          'Hobbit Town',
          'Auckland, New Zealand',
          -122.0862462, 37.4220041, 
          'assets/images/hobbit/poster.jpeg',
          'Aute quis minim dolor irure. Ex dolor pariatur consequat excepteur. Id culpa cillum dolore ex laboris velit ex mollit labore culpa mollit aliquip. Aliqua occaecat sit qui pariatur nulla eiusmod velit minim ex. Deserunt qui consequat do quis adipisicing dolore incididunt elit esse laborum exercitation officia eu. Sit adipisicing magna dolor reprehenderit dolor excepteur elit nostrud tempor nisi excepteur eiusmod ullamco excepteur.'
        ),
        LocationData(
          'Hobbit Town',
          'Auckland, New Zealand',
          -122.0862462, 37.4220041, 
          'assets/images/hobbit/poster.jpeg',
          'Lorem ipsum'
        ),
        LocationData(
          'Hobbit Town',
          'Auckland, New Zealand',
          -122.0862462, 37.4220041, 
          'assets/images/hobbit/poster.jpeg',
          'Lorem ipsum'
        ),
        LocationData(
          'Hobbit Town',
          'Auckland, New Zealand',
          -122.0862462, 37.4220041, 
          'assets/images/hobbit/poster.jpeg',
          'Lorem ipsum'
        ),
        LocationData(
          'Hobbit Town',
          'Auckland, New Zealand',
          -122.0862462, 37.4220041, 
          'assets/images/hobbit/poster.jpeg',
          'Lorem ipsum'
        ),
      ]
    ),
  ];
}