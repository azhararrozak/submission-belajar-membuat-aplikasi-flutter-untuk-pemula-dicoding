import 'package:flutter/material.dart';

class DetailScreenWrapper extends StatefulWidget {
  final String title;
  final String image;
  final List<String> bahan;
  final List<String> resep;

  DetailScreenWrapper({
    required this.title,
    required this.image,
    required this.bahan,
    required this.resep,
  });

  @override
  _DetailScreenWrapperState createState() => _DetailScreenWrapperState();
}

class _DetailScreenWrapperState extends State<DetailScreenWrapper> {
  bool isBahanSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 16.0),
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    Text(
                      widget.title.toUpperCase(),
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Image.asset(widget.image),
              Container(
                margin: const EdgeInsets.only(top: 16.0, left: 10.0),
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isBahanSelected = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: isBahanSelected
                              ? const Border(
                                  bottom:
                                      BorderSide(color: Colors.blue, width: 2.0),
                                )
                              : null,
                        ),
                        padding: const EdgeInsets.only(bottom: 4.0),
                        child: Text(
                          "Bahan".toUpperCase(),
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color:
                                isBahanSelected ? Colors.blue : Colors.black,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isBahanSelected = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: !isBahanSelected
                              ? const Border(
                                  bottom:
                                      BorderSide(color: Colors.blue, width: 2.0),
                                )
                              : null,
                        ),
                        padding: const EdgeInsets.only(bottom: 4.0),
                        child: Text(
                          "Resep".toUpperCase(),
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color:
                                !isBahanSelected ? Colors.blue : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                child: isBahanSelected
                    ? _buildBahanSection(widget.bahan)
                    : _buildResepSection(widget.resep),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBahanSection(List<String> bahan) {
    return Column(
      children: bahan.map((item) {
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  item,
                  textAlign: TextAlign.justify,
                  softWrap: true,
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }

  Widget _buildResepSection(List<String> resep) {
    return Column(
      children: resep.map((item) {
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  item,
                  textAlign: TextAlign.justify,
                  softWrap: true,
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
