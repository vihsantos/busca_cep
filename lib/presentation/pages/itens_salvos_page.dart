import 'package:busca_cep/presentation/components/card_endereco.dart';
import 'package:busca_cep/presentation/controllers/itens_salvos_controller.dart';
import 'package:flutter/material.dart';

import '../../models/endereco.dart';
import '../components/app_bar.dart';
import '../core/paleta_de_cores.dart';

class ItensSalvosPage extends StatefulWidget {
  const ItensSalvosPage({super.key});

  @override
  State<ItensSalvosPage> createState() => _ItensSalvosPageState();
}

class _ItensSalvosPageState extends State<ItensSalvosPage> {
  ItensSalvosController controller = ItensSalvosController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar("Ceps Salvos"),
        backgroundColor: PaletaDeCores.azulClaro,
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: FutureBuilder(
              future: controller.buscarEnderecos(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return const Center(child: Text("Erro ao acessar os dados."));
                }
                if (!snapshot.hasData) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                List<Endereco> enderecos = snapshot.data;

                return ListView.builder(itemBuilder: ((context, index) {
                  Endereco endereco = enderecos[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: CardEndereco(endereco: endereco),
                  );
                }));
              }),
        ));
  }
}
