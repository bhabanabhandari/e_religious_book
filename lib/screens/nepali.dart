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
                    Container(
                      height: MediaQuery.of(context).size.height * 0.4,
                      width: MediaQuery.of(context).size.width * 0.44,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/Nepali-Bhagavad-gita.jpg'),
                              fit: BoxFit.fill)),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.4,
                      width: MediaQuery.of(context).size.width * 0.44,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/nepali_shree krishna.jpg'),
                              fit: BoxFit.fill)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.4,
                      width: MediaQuery.of(context).size.width * 0.44,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/ramayan_neplai.jpg'),
                              fit: BoxFit.fill)),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.4,
                      width: MediaQuery.of(context).size.width * 0.44,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/swastani_nepali.jpg'),
                              fit: BoxFit.fill)),
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
