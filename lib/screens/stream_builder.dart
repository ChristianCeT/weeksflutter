import 'dart:async';
import 'package:flutter/material.dart';

class StreamBuilderScreen extends StatefulWidget {
  const StreamBuilderScreen({Key? key}) : super(key: key);

  @override
  State<StreamBuilderScreen> createState() => _StreamBuilderScreenState();
}

class _StreamBuilderScreenState extends State<StreamBuilderScreen> {
  final colorStream = StreamController<Color>();
  //es buena practica crear dispose cuando se usa stream
  //se trabaja con streamcontroller en un stream

  int counter = -1;

  final List<Color> colorList = [
    Colors.blue,
    Colors.yellow,
    Colors.green,
  ];

  @override
  void dispose() {
    colorStream.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: StreamBuilder(
          stream: colorStream.stream,
          //snapshot indica si hay error, data o informacion de la aplicacion
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (!snapshot.hasData) {
              return const LoadingWidget();
            }
            //controlar el cerrado del stream
            if(snapshot.connectionState == ConnectionState.done) {
              return const Text("Fin del stream :(");
            }

            return Container(
              height: 150,
              width: 150,
              color: snapshot.data,
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //añadir informacion al stream
          //se debe tener en cuenta la definicion del stream
          /* colorStream.sink.add(Colors.blue); */
          counter++;
          if (counter < colorList.length) {
            colorStream.sink.add(colorList[counter]);
          } else {
            colorStream.close();
          }
        },
        child: const Icon(Icons.color_lens),
      ),
    );
  }
}

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text("Esperando clicks"),
        SizedBox(
          height: 20,
        ),
        CircularProgressIndicator()
      ],
    );
  }
}
