import "dart:io";

main(){
  print("Digite o número: ");
  String numero = stdin.readLineSync() ??"";
  numero = numero.replaceAll(" ", "");
  if((numero.isEmpty || RegExp(r'\D').hasMatch(numero)) || (numero.length < 13 || numero.length > 19)){
    print("O que você digitou é inválido!");
    return;
  }
  List<String> pedacoNumero = numero.split("");
  int numeroFinal = 0;
  for(int i = pedacoNumero.length - 2; i >= 0; i -= 2){
    int digito = int.parse(pedacoNumero[i]);
    digito *= 2;
    if (digito > 9){
      digito -= 9;
    }
    pedacoNumero[i] = digito.toString();
  }
  for(int i = 0; i < pedacoNumero.length; i++){
    numeroFinal += int.parse(pedacoNumero[i]);
  }

  if (numeroFinal % 10 == 0){
    print("Este número é válido!");
  }
  else{
    print("Este número é inválido!");
  }
}