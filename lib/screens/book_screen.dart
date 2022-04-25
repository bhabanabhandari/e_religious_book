import 'package:e_religious_book/book_pdf_pages.dart/gita.dart';
import 'package:flutter/material.dart';

class BookScreen extends StatefulWidget {
  const BookScreen({Key? key}) : super(key: key);

  @override
  State<BookScreen> createState() => _BookScreenState();
}

class _BookScreenState extends State<BookScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250.0,
            flexibleSpace: const FlexibleSpaceBar(
              background: Image(
                image: AssetImage('assets/bhagwatgita_cover.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 10),
              child: Text(
                'Author Name : Vyasa',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 10),
              child: Text(
                'Number of pages : 434',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 220, right: 10),
                child: Container(
                  height: 45,
                  //  width: 10,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    elevation: 8.0,
                    minWidth: 2000.0,
                    height: 64,
                    //color: primary,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ReadMore()),
                      );
                    },
                    child: Text(
                      'Read Book',
                      style: TextStyle(fontSize: 20, color: Colors.blue),
                    ),
                  ),
                )),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 10),
              child: Text(
                'About Book',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 10, right: 20),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.4,
                child: Text(
                  "The Shrimad Bhagavad Gita, often referred to as the Gita, is a 700-verse Hindu scripture that is part of the epic Mahabharata, dated to the second half of the first millennium BCE and is typical of the Hindu synthesis. It is considered to be one of the holy scriptures for Hinduism.",
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
