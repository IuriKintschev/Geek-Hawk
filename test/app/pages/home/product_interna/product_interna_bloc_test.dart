import 'package:flutter_test/flutter_test.dart';

import 'package:geek_hawk/app/pages/home/product_interna/product_interna_bloc.dart';

void main() {
  ProductInternaBloc bloc;

  setUp(() {
    bloc = ProductInternaBloc();
  });

  group('ProductInternaBloc Test', () {
    test("First Test", () {
      expect(bloc, isInstanceOf<ProductInternaBloc>());
    });
  });
}
