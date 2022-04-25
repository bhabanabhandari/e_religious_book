import 'package:e_religious_book/screens/book_screen.dart';
import 'package:flutter/material.dart';

class Neplai extends StatefulWidget {
  const Neplai({Key? key}) : super(key: key);

  @override
  State<Neplai> createState() => _NeplaiState();
}

class _NeplaiState extends State<Neplai> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 55.0,
          left: 10,
          right: 10,
        ),
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        print('pressed');

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BookScreen()),
                        );
                      },
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.35,
                            width: MediaQuery.of(context).size.width * 0.44,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/Nepali-Bhagavad-gita.jpg'),
                                    fit: BoxFit.fill)),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black)),
                            height: 50,
                            width: MediaQuery.of(context).size.width * 0.44,
                            // color: Colors.amber,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                'श्रिमद भागवत गीत',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.35,
                          width: MediaQuery.of(context).size.width * 0.44,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/nepali_shree krishna.jpg'),
                                  fit: BoxFit.fill)),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black)),
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.44,
                          // color: Colors.amber,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              'श्री कृष्ण',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.35,
                          width: MediaQuery.of(context).size.width * 0.44,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/ramayan_neplai.jpg'),
                                  fit: BoxFit.fill)),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black)),
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.44,
                          // color: Colors.amber,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              'रमायान ',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.35,
                          width: MediaQuery.of(context).size.width * 0.44,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/swastani_nepali.jpg'),
                                  fit: BoxFit.fill)),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black)),
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.44,
                          // color: Colors.amber,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              'स्वस्थानी ब्रत कथा',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
