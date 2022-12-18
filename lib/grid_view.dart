import 'package:flutter/material.dart';

class UsingGridView extends StatelessWidget {
  const UsingGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn Grid View'),
      ),
      body: GridView.builder(
        itemCount: 50,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => debugPrint('Clicked $index'),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.purple,
                  width: 4,
                  style: BorderStyle.solid,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(
                    20,
                  ),
                ),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 20,
                    color: Colors.green,
                    offset: Offset(5, 10),
                  ),
                ],
                image: const DecorationImage(
                  image: NetworkImage(
                    'https://avatars.githubusercontent.com/u/86970816?s=400&u=08d2e74ffaaf07b7ee5334304e9b1915480b6ef7&v=4',
                  ),
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
                color: Colors.purple[100 * (index % 9)],
                gradient: const LinearGradient(
                  colors: [
                    Colors.pink,
                    Colors.blue,
                  ],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                ),
              ),
              margin: const EdgeInsets.all(25),
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Using GridView ${index + 1}',
                  textAlign: TextAlign.end,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  GridView gridViewExtent() {
    return GridView.extent(
      // scrollDirection: Axis.horizontal,
      // reverse: true,
      maxCrossAxisExtent: 400,
      crossAxisSpacing: 15,
      mainAxisSpacing: 25,
      children: [
        Container(
          alignment: Alignment.center,
          child: const Text(
            'Using Grid View 1',
            style: TextStyle(fontSize: 24),
          ),
          color: Colors.pink,
        ),
        Container(
          alignment: Alignment.center,
          child: const Text(
            'Using Grid View 2',
            style: TextStyle(fontSize: 24),
          ),
          color: Colors.pink,
        ),
        Container(
          alignment: Alignment.center,
          child: const Text(
            'Using Grid View 3',
            style: TextStyle(fontSize: 24),
          ),
          color: Colors.pink,
        ),
        Container(
          alignment: Alignment.center,
          child: const Text(
            'Using Grid View 4',
            style: TextStyle(fontSize: 24),
          ),
          color: Colors.pink,
        ),
        Container(
          alignment: Alignment.center,
          child: const Text(
            'Using Grid View 5',
            style: TextStyle(fontSize: 24),
          ),
          color: Colors.pink,
        ),
        Container(
          alignment: Alignment.center,
          child: const Text(
            'Using Grid View 6',
            style: TextStyle(fontSize: 24),
          ),
          color: Colors.pink,
        ),
        Container(
          alignment: Alignment.center,
          child: const Text(
            'Using Grid View 7',
            style: TextStyle(fontSize: 24),
          ),
          color: Colors.pink,
        ),
        Container(
          alignment: Alignment.center,
          child: const Text(
            'Using Grid View 8',
            style: TextStyle(fontSize: 24),
          ),
          color: Colors.pink,
        ),
      ],
    );
  }

  GridView gridViewCount() {
    return GridView.count(
      // scrollDirection: Axis.horizontal,
      reverse: true,
      crossAxisCount: 2,
      crossAxisSpacing: 15,
      mainAxisSpacing: 25,
      children: [
        Container(
          alignment: Alignment.center,
          child: const Text(
            'Using Grid View 1',
            style: TextStyle(fontSize: 24),
          ),
          color: Colors.pink,
        ),
        Container(
          alignment: Alignment.center,
          child: const Text(
            'Using Grid View 2',
            style: TextStyle(fontSize: 24),
          ),
          color: Colors.pink,
        ),
        Container(
          alignment: Alignment.center,
          child: const Text(
            'Using Grid View 3',
            style: TextStyle(fontSize: 24),
          ),
          color: Colors.pink,
        ),
        Container(
          alignment: Alignment.center,
          child: const Text(
            'Using Grid View 4',
            style: TextStyle(fontSize: 24),
          ),
          color: Colors.pink,
        ),
        Container(
          alignment: Alignment.center,
          child: const Text(
            'Using Grid View 5',
            style: TextStyle(fontSize: 24),
          ),
          color: Colors.pink,
        ),
        Container(
          alignment: Alignment.center,
          child: const Text(
            'Using Grid View 6',
            style: TextStyle(fontSize: 24),
          ),
          color: Colors.pink,
        ),
        Container(
          alignment: Alignment.center,
          child: const Text(
            'Using Grid View 7',
            style: TextStyle(fontSize: 24),
          ),
          color: Colors.pink,
        ),
        Container(
          alignment: Alignment.center,
          child: const Text(
            'Using Grid View 8',
            style: TextStyle(fontSize: 24),
          ),
          color: Colors.pink,
        ),
      ],
    );
  }
}
