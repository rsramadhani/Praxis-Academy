void main() {
  try {
    int firstInput = 10;
    int secondInput = 2;
    int result = firstInput ~/ secondInput;

    print('The result of $firstInput divided by $secondInput is $result');
  } catch (e) {
    print('Exception occurs: $e');
  }
}  
