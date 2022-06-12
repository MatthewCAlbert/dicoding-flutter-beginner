class LocationData {
  String name;
  String location;
  double long;
  double lat;
  String imageDir;
  String about;

  LocationData(this.name, this.location, this.lat, this.long, this.imageDir, this.about);
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
      'assets/images/hobbit/poster.jpg',
      [
        LocationData(
          'Hobbiton Village',
          'New Zealand',
          -37.8577046,175.678568, 
          'assets/images/hobbit/hobbit-town.jpeg',
          'The Hobbiton Movie Set was a significant location used for The Lord of the Rings film trilogy and The Hobbit film trilogy. It is situated on a family run farm about 8 kilometres (5.0 mi) west of Hinuera and 10 kilometres (6.2 mi) southwest of Matamata, in Waikato, New Zealand, and is now a Tolkien tourism destination, offering a guided tour of the set.'
        ),
        LocationData(
          'Piopio',
          'Waikato, New Zealand',
          -38.4698083,174.9198217, 
          'assets/images/hobbit/piopio.jpeg',
          'The looming cliffs, unusual limestone rock formations and prehistoric forest at Mangaotaki Rocks in Piopio look as if they have been created especially to form the backdrop for Middle‑earth™.\n\nThis area provided the location for Trollshaws Forest and Staddle Farm where a number of scenes from The Hobbit: An Unexpected Journey were shot; including The Company arriving at a destroyed farmhouse, the exit from the Troll Hoard Cave, Gandalf bestowing Sting upon Bilbo, Radagast\'s arrival and the Gundabad Wargs and Orcs attack.'
        ),
        LocationData(
          'Tūroa - Tongariro Alpine Crossing',
          'Manawatū-Whanganui, Manawatū-Whanganui',
          -38.4698083,174.9198217, 
          'assets/images/hobbit/turoa.png',
          'The rocky slopes and grassy tussock of Tūroa in Ruapehu was the setting for Hidden Bay, the entrance to the Lonely Mountain in The Hobbit: The Desolation of Smaug. Turoa is a popular ski field on Mt Ruapehu in the Tongariro National Park. The area is also known for its breathtaking cycling and hiking trails, including The Tongariro Crossing which is considered one of the best one day walks in the world.'
        ),
      ]
    ),
    MovieData(
      'Doctor Strange in the Multiverse of Madness',
      'assets/images/drstrange/poster.jpeg',
      [
        LocationData(
          'Freemasons Hall',
          'London, UK',
          51.5155848,-0.1212859, 
          'assets/images/drstrange/freemasons-hall.jpeg',
          'Originally built as a peace memorial to honour the thousands of Freemasons who fought and died during the First World War, Freemasons’ Hall is the headquarters of the United Grand Lodge of England and comprises 22 Lodge rooms, board and committee rooms and administrative offices.'
        ),
        LocationData(
          'Burrow Hill Cider Farm',
          'Martock, UK',
          50.9761647,-2.8372323, 
          'assets/images/drstrange/burrow.jpeg',
          'Wanda and Doctor Strange are seen walking through the Orchard towards the beginning of the film. Burrow Hill Cider Farm is a cider farm in Somerset, England at the base of Burrow Hill overlooking the Somerset Levels. It has views of most of South Somerset on clear days. The cider is made in traditional vats and uses age old traditional methods of production. Every October is "Apple Day" when the apples are harvested from locally owned orchards.'
        ),
        LocationData(
          'The British Museum',
          'London, UK',
          51.5194133,-0.1291453, 
          'assets/images/drstrange/british-museum.jpeg',
          'Various scenes were filmed here to feature the Illuminati headquarters on Earth 838, with CGI used throughout. The British Museum is a public museum dedicated to human history, art and culture located in the Bloomsbury area of London. Its permanent collection of eight million works is among the largest and most comprehensive in existence. It documents the story of human culture from its beginnings to the present.'
        ),
      ]
    ),
    MovieData(
      'The King\'s Man',
      'assets/images/kingsman/poster.jpg',
      [
        LocationData(
          'Sandhurst Military Academy',
          'Camberley, UK',
          51.3392583,-0.7497254, 
          'assets/images/kingsman/sma.jpeg',
          'Conrad arrives for military training after being granted permission by Orlando. The Royal Military Academy Sandhurst (RMAS or RMA Sandhurst), commonly known simply as Sandhurst, is one of several military academies of the United Kingdom and is the British Army\'s initial officer training centre. It is located in the town of Sandhurst, Berkshire, though its ceremonial entrance is in Camberley, southwest of London. The academy\'s stated aim is to be "the national centre of excellence for leadership". All British Army officers, including late-entry officers who were previously Warrant Officers, as well as other men and women from overseas, are trained at the academy. Sandhurst is the British Army equivalent of the Britannia Royal Naval College and the Royal Air Force College Cranwell.'
        ),
        LocationData(
          'Royal Palace of Turin',
          'Torino, Italia',
          45.0728337,7.684143, 
          'assets/images/kingsman/turin.jpeg',
          'Tzar Nicholas sits with his family for dinner with Rasputin. Hall of the Swiss Guards was used. The Royal Palace of Turin (Italian: Palazzo Reale di Torino) is a historic palace of the House of Savoy in the city of Turin in Northern Italy. It was originally built in the 16th century and was later modernized by Christine Marie of France (1606–1663) in the 17th century, with designs by the Baroque architect Filippo Juvarra. The palace also includes the Palazzo Chiablese and the Chapel of the Holy Shroud, the latter of which was built to house the famous Shroud of Turin.'
        ),
        LocationData(
          'Huntsman',
          'London, UK',
          51.5108634,-0.1403477, 
          'assets/images/kingsman/huntsman.jpg',
          'Orlando takes Conrad to Kingsman Tailors for his first suit. H. Huntsman & Sons (known as Huntsman of Savile Row) is a high-end fashion house and tailor located at No. 11 Savile Row, London. It is known for its English bespoke menswear tailoring, cashmere ready-to-wear collections, and leather accessories.'
        ),
      ]
    ),
    MovieData(
      'Star Wars',
      'assets/images/starwars/poster.jpeg',
      [
        LocationData(
          'Grindelwald',
          'Switzerland',
          46.619675,8.0407749, 
          'assets/images/starwars/grindelwald.jpeg',
          'Grindelwald is a village and municipality in the Interlaken-Oberhasli administrative district in the canton of Berne. In addition to the village of Grindelwald, the municipality also includes the settlements of Alpiglen, Burglauenen, Grund, Itramen, Mühlebach, Schwendi, Tschingelberg and Wargistal.'
        ),
        LocationData(
          'Mount Etna',
          'Catania, Italia',
          37.7510045,14.9934349, 
          'assets/images/starwars/mt-etna.jpeg',
          'Mount Etna is an active stratovolcano on the east coast of Sicily, Italy, in the Metropolitan City of Catania, between the cities of Messina and Catania. It lies above the convergent plate margin between the African Plate and the Eurasian Plate. It is one of the tallest active volcanoes in Europe, and the tallest peak in Italy south of the Alps with a current height (July 2021) of 3,357 m (11,014 ft), though this varies with summit eruptions. Over a six-month period in 2021, Etna erupted so much volcanic material that its height increased by approximately 100 feet, and the southeastern crater is now the tallest part of the volcano.'
        ),
        LocationData(
          'Ksar Hadada',
          'Tunisia',
          33.1001336,10.314467, 
          'assets/images/starwars/ksarhadada.jpeg',
          'Sometimes known as Ksar Hedada, is a village in southeastern Tunisia. Star Wars: Episode I - The Phantom Menace was filmed here. Ksar Hadada is surrounded by a mountain range. The village is also home to a valley between 25 and 50 meters deep called Gattar. Several fossils have been found in and around the villa.'
        ),
      ]
    ),
  ];
}