import 'dart:math';

abstract class Figura {
  int x;
  int y;

  Figura(this.x, this.y);


  double area();
}


class Circulo extends Figura {
  double raio;

  Circulo(int x, int y, this.raio) : super(x, y);

  void diametro() {
    print("Círculo criado: Diâmetro = ${2 * raio}");
  }

  @override
  double area() {
    return pi * pow(raio, 2);
  }
}

class Retangulo extends Figura {
  double largura;
  double comprimento;

  Retangulo(int x, int y, this.largura, this.comprimento) : super(x, y);

  void isQuadrado() {
    if (largura == comprimento) {
      print("Retângulo criado: É um quadrado.");
    } else {
      print("Retângulo criado: Não é um quadrado.");
    }
  }

  @override
  double area() {
    return largura * comprimento;
  }
}

class Triangulo extends Figura {
  double face1;
  double face2;
  double face3;

  Triangulo(int x, int y, this.face1, this.face2, this.face3) : super(x, y);

  void getTipo() {
    if (face1 == face2 && face2 == face3) {
      print("Triângulo criado: Tipo Equilátero");
    } else if (face1 != face2 && face1 != face3 && face2 != face3) {
      print("Triângulo criado: Tipo Escaleno");
    } else {
      print("Triângulo criado: Tipo Isósceles");
    }
  }

  @override
  double area() {
    double s = (face1 + face2 + face3) / 2;
    return sqrt(s * (s - face1) * (s - face2) * (s - face3));
  }
}