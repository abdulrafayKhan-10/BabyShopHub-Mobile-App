import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AddressScreen(),
    );
  }
}

class AddressScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Address'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Find an address...',
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.filter_list),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            GestureDetector(
              onTap: () {
                // Add new address functionality
              },
              child: DottedBorder(
                borderType: BorderType.RRect,
                radius: Radius.circular(8.0),
                color: Colors.grey,
                dashPattern: [6, 3],
                child: Container(
                  height: 60.0,
                  child: Center(
                    child: Text(
                      'Add new address',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            AddressCard(
              title: 'My home',
              address:
                  'Sophi Nowakowska, Zabineic 12/222, 31-215 Cracow, Poland',
              phone: '+79 123 456 789',
              isDefault: true,
              locationImage: 'assets/map_pin.svg', // replace with your asset path
            ),
            AddressCard(
              title: 'Office',
              address:
                  'Rio Nowakowska, Zabineic 12/222, 31-215 Cracow, Poland',
              phone: '+79 123 456 789',
              locationImage: 'assets/map_pin.svg', // replace with your asset path
            ),
            AddressCard(
              title: 'Grandmother’s home',
              address:
                  'Rio Nowakowska, Zabineic 12/222, 31-215 Cracow, Poland',
              phone: '+79 123 456 789',
              locationImage: 'assets/map_pin.svg', // replace with your asset path
            ),
          ],
        ),
      ),
    );
  }
}

class AddressCard extends StatelessWidget {
  final String title;
  final String address;
  final String phone;
  final bool isDefault;
  final String locationImage;

  AddressCard({
    required this.title,
    required this.address,
    required this.phone,
    this.isDefault = false,
    required this.locationImage,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            SvgPicture.asset(
              locationImage,
              height: 40.0,
              width: 40.0,
            ),
            SizedBox(width: 16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    address,
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    phone,
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            if (isDefault)
              Container(
                padding: EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: Text(
                  'Default',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.0,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
