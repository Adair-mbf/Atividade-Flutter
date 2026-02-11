import 'dart:io';

main(){
  String lerString = stdin.readLineSync() ??"";
  lerString = removerAcento((lerString.replaceAll(" ", "")).toUpperCase());
  if (RegExp(r'[^A-Zi]').hasMatch(lerString)) {
    print("O que você digitou é inválido!");
    return;
  }
  int resultado = 0;
  for(int i = 0; i < lerString.length; i++){
    switch(lerString[i]){
      case "A" || "E"|| "I"|| "O" || "U" || "L" || "N" || "R" || "S" || "T":
        resultado += 1;
        break;
      case "D" || "G":
        resultado += 2;
        break;
      case "B" || "C" || "M" || "P":
        resultado += 3;
        break;
      case "F" || "H" || "V" || "W" || "Y":
        resultado += 4;
        break;
      case "K":
        resultado += 5;
        break;
      case "J" || "X":
        resultado += 8;
        break;
      case "Q" || "Z":
        resultado += 10;
        break;
    }
  }
  print("Pontuação Scabble: $resultado pontos.");
}

String removerAcento(String stringLida){
  String comAcento = "ÀÁÂÃÄÅÈÉÊËÌÍÎÏÒÓÔÕÖØÙÚÛÜÇÑÝ";
  String semAcento = "AAAAAAEEEEIIIIOOOOOOUUUUCNY";

  for (int i = 0; i < comAcento.length; i++) {
    stringLida = stringLida.replaceAll(comAcento[i], semAcento[i]);
  }
  
  return stringLida;
}

