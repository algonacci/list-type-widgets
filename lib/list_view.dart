import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class UsingListView extends StatelessWidget {
  UsingListView({super.key});
  List<Book> allBooks = List.generate(
    2000,
    (index) => Book(
      index + 1,
      'Book Name ${index + 1}',
      'Writer Name ${index + 1}',
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Using List View'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          var currentBook = allBooks[index];
          return Card(
            child: ListTile(
              onTap: () => EasyLoading.showToast(
                'Clicked',
                duration: const Duration(seconds: 4),
                dismissOnTap: true,
                toastPosition: EasyLoadingToastPosition.bottom,
              ),
              title: Text(currentBook.name),
              subtitle: Text(currentBook.writer),
              leading: CircleAvatar(
                child: Text(currentBook.id.toString()),
              ),
            ),
          );
        },
        itemCount: allBooks.length,
        separatorBuilder: (context, index) {
          var newIndex = index + 1;
          if (newIndex % 5 == 0) {
            return const Divider(
              thickness: 3,
            );
          }
          return Container();
        },
      ),
    );
  }

  ListView firstListView() {
    return ListView(
      children: allBooks
          .map(
            (Book book) => ListTile(
              title: Text(book.name),
              subtitle: Text(book.writer),
              leading: CircleAvatar(
                child: Text(book.id.toString()),
              ),
            ),
          )
          .toList(),
    );
  }
}

class Book {
  final int id;
  final String name;
  final String writer;

  Book(this.id, this.name, this.writer);
}
