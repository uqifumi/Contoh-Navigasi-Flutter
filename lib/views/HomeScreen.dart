import 'package:flutter/material.dart';
import 'package:contoh_navigasi_flutter/models/OlahRaga.dart';
import 'package:contoh_navigasi_flutter/views/DetailOlahRaga.dart';

class HomeScreen extends StatelessWidget {
  final List<OlahRaga> olahraga = [
    OlahRaga(
        'Sepak bola',
        'Senin, 5 Oktober 2020',
        'Sepak bola (bahasa Inggris: Association Football, Football, '
            'atau Soccer), secara resmi dikenal sebagai sepak bola asosiasi, '
            'adalah cabang olahraga yang menggunakan bola yang umumnya terbuat '
            'dari bahan kulit dan dimainkan oleh dua tim yang masing-masing '
            'beranggotakan 11 (sebelas) orang pemain inti dan beberapa pemain '
            'cadangan. Memasuki abad ke-21, olahraga ini telah dimainkan oleh '
            'lebih dari 250 juta orang di 200 negara, yang menjadikannya olahraga '
            'paling populer di dunia. Sepak bola bertujuan untuk mencetak gol '
            'sebanyak-banyaknya dengan memasukan bola ke gawang lawan. Sepak bola '
            'dimainkan dalam lapangan terbuka yang berbentuk persegi panjang, di '
            'atas rumput atau rumput sintetis.',
        'https://images.unsplash.com/photo-1594125812609-97eb771d464a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
    OlahRaga(
        'Bola basket',
        'Selasa, 6 Oktober 2020',
        'Bola basket adalah olahraga bola berkelompok yang terdiri '
            'atas dua tim beranggotakan masing-masing lima orang yang saling '
            'bertanding mencetak poin dengan memasukkan bola ke dalam keranjang '
            'lawan. Bola basket dapat di lapangan terbuka, walaupun pertandingan '
            'profesional pada umumnya dilakukan di ruang tertutup. Lapangan '
            'pertandingan yang diperlukan juga relatif tidak besar, misal '
            'dibandingkan dengan sepak bola. Selain itu, permainan bola basket '
            'juga lebih kompetitif karena tempo permainan cenderung lebih cepat '
            'jika dibandingkan dengan olahraga bola yang lain, seperti voli dan '
            'sepak bola. ',
        'https://images.unsplash.com/photo-1578354985657-65776ee4ae90?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=789&q=80'),
    OlahRaga(
        'Bola voli',
        'Rabu, 6 Oktober 2020',
        'Bola voli (bahasa Inggris: volleyball) adalah permainan '
            'olahraga yang dimainkan oleh dua grup berlawanan. Masing-masing grup '
            'memiliki enam orang pemain. Terdapat pula variasi permainan bola voli '
            'pantai yang masing-masing grup hanya memiliki dua orang pemain. '
            'Olahraga Bola Voli dinaungi FIVB (Federation Internationale de '
            'Volleyball) sebagai induk organisasi internasional, sedangkan di '
            'Indonesia, olahraga bola Voli dinaungi oleh PBVSI (Persatuan Bola '
            'Voli Seluruh Indonesia)',
        'https://images.unsplash.com/photo-1513233552420-84d7157d6a35?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=776&q=80'),
    OlahRaga(
        'Tenis lapangan',
        'Kamis, 7 Oktober 2020',
        'Tenis adalah olahraga yang biasanya dimainkan antara dua '
            'pemain atau antara dua pasangan masing-masing dua pemain. Setiap '
            'pemain menggunakan raket untuk memukul bola karet. Tujuan permainan '
            'adalah memainkan bola dengan cara tertentu sehingga pemain lawan '
            'tidak dapat mengembalikan bola tersebut. Tenis adalah salah satu '
            'cabang olahraga Olimpiade dan dimainkan pada semua tingkat masyarakat '
            'di segala usia. Olahraga ini dapat dimainkan oleh siapa saja, termasuk '
            'orang-orang yang menggunakan kursi roda. Permainan tenis modern '
            'berasal dari Birmingham, Inggris pada akhir abad ke-19 sebagai '
            '"tenis lapangan rumput".',
        'https://images.unsplash.com/photo-1573112625042-e49d6b28c538?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=60'),
    OlahRaga(
        'Golf',
        'Jum\'at, 5 Oktober 2020',
        'Golf adalah permainan luar ruang yang dimainkan secara '
            'perorangan atau tim yang berlomba memasukkan bola ke dalam '
            'lubang-lubang yang ada di lapangan dengan jumlah pukulan tersedikit '
            'mungkin. Bola golf dipukul dengan menggunakan satu set tongkat pemukul '
            'yang disebut klab (stik golf). Golf adalah salah satu dari permainan '
            'yang tidak memiliki lapangan permainan yang standar, melainkan '
            'dimainkan di padang golf yang masing-masing memiliki desain unik, '
            'dan biasanya terdiri dari 9 atau 18 hole (lubang). Aturan utama dalam '
            'golf adalah "memainkan sebuah bola dengan stik golf dari daerah tee '
            '(teeing ground) ke dalam lubang dengan satu pukulan atau beberapa '
            'pukulan berikutnya sesuai dengan Aturan". ',
        'https://images.unsplash.com/photo-1600185801750-95579bfd6fd9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cabang Olah Raga'),
      ),
      body: Center(
        child: ListView.builder(
            itemCount: olahraga.length,
            itemBuilder: (context, index) {
              return new GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailOlahRaga(
                            olahraga: olahraga[index],
                          )));
                },
                child: new Card(
                  child: new Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.network(
                          '${olahraga[index].gambar}',
                          width: 100,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Text(
                                '${olahraga[index].nama}',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                            ),
                            Text('${olahraga[index].tanggal}'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}