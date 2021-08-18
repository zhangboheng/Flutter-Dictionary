// ignore_for_file: avoid_print

/*

Mathematical constants and functions, plus a random number generator.

*/

import 'dart:math';

void main() {
  double num = 0.8;
  double bsn = 0.6;
  int alp = 3;

  //Classes
  //Random number
  Random rnd = Random();
  print(rnd.nextBool());
  print(rnd.nextInt(10));
  print(rnd.nextDouble());

  //Point: A utility class for representing two-dimensional positions.
  Point pt = const Point(32.0, 24.0);
  Point ds = const Point(31.0, 23.0);
  print(pt.magnitude);
  print(pt.distanceTo(ds));
  print(pt.squaredDistanceTo(ds));

  //Rectangle: A class for representing two-dimensional rectangles whose
  //properties are immutable.
  Rectangle sq = const Rectangle(20, 20, 5, 5);
  print(sq.bottom);
  print(sq.containsPoint(ds));

  //Constants
  print(e); //Base of the natural logarithms.
  print(ln2); //Natural logarithm of 2.
  print(ln10); //Natural logarithm of 10.
  print(log2e); //Base-2 logarithm of e.
  print(log10e); //Base-10 logarithm of e.
  print(pi); //The PI constant.
  print(sqrt1_2); //Square root of 1/2.
  print(sqrt2); //Square root of 2.

  //sin: Converts num to a double and returns the sine of the value.
  print(sin(num));

  //asin: Converts num to a double and returns its arc sine in radians.
  print(asin(num));

  //cos: Converts num to a double and returns the cosine of the value.
  print(cos(num));

  //acos: Converts num to a double and returns its arc cosine in radians.
  print(acos(num));

  //tan: Converts num to a double and returns the tangent of the value.
  print(tan(num));

  //atan: Converts num to a double and returns its arc tangent in radians.
  print(atan(num));

  //atan2: A variant of atan.
  print(atan2(num, bsn));

  //max: Returns the larger of two numbers.
  print(max(num, bsn));

  //min: Returns the smaller of two numbers.
  print(min(num, bsn));

  //pow: Returns x to the power of exponent.
  print(pow(num, 2).toStringAsFixed(2));

  //sqrt: Converts x to a double and returns the positive square root of the value.
  print(sqrt(alp));

  //exp: Converts x to a double and returns the natural exponent, e, to the power x.
  print(exp(alp));

  //log: Converts x to a double and returns the natural logarithm of the value.
  print(log(alp));
}
