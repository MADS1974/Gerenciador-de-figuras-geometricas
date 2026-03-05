import 'modelos_figuras.dart';

void main() {

  List<Figura> listaFiguras = [];

  print("--- INICIANDO GERENCIADOR DE FIGURAS ---\n");

  var circ = Circulo(0, 0, 10.0);
  circ.diametro();
  print("Área do Círculo: ${circ.area().toStringAsFixed(2)}");
  listaFiguras.add(circ);

  print("-" * 30);

  var ret = Retangulo(10, 10, 20.0, 10.0);
  ret.isQuadrado();
  print("Área do Retângulo: ${ret.area()}");
  listaFiguras.add(ret);

  var quad = Retangulo(5, 5, 12.0, 12.0);
  quad.isQuadrado();
  print("Área do Quadrado: ${quad.area()}");
  listaFiguras.add(quad);

  print("-" * 30);

  var tri = Triangulo(2, 2, 7.0, 8.0, 9.0);
  tri.getTipo();
  print("Área do Triângulo (Heron): ${tri.area().toStringAsFixed(2)}");
  listaFiguras.add(tri);

  print("\n" + "=" * 40);

  double somaTotalAreas = 0;

  for (var figura in listaFiguras) {
    somaTotalAreas += figura.area();
  }

  print("RESULTADO FINAL:");
  print("Soma de todas as áreas na lista: ${somaTotalAreas.toStringAsFixed(2)}");
  print("=" * 40);
}