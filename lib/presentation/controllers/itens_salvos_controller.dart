import '../../models/endereco.dart';
import '../../services/db/data_base_helper.dart';

class ItensSalvosController {
  Future buscarEnderecos() async {
    List<Endereco> enderecos = await DataBaseHelper.instance.getEnderecos();
    return enderecos;
  }
}
