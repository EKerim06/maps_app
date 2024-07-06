import 'package:flutter/material.dart';
import 'package:flutter_maps_note/models/local_storage_model/save_location.dart';
import 'package:flutter_maps_note/utility/widget/base_widget/base_widget.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({
    required this.selectedLocaton,
    super.key,
  });

  final SaveLocation selectedLocaton;

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        children: const [
          Column(
            children: [
              Text('Lokasyon Adi'),
              Text('Lokasyon Koordinatlari'),
              Text('Lokasyon Resmi'),
            ],
          ),
        ],
      ),
    );
  }
}
