import 'dart:math';

class Bhaskara {
  num a;
  num b;
  num c;

  Bhaskara(this.a, this.b, this.c);

  num calcDelta() {
    var delta = pow(b, 2) - 4 * a * c;
    var calc = sqrt(delta.isNegative ? (delta * -1) : delta);
    return calc;
  }

  result() {
    num x1 = -b + calcDelta();
    num x2 = -b - calcDelta();

    x1 = x1.isNegative ? ((x1 * -1) / (2 * a) * -1) : (x1 / (2 * a));
    x2 = x2.isNegative ? ((x2 * -1) / (2 * a) * -1) : (x2 / (2 * a));

    return ('$x1, $x2');
  }
}

void main() {
  Bhaskara b = Bhaskara(1, -5, 6);

  print(b.result());
}
