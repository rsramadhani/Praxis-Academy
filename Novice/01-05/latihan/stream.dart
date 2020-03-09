import 'dart:async';

main() {
  NamaMethod().listen((angka) {
    print(angka);
  });
}

Stream<int> NamaMethod () async* { // async* untuk stream
  yield 1;
  yield 2;
  yield 3;
}