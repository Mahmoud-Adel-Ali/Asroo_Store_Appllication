// dotdev used to secure you application data 
//
//

import 'package:flutter_dotenv/flutter_dotenv.dart';

enum EnvTypeEnum { dev, prod }

class EnvVariable {
  EnvVariable._();

  static EnvVariable instance = EnvVariable._();

  String _envType = '';

  Future<void> init({required EnvTypeEnum envTypeEnum}) async {
    switch (envTypeEnum) {
      case EnvTypeEnum.dev:
        await dotenv.load(fileName: '.env.dev');
      case EnvTypeEnum.prod:
        await dotenv.load(fileName: '.env.prod');
    }
    _envType = dotenv.get('ENV_TYPE');
  }

  bool get debugMode {
    return _envType == 'dev';
    // can implement using   => _envType == 'dev'; rather than {return }
  }
}
