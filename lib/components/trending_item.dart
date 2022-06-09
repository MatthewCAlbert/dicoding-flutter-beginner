
import 'package:flutter/material.dart';
import 'package:mocation/data/locations.dart';
import 'package:mocation/screens/movie_detail.dart';

class TrendingItem extends StatelessWidget {
  final MovieData data;

  const TrendingItem({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return MovieDetail(data: data);
        }));
      },
      child: Ink(
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                color: Color(0x54000000),
                spreadRadius:4,
                blurRadius: 5,
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              alignment: Alignment.center,
              child: Stack(
                clipBehavior: Clip.hardEdge,
                children: [
                  Image.asset(data.imageDir,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.width * 9 / 16,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      padding: const EdgeInsets.fromLTRB(20, 7, 20, 7),
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(colors: [Colors.purple, Colors.blue]),
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(data.title, 
                            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white), 
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            child: Row(
                            children: [
                              const Icon(
                                Icons.location_on,
                                color: Colors.white,
                                size: 24.0,
                                semanticLabel: 'Location Symbol',
                              ),
                              const Padding(padding: EdgeInsets.all(5),),
                              Text('${data.locations.length} location found',
                              style: const TextStyle(fontSize: 16, color: Colors.white), 
                              ),
                            ],
                          ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ),
      ) 
    );
  }
}
