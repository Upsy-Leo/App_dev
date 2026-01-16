import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;

void main(List<String> arguments) {

  // Algo tri décroissant
  List<int> numbers = [25, 42, 79, 12];
  for(int i=0; i<numbers.length; i++){
    for(int j=i+1; j<numbers.length-i; j++){
      if(numbers[i]<numbers[j]){
        int temp = numbers[i];
        numbers[i] = numbers[j];
        numbers[j] = temp;
      }
    }
  }

  //mutl par 2 avec map
  Iterable<int> l2 = numbers.map((int n) {return n*2;});

  //retour nombres pairs
  List<int> l3 = numbers.where((n)=> n%2==0).toList();
  

  print(numbers);
  print(l2);
  print(l3);
}
