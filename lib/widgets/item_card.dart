import 'package:flutter/material.dart';
import 'package:flutter_wisata_candi_2627_51/models/candi.dart';
import 'package:flutter_wisata_candi_2627_51/screens/detail_screen.dart';

class ItemCard extends StatelessWidget {
  //TODO: 1. Deklarasikan variabel yang dibutuhkan dan pasang pada konstruksinya
  final Candi candi;

  const ItemCard({super.key, required this.candi});

  @override
  Widget build(BuildContext context) {
    return Card(
      //TODO: 2. Tetapkan parameter shape,  margin dan  elevation dari  Cari
      shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(15)),
      margin: const EdgeInsets.all(4),
      elevation: 1,
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        onTap: () {
          Navigator.push(context,
          MaterialPageRoute(builder: (_) => DetailScreen(candi: candi)),
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //TODO: 3. Buat Image  sebagai anak dari Column
            Expanded(child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(15),
              child: Hero(
                tag: candi.name,
                child: Image.asset(
                  candi.imageAsset,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            )
            ),
            Padding(
              //TODO: 4. Buat Text  sebagai anak dari Column
              padding: const EdgeInsets.only(left: 16, bottom: 8),
              child: Text(
                candi.name,
                style: const TextStyle(fontSize: 12),
              ),
            ),
            Padding(
              //TODO: 4. Buat Text  sebagai anak dari Column
              padding: const EdgeInsets.only(left: 16, bottom: 8),
              child: Text(
                candi.type,
                style: const TextStyle(fontSize: 12),
              ),
            )
          //TOdo: 5. Buat  Text sebagai anak dari Column
          ],
      )
      ),
    );
  }
}