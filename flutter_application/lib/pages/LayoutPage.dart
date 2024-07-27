import 'package:flutter/material.dart';

class LayoutPage extends StatelessWidget {
  const LayoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('LayoutPage'),
        ),
        body: const Column(
          children: [LeftColumn(), RightColumn()],
        ));
  }
}

class LeftColumn extends StatelessWidget {
  const LeftColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
            margin: const EdgeInsets.all(20),
            child: const Text("Stawberry Pavlova",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20))),
        const Text(
          "Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. Pavlova features a crisp crust and soft, light inside, topped with fruit and whipped cream.",
          textAlign: TextAlign.center,
        ),
        const SubTitle(),
        Container(
          margin: const EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Icon(Icons.kitchen, color: Colors.green[500]),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                    child: const Text("PREP:"),
                  ),
                  const Text("25 min",
                      style: TextStyle(fontWeight: FontWeight.bold))
                ],
              ),
              const SizedBox(
                width: 40,
              ),
              Column(
                children: [
                  Icon(Icons.timer, color: Colors.green[500]),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                    child: const Text("COOK:"),
                  ),
                  const Text("1 hr",
                      style: TextStyle(fontWeight: FontWeight.bold))
                ],
              ),
              const SizedBox(
                width: 40,
              ),
              Column(
                children: [
                  Icon(Icons.restaurant, color: Colors.green[500]),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                    child: const Text("FEEDS:"),
                  ),
                  const Text("4-6",
                      style: TextStyle(fontWeight: FontWeight.bold))
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}

class SubTitle extends StatelessWidget {
  const SubTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            Icons.star,
            color: Colors.black,
            size: 20,
          ),
          const Icon(
            Icons.star,
            color: Colors.black,
            size: 20,
          ),
          const Icon(
            Icons.star,
            color: Colors.black,
            size: 20,
          ),
          const Icon(
            Icons.star,
            color: Colors.black,
            size: 20,
          ),
          const Icon(
            Icons.star,
            color: Colors.black,
            size: 20,
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(left: 10),
            child: const Text(
              "170 Reviews",
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}

class RightColumn extends StatelessWidget {
  const RightColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 300,
        child: Image.asset("assets/pavlova.jpg", fit: BoxFit.cover));
  }
}
