import 'package:flutter/material.dart';

class StoreDetails extends StatelessWidget {
  final String storeName;
  final String storeAddress;
  final String storePhone;

  const StoreDetails({super.key, required this.storeName,required this.storeAddress,required this.storePhone});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Store Details'),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              storeName,
              style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10.0),
            Text(
              'Address: $storeAddress',
              style:const  TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 10.0),
            Text(
              'Phone: $storePhone',
              style:const TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
