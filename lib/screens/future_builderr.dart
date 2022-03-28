import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_section9/models/regres_model.dart';
import 'package:http/http.dart' as http;

class FutureBuilderScreen extends StatelessWidget {
  const FutureBuilderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
      builder: (BuildContext context, AsyncSnapshot<ReqResRespuesta> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        //Mismo tipado estricto de usuarios
        return _ListaUsuarios(usuarios: snapshot.data!.data);
      },
      future: getUsuarios(),
    ));
  }
}

class _ListaUsuarios extends StatelessWidget {
  final List<Usuario> usuarios;

  const _ListaUsuarios({
    Key? key,
    required this.usuarios,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: usuarios.length,
      itemBuilder: (BuildContext context, int index) {
        final usuario = usuarios[index];

        return FadeInLeft(
          delay: Duration(milliseconds: 100 * index),
          child: ListTile(
            title: Text('${usuario.firstName} ${usuario.lastName}'),
            subtitle: Text(usuario.email),
            trailing: CircleAvatar(
              backgroundImage: NetworkImage(usuario.avatar),
            ),
          ),
        );
      },
    );
  }
}

Future<ReqResRespuesta> getUsuarios() async {
  // ignore: unused_local_variable
  final url = Uri.parse("https://reqres.in/api/users");
  final resp = await http.get(url);
  return ReqResRespuesta.fromJson(resp.body);
}
