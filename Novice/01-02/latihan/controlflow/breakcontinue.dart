main() {
  int i = 0;
  while (i < 4) {
    i++;
    print(i);
  }
  
  print('----');
  while(true) {
    i++;
    if (i > 9) {
      break;
    }
    if (i == 5) {
      continue;
    }
    print(i);
  }
}