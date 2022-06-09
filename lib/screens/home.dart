import 'package:flutter/material.dart';
import 'package:mocation/components/grid_ns.dart';
import 'package:mocation/components/movie_list_item.dart';
import 'package:mocation/components/trending_item.dart';
import 'package:mocation/data/locations.dart';
import 'package:mocation/helper/color.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}


class _HomeState extends State<Home> {
  final TextEditingController _searchQuerycontroller = TextEditingController();

  @override
  void dispose() {
    _searchQuerycontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                      children: const [
                        Text('Mocation', 
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold,), 
                        ),
                        Text('Find real life movie set location for vacation', 
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 16,), 
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
                        const Text('Trending 🔥', 
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,), 
                        ),
                        
                        const Padding(padding: EdgeInsets.all(7)),
                        TrendingItem(
                          data: LocationRepos.all.first,
                        ),

                        const Padding(padding: EdgeInsets.all(12)),
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.fromLTRB(15, 12, 15, 12),
                          decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(31, 0, 0, 0),
                                spreadRadius: 2,
                                blurRadius: 4,
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.search,
                                color: ThemeColor.black,
                                size: 24.0,
                                semanticLabel: 'Search Symbol',
                              ),
                              const Padding(padding: EdgeInsets.all(5)),
                              Expanded(child: TextField(
                                controller: _searchQuerycontroller,
                                decoration: const InputDecoration.collapsed(
                                  hintText: 'Find movie name...'
                                ),
                              )),
                            ],
                          ),
                        ),
                        
                        const Padding(padding: EdgeInsets.all(12)),
                        const Text('Find movies below', 
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,), 
                        ),

                        const Padding(padding: EdgeInsets.all(10)),
                        LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
                          return GridNS(
                            columnCount: 2,
                            gap: 10,
                            padding: EdgeInsets.zero,
                            children: [
                              MovieListItem(
                                data: LocationRepos.all.first,
                              ),
                              MovieListItem(
                                data: LocationRepos.all.first,
                              ),
                              MovieListItem(
                                data: LocationRepos.all.first,
                              ),
                              MovieListItem(
                                data: LocationRepos.all.first,
                              ),
                            ],
                          );
                        })
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