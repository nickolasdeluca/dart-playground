import 'dart:math';

class Pessoa {
  String nome;
  double altura;
  double peso;
  double imc = 0;

  Pessoa(this.nome, this.altura, this.peso);

  void calcularIMC() {
    imc = (peso / pow(altura, 2));
  }

  toJson() {
    return {
      'Nome': this.nome,
      'Altura': this.altura,
      'Peso': this.peso,
      'IMC': this.imc
    };
  }
}

void main(List<String> args) {
  List<Pessoa> pessoas = [];
  pessoas.add(Pessoa('Nickolas', 1.75, 94));
  pessoas.add(Pessoa('Vanessa', 1.64, 50));

  pessoas.forEach((element) {
    element.calcularIMC();
    print(element.toJson());
  });
}
