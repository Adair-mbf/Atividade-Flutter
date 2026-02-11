import 'dart:io';

main(){
  List<String> valorResistencia = []; 
  print("Digite as cores das faixas do resistor: ");
  String lerCor = stdin.readLineSync() ??"";
  List<String> pedacoString = lerCor.split(" ");
  for(int i = 0; i < 2; i++){
    switch(pedacoString[i].toLowerCase()){
      case "preto":
        valorResistencia.add("0");
        break;
      case "marrom":
        valorResistencia.add("1");
        break;
      case "vermelho":
        valorResistencia.add("2");
        break;
      case "laranja":
        valorResistencia.add("3");
        break;
      case "amarelo":
        valorResistencia.add("4");
        break;
      case "verde":
        valorResistencia.add("5");
        break;
      case "azul":
        valorResistencia.add("6");
        break;
      case "violeta":
        valorResistencia.add("7");
        break;
      case "cinza":
        valorResistencia.add("8");
        break;
      case "branco":
        valorResistencia.add("9");
        break;
      default:
        print("${pedacoString[i]} é uma cor inválida!");
        pedacoString.removeAt(i);
        i--;
    }     
  }
  print("O valor de resistência do resistor é ${valorResistencia.join()}.");
}