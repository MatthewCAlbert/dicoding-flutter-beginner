class LocationData {
  String name;
  String location;
  String mapLink;
  String imageDir;
  String about;

  LocationData(this.name, this.location, this.mapLink, this.imageDir, this.about);
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
          'https',
          'assets/images/hobbit/poster.jpeg',
          'Lorem ipsum'
        )
      ]
    ),
  ];
}