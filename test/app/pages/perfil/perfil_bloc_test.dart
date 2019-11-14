import 'package:flutter_test/flutter_test.dart';

import 'package:geek_hawk/app/pages/perfil/perfil_bloc.dart';

void main() {
  PerfilBloc bloc;

  setUp(() {
    bloc = PerfilBloc();
  });

  group('PerfilBloc Test', () {
    test("First Test", () {
      expect(bloc, isInstanceOf<PerfilBloc>());
    });
  });
}
