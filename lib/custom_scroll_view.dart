import 'package:flutter/material.dart';

class UsingCustomScrollView extends StatelessWidget {
  const UsingCustomScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          floating: true,
          snap: true,
          pinned: false,
          title: const Text('Sliver App Bar'),
          expandedHeight: 50,
          backgroundColor: Colors.amber,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.network(
              'https://via.placeholder.com/320x260',
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverGrid(
          delegate: SliverChildListDelegate(containerList),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
        ),
        SliverGrid(
          delegate: SliverChildBuilderDelegate(
            sliverListWithBuilder,
            childCount: 10,
          ),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
          ),
        ),
        SliverGrid(
          delegate: SliverChildBuilderDelegate(
            sliverListWithBuilder,
            childCount: 15,
          ),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(10),
          sliver: SliverList(
            delegate: SliverChildListDelegate(containerList),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(10),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              sliverListWithBuilder,
              childCount: 7,
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(5),
          sliver: SliverFixedExtentList(
            delegate: SliverChildListDelegate(containerList),
            itemExtent: 210,
          ),
        ),
        SliverGrid.count(
          crossAxisCount: 5,
          children: containerList,
        ),
      ],
    );
  }

  List<Widget> get containerList {
    return [
      Container(
        height: 200,
        color: Colors.blueGrey,
        alignment: Alignment.center,
        child: const Text(
          'Sliver List Element',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      Container(
        height: 200,
        color: Colors.blueGrey.shade100,
        alignment: Alignment.center,
        child: const Text(
          'Sliver List Element',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      Container(
        height: 200,
        color: Colors.blueGrey.shade200,
        alignment: Alignment.center,
        child: const Text(
          'Sliver List Element',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      Container(
        height: 200,
        color: Colors.blueGrey.shade300,
        alignment: Alignment.center,
        child: const Text(
          'Sliver List Element',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      Container(
        height: 200,
        color: Colors.blueGrey.shade400,
        alignment: Alignment.center,
        child: const Text(
          'Sliver List Element',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
    ];
  }

  Widget? sliverListWithBuilder(BuildContext context, int index) {
    return Container(
      height: 150,
      color: Colors.pink[100 * (index + 1 % 9)],
      alignment: Alignment.center,
      child: const Text(
        'Sliver List Element with Builder',
        style: TextStyle(
          fontSize: 24,
        ),
      ),
    );
  }
}
