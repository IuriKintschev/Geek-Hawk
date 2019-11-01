import 'package:flutter_test/flutter_test.dart';

import 'package:geek_hawk/app/pages/home/components/circular_list_cart/circular_list_cart_bloc.dart';

void main() {
  CircularListCartBloc bloc;

  setUp(() {
    bloc = CircularListCartBloc();
  });

  group('CircularListCartBloc Test', () {
    test("First Test", () {
      expect(bloc, isInstanceOf<CircularListCartBloc>());
    });
  });
}
