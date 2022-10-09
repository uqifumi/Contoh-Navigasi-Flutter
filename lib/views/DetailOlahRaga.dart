import 'package:flutter/material.dart';
import 'package:contoh_navigasi_flutter/models/OlahRaga.dart';

class DetailOlahRaga extends StatelessWidget {
  final OlahRaga olahraga;

  const DetailOlahRaga({Key? key, required this.olahraga}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget bagianJudul = Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(olahraga.nama,
                        style: Theme.of(context).textTheme.headline6),
                  ),
                  Text(
                    olahraga.tanggal,
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );

    Widget bagianDeskripsi = Container(
      padding: EdgeInsets.all(16),
      child: Text(
        olahraga.deskripsi,
        style: Theme.of(context).textTheme.bodyText1,
        softWrap: true,
        textAlign: TextAlign.justify,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(olahraga.nama),
      ),
      body: ListView(
        children: <Widget>[
          Image.network(
            olahraga.gambar,
            width: 600,
            fit: BoxFit.cover,
          ),
          bagianJudul,
          bagianDeskripsi,
        ],
      ),
    );
  }
}
