import 'package:flutter/material.dart';

class MyFavourites extends StatefulWidget {
  const MyFavourites({Key? key}) : super(key: key);

  @override
  State<MyFavourites> createState() => _MyFavouritesState();
}

class _MyFavouritesState extends State<MyFavourites> {
  // Dummy list of favorite plants
  final List<String> favoritePlants = [
    'Avanish - Prakriti',
    'Prakriti'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Favorites', style: TextStyle(fontWeight: FontWeight.w500),),
        backgroundColor: Colors.green.shade300, // Customizing app bar color
        centerTitle: true,
        elevation: 0, // Removing app bar elevation
      ), // Customizing background color
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your Favorite Plants',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: favoritePlants.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.green.shade300,
                    elevation: 1, // Adding elevation to cards
                    margin: EdgeInsets.symmetric(vertical: 8),
                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: ListTile(
                        title: Text(
                          favoritePlants[index],
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        leading: Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
