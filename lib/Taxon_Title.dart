import 'package:flutter/material.dart';
import 'package:interview_app/order.dart';

class TaxonTitlePage extends StatelessWidget {
  const TaxonTitlePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 200, // Set the initial height of the app bar
              flexibleSpace: FlexibleSpaceBar(
                title: const Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 40),
                  child: Text(
                    'Taxon Title',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                background: Image.asset(
                  'assets/images/TaxonTitle.png',
                  fit: BoxFit.cover,
                ),
              ),
              pinned:
                  true, // Keeps the app bar pinned at the top when scrolling
              floating: true,
              snap: true,
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  buildColumnWidget(context),
                  buildColumnWidget(context),
                  buildColumnWidget(context),
                  buildColumnWidget(context),
                  buildColumnWidget(context),
                  buildColumnWidget(context),
                  buildColumnWidget(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildColumnWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 30, 20),
      child: Row(
        children: [
          Column(
            children: [
              const Text('Broiled Salmon Streak',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              const Row(
                children: [
                  Text('Protein', style: TextStyle(color: Colors.black)),
                  SizedBox(
                    width: 15,
                  ),
                  Text('Cabohydrate', style: TextStyle(color: Colors.black)),
                  SizedBox(
                    width: 15,
                  ),
                  Text('Fibre', style: TextStyle(color: Colors.black)),
                ],
              ),
              const Row(
                children: [
                  Text('26.2 gr', style: TextStyle(color: Colors.black)),
                  SizedBox(
                    width: 30,
                  ),
                  Text('26.2 gr', style: TextStyle(color: Colors.black)),
                  SizedBox(
                    width: 25,
                  ),
                  Text('26.2 gr', style: TextStyle(color: Colors.black)),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  SizedBox(
                    width: 86,
                    height: 30,
                    child: Material(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey.shade300,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return const OrderPage();
                            }),
                          );
                        },
                        child: const Padding(
                          padding: EdgeInsets.fromLTRB(16, 6, 0, 0),
                          child: Text(
                            '-    1    +',
                            style: TextStyle(color: Colors.black, fontSize: 17),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 40),
                  const Text(
                    '1.99',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(width: 70),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const OrderPage();
                }),
              );
            },
            child: Image.asset(
              'assets/images/Italian.png',
              scale: 3,
            ),
          )
        ],
      ),
    );
  }
}
