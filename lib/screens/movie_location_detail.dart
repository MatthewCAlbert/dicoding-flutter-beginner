import 'package:flutter/material.dart';
import 'package:mocation/data/locations.dart';
import 'package:mocation/helper/color.dart';

class MovieLocationDetail extends StatelessWidget {
  final LocationData data;
  const MovieLocationDetail({Key? key, required this.data}) : super(key: key);
  static double maxThumbnailWidth = 1600.0;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
  
    return Scaffold(
      backgroundColor: ThemeColor.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(data.name, 
                          textAlign: TextAlign.left,
                          style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold,), 
                        ),
                        Text(data.location, 
                          textAlign: TextAlign.left,
                          style: const TextStyle(fontSize: 16,), 
                        ),
                      ],
                    )
                  ),
                  
                  const Padding(padding: EdgeInsets.all(10)),

                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0x54000000),
                                spreadRadius: 2,
                                blurRadius: 5,
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(data.imageDir,
                              width: screenSize.width > maxThumbnailWidth ? maxThumbnailWidth : screenSize.width,
                              height: (screenSize.width > maxThumbnailWidth ? maxThumbnailWidth : screenSize.width) * 9 / 16,
                              fit: BoxFit.cover),
                          ),
                        ),

                        // TODO: View in Map Button

                        const Padding(padding: EdgeInsets.all(7)),
                      
                        const Text('About', 
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,), 
                        ),
                        Text(data.about, 
                          textAlign: TextAlign.left,
                          style: const TextStyle(fontSize: 14,), 
                        ),

                        // TODO: Favorite Floating Button

                      ],
                    ),
                  )
                ],
              )
            )
          ],
        ),
        )
      )
    );
  }
}