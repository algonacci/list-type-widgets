import 'package:flutter/material.dart';

class CardListTile extends StatelessWidget {
  const CardListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Using Card List Tile',
        ),
      ),
      body: Center(
        child: ListView(
          children: [
            Column(
              children: [
                listElement(),
                listElement(),
                listElement(),
                listElement(),
                listElement(),
                listElement(),
                listElement(),
                listElement(),
                listElement(),
              ],
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/list-view'),
              child: const Text('data'),
            ),
          ],
        ),
      ),
    );
  }

  SingleChildScrollView scrollView() {
    return SingleChildScrollView(
      child: Column(
        children: [
          listElement(),
          listElement(),
          listElement(),
          listElement(),
          listElement(),
          listElement(),
          listElement(),
          listElement(),
          listElement(),
        ],
      ),
    );
  }

  Column listElement() {
    return Column(
      children: [
        Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              10,
            ),
          ),
          child: const ListTile(
            leading: FlutterLogo(),
            title: Text('Title'),
            subtitle: Text('Subtitle'),
            trailing: Icon(Icons.accessibility_new_sharp),
          ),
        ),
        const Divider(
          indent: 5,
          endIndent: 5,
        ),
      ],
    );
  }
}
