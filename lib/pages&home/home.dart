import 'package:flutter/material.dart';
import 'package:cd_tugaspraktikum/model/item.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Item> items = [
      Item(
        name: 'Musical Nursery Rhymes',

        imageUrl: 'https://akcdn.detik.net.id/community/media/visual/2023/05/29/ilustrasi-buku-cerita-anak-bahasa-inggris-1.jpeg?w=342',
        rating: 4.0,
      ),
      Item(
        name: 'Cerita rakyat nusantara', 
       
        imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQk2HsvsJyjyFU8IE7rcSJYw3_Nh8ISlq6ztA&s',
        rating: 4.0,
      ),
    ];

    return Scaffold(
        appBar: AppBar(
          title: Text("Items List"),
        ),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, 
            childAspectRatio: 0.7, 
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/item', arguments: item);
              },
              child: Hero(
                tag: item.name, // Tag yang unik untuk animasi Hero
                child: Card(
                  child: Column(
                    children: [
                      Expanded( 
                        child: Image.network(
                          item.imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0), 
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(item.name, style: TextStyle(fontWeight: FontWeight.bold)),
                            SizedBox(height: 4), 
                           
                            Text('Rating: ${item.rating}', style: TextStyle(color: Colors.orange)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
        // Tambahkan footer jika perlu
        bottomNavigationBar: Container(
            padding: EdgeInsets.all(16),
            child: Text('Nama: Siti Fatimah Ayu Lestari, NIM: 362358302013'),
            ),
        );
    }
}