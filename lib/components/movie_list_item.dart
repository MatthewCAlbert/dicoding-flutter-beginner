import 'package:flutter/material.dart';
import 'package:mocation/data/locations.dart';
import 'package:mocation/screens/movie_detail.dart';

class MovieListItem extends StatelessWidget {
  final MovieData data;
  const MovieListItem({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

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
                color: Color.fromARGB(30, 0, 0, 0),
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
                    width: screenSize.width,
                    height: 250,
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(data.title, 
                            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.normal, color: Colors.white), 
                          ),
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
