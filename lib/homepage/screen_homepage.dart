import 'package:flutter/material.dart';

class AmazonHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _AppBar(),
          _PrimBar(),
          Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          Results()
        ],
      ),
    );
  }
}

class _AppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color(0xff88d7de),
          Color(0xffaa8e4cc),
        ], begin: Alignment.centerLeft),
      ),
      height: 160,
      child: Column(
        children: [
          SafeArea(
            child: SizedBox(
              height: 100.0,
              child: Row(
                children: [
                  SizedBox(width: 8.0),
                  Icon(Icons.arrow_back),
                  const SizedBox(width: 8.0),
                  Expanded(child: _SerchBar()),
                  const SizedBox(width: 16),
                ],
              ),
            ),
          ),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.5),
            ),
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: Row(
              children: const [
                Icon(Icons.place_outlined),
                SizedBox(width: 8.0),
                Text('Delivery to Sudheesh Ps -Kottayam 686514'),
              ],
            ),
          ))
        ],
      ),
    );
  }
}

class _SerchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          border: Border.all(color: Colors.grey),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.4),
                blurRadius: 4.0,
                spreadRadius: 2),
          ]),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          children: [
            Icon(Icons.search),
            SizedBox(width: 8),
            Expanded(
              child: TextField(
                controller: TextEditingController(),
                decoration: const InputDecoration(border: InputBorder.none),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Icon(Icons.camera_alt_outlined),
            SizedBox(width: 8),
            Icon(Icons.mic_rounded),
          ],
        ),
      ),
    );
  }
}

class _PrimBar extends StatefulWidget {
  @override
  State<_PrimBar> createState() => _primBarState();
}

class _primBarState extends State<_PrimBar> {
  bool _priEnable = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          //Image.asset(prim_image,height:25.0,width: 20,),
          Text(
            "Amazon Prime",
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
              fontSize: 10,
            ),
          ),
          const SizedBox(width: 8.0),
          Switch(
              value: _priEnable,
              onChanged: (value) {
                setState(() {
                  _priEnable = !_priEnable;
                });
              }),
          const Expanded(
            child: SizedBox(),
          ),

          DropdownButton<String>(
            items: [],
            onChanged: (value) {},
            hint: const Text(
              'Filters',
              style: TextStyle(color: Colors.lightGreen),
            ),
            style: TextStyle(color: Color(0xff599910f)),
          )
        ],
      ),
    );
  }
}

class Results extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String image1 = 'assets/image/smart.jpg';
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'RESULTS',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    item(
                        image: 'assets/images/smart.jpg',
                        title: 'smart andriod watch',
                        price: '\$30'),
                    item(
                        image: 'assets/images/smart.jpg',
                        title: 'smart andriod watch',
                        price: '\$56'),
                    item(
                        image: 'assets/images/smart.jpg',
                        title: 'smart andriod watch',
                        price: '\$29'),
                    item(
                        image: 'assets/images/smart.jpg',
                        title: 'smart andriod watch',
                        price: '\$40'),
                    item(
                        image: 'assets/images/smart.jpg',
                        title: 'smart andriod watch',
                        price: '\$40'),
                    item(
                        image: 'assets/images/smart.jpg',
                        title: 'smart andriod watch',
                        price: '\$40'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class item extends StatelessWidget {
  final String image;
  final String title;
  String price;

  item({
    required this.image,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      color: Colors.white,
      width: double.infinity,
      child: Row(
        children: [
          Flexible(
            flex: 3,
            child: DecoratedBox(
              decoration: BoxDecoration(),
              child: Center(
                child: Image.asset(
                  image,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 4,
            child: Container(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 20.0,
                    child: Row(
                      children:const [
                        Icon(
                          Icons.star_rate,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star_rate,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star_rate,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star_rate,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star_half,
                          color: Colors.yellow,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    height: 30.0,
                    width: 150,
                    color: Color(0xffb22e1e),
                    child: const Center(
                      child: Text(
                        'Limited time deal',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    price,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'get it by Friday Feb 18',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
