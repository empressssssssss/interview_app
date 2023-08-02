import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: AppBar(
          elevation: 0,
          title: const Padding(
            padding: EdgeInsets.fromLTRB(60, 33, 0, 0),
            child: Text(
              'Order',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
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
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 20),
                child: Image.asset(
                  'assets/images/Italian.png',
                  scale: 3,
                ),
              ),
              const Text(
                '1  x',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 30, 0),
                child: Column(
                  children: [
                    SizedBox(
                      width: 85,
                      child: Text(
                        'Medium Soprano Pizza',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Text(
                '14.50',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
              SizedBox(width: 10),
              const Icon(Icons.cancel_outlined)
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 20),
                child: Image.asset(
                  'assets/images/Fast_Food.png',
                  scale: 3,
                ),
              ),
              const Text(
                '1  x',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 30, 0),
                child: Column(
                  children: [
                    SizedBox(
                      width: 85,
                      child: Text(
                        'Small Chicken Pizza',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Text(
                '14.50',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
              const SizedBox(width: 10),
              const Icon(Icons.cancel_outlined)
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 20),
                child: Image.asset(
                  'assets/images/Vegeterian.png',
                  scale: 3,
                ),
              ),
              const Text(
                '1  x',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 30, 0),
                child: Column(
                  children: [
                    SizedBox(
                      width: 85,
                      child: Text(
                        'Pesto Tomato Pizza',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Text(
                '14.50',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
              const SizedBox(width: 10),
              const Icon(Icons.cancel_outlined)
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 20),
                child: Image.asset(
                  'assets/images/Delivery.png',
                  scale: 2,
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 70, 0),
                child: Column(
                  children: [
                    SizedBox(
                      width: 85,
                      child: Text(
                        'Delivery',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Text(
                '10.50',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              const SizedBox(width: 10),
            ],
          ),
          const SizedBox(height: 20),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(30, 0, 30, 20),
                child: Text(
                  'Total',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(180, 0, 0, 0),
                child: Text(
                  '43.95',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
              ),
              SizedBox(width: 10),
            ],
          ),
          const SizedBox(height: 30),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
              ),
              onPressed: () {},
              child: const Text(
                'CHECKOUT                                                                 25.93',
                style: TextStyle(color: Colors.black),
              ))
        ],
      ),
    );
  }
}
