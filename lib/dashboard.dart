import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Aplikasi Biru'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'data:image/png;base64,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'),
                  ),
                  title:
                      Row(children: [Text("Dept Collector"), Text("pinjol")]),
                  subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                            "Untuk bulan ini segera dibayar tagihan nya ya pak"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(Icons.reply),
                            Icon(Icons.replay),
                            Icon(Icons.favorite_border),
                          ],
                        )
                      ]),
                  trailing: Text("12.00"),
                ),
            separatorBuilder: (context, index) => SizedBox(
                  height: 10,
                ),
            itemCount: 100));
  }
}
