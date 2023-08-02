import 'package:flutter/material.dart';
import 'package:interview_app/Taxon_Title.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text(
            'Categories',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: BoxGrid(),
      ),
    );
  }
}

class BoxGrid extends StatefulWidget {
  @override
  _BoxGridState createState() => _BoxGridState();
}

class _BoxGridState extends State<BoxGrid> {
  int _selectedBoxIndex = -1;

  final List<Map<String, dynamic>> _boxesData = [
    {"text": "Mexican", "imagePath": "assets/images/Mexican.png"},
    {"text": "Asian", "imagePath": "assets/images/Asian.png"},
    {"text": "Fast_Food", "imagePath": "assets/images/Fast_Food.png"},
    {"text": "American", "imagePath": "assets/images/American.png"},
    {"text": "Vegeterian", "imagePath": "assets/images/Vegeterian.png"},
    {"text": "Italian", "imagePath": "assets/images/Italian.png"},
  ];

  void _selectBox(int index) {
    setState(() {
      _selectedBoxIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      itemCount: _boxesData.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const TaxonTitlePage(),
              ),
            );
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: index == _selectedBoxIndex
                    ? Colors.black
                    : Colors.transparent,
                width: 2.0,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  _boxesData[index]["imagePath"],
                  height: 80,
                  width: 80,
                ),
                const SizedBox(height: 8),
                Text(_boxesData[index]["text"]),
              ],
            ),
          ),
        );
      },
    );
  }
}
