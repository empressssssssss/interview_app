import 'package:flutter/material.dart';
import 'package:interview_app/Taxon_Title.dart';
import 'package:interview_app/category_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          body: const TabBarView(
            children: [
              CategoryPage(),
              TaxonTitlePage(),
            ],
          ),
          bottomNavigationBar: Container(
            color: Colors.white,
            child: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.home,
                    color: Colors.yellow,
                  ),
                ),
                Tab(
                  icon: Icon(Icons.shop, color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
