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
          child: ValueListenableBuilder(
            valueListenable: controller.loadingApi,
            builder: (context, bool loading, child) {
              if (loading) {
                return const Center(child: CircularProgressIndicator());
              }

              if (controller.error != null) {
                return const Center(child: Text("Ocorreu um erro"));
              }

              if (controller.enderecos == null) {
                return const Center(child: Text("Sem endereços salvos"));
              }

              return ListView.builder(
                  itemCount: controller.enderecos!.length,
                  itemBuilder: (context, index) {
                    Endereco endereco = controller.enderecos![index];
                    return CardEndereco(endereco: endereco);
                  });
            },
          ),
        ));
  }
}
