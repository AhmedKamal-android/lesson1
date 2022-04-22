import 'package:flutter/material.dart';

class LessonOne extends StatelessWidget {
  const LessonOne({Key? key}) : super(key: key);

  buttonOnPressed(msg) {
    print("Pressed $msg");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 10,
          backgroundColor: Colors.green,
          leading: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          title: const Text("Home"),
          actions: const [
            Icon((Icons.ac_unit_rounded)),
            Icon((Icons.access_alarm))
          ],
        ),
        body: Container(
          alignment: Alignment.center,
          color: Colors.greenAccent,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Hello World  ",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        fontStyle: FontStyle.italic,
                        letterSpacing: 0,
                        wordSpacing: 20,
                        height: 5,
                        shadows: const <Shadow>[
                          Shadow(
                              offset: Offset(2, 5),
                              blurRadius: 18,
                              color: Colors.red)
                        ],
                        decoration: TextDecoration.combine([
                          TextDecoration.underline,
                          TextDecoration.overline
                        ]),
                        decorationColor: Colors.red,
                        decorationStyle: TextDecorationStyle.wavy,
                        decorationThickness: 2),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Hello World",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        fontStyle: FontStyle.italic,
                        letterSpacing: 0,
                        wordSpacing: 20,
                        height: 5,
                        shadows: const <Shadow>[
                          Shadow(
                              offset: Offset(2, 5),
                              blurRadius: 18,
                              color: Colors.red)
                        ],
                        decoration: TextDecoration.combine([
                          TextDecoration.underline,
                          TextDecoration.overline
                        ]),
                        decorationColor: Colors.red,
                        decorationStyle: TextDecorationStyle.wavy,
                        decorationThickness: 2),
                  ),
                ],
              ),
              Row(
                children: [
                  //old

                  // FlatButton(onPressed: (){}, child: Text("A")),
                  // OutlineButton(onPressed: (){}, child: Text("B")),
                  // RaisedButton(onPressed: (){})
                  TextButton(onPressed: () {}, child: const Text("a")),
                  TextButton.icon(
                    onPressed: () {},
                    label: const Text("a"),
                    icon: const Icon(Icons.add_photo_alternate_outlined),
                  ),
                  OutlinedButton(
                      onPressed: () {},
                      child: const Text("b"),
                      autofocus: true),
                  ElevatedButton.icon(
                    onPressed: () {},
                    label: const Text("c"),
                    icon: const Icon(
                      Icons.add_photo_alternate_outlined,
                      color: Colors.green,
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.orange),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.black),
                        padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                        elevation: MaterialStateProperty.all(2)),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () => buttonOnPressed("button"),
                      icon: Icon(Icons.print)),
                  FloatingActionButton.extended(
                    label: Text("TT"),
                    icon: const Icon(Icons.ac_unit),
                    onPressed: () {},
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.red,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        side: BorderSide(color: Colors.red,width: 6)),
                    splashColor: Colors.yellow,
                  ),
                ],
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          label: Text("TT"),
          icon: const Icon(Icons.ac_unit),
          onPressed: () {},
          backgroundColor: Colors.green,
          foregroundColor: Colors.red,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(3)),
              side: BorderSide(color: Colors.red,width: 6)),
          splashColor: Colors.yellow,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
