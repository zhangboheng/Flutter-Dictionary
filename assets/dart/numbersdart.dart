//Dart numbers can be classified as - int and double

// ignore_for_file: avoid_print

void main() {
  // declare an integer
  int num1 = 10;

  // declare a double value
  double num2 = 10.50;

  // print the values
  print(num1);
  print(num2);

  //parse
  /*

  The parse() static function allows parsing a string containing numeric 
  literal into a number.

  */
  print(num.parse('12'));
  print(num.parse('10.91'));

  //Number Properties
  //1.hashCode: Returns a hash code for a numerical value.
  double n = 5000.0;
  print(n.hashCode);

  //2.isFinite: The property returns a Boolean value true if the number is not
  //a NaN or positive infinity or negative infinity.
  double f = 5000 / 0;
  print(f.isFinite);

  //3.isInfinite: True if the number is positive infinity or negative infinity;
  //otherwise, false.
  print(f.isInfinite);

  //4.isNan: True if the number is the double Not-a-Number value; otherwise, false.
  print(f.isNaN);

  //5.isNegative: True if the number is negative; otherwise, false.
  print(f.isNegative);

  //6.sign: Returns minus one, zero or plus one depending on the sign and
  //numerical value of the number.
  int posNum = 10;
  int negNum = -12;
  int valZero = 0;

  print(posNum.sign);
  print(negNum.sign);
  print(valZero.sign);

  //7.isEven: Returns true if the number is an even number.
  int iseven = 10;
  print(iseven.isEven);

  //8.isOdd: Returns true if the number is an odd number.
  int isodd = 3;
  print(isodd.isOdd);

  //Number Methods
  //1.abs: Returns the absolute value of the number.
  int neg = -1;
  print(neg.abs());

  //2.ceil: Returns the least integer no smaller than the number.
  double toCeil = 0.444;
  print(toCeil.ceil());

  //3.compareTo: It returns an integer indicating the relationship between
  //the two numbers.
  var a = 2.4;
  print(a.compareTo(12));
  print(a.compareTo(2.4));
  print(a.compareTo(0));

  //4.floor: This method returns the largest integer less than or equal to a number.
  //the two numbers.
  var b = 2.9;
  print("The floor value of 2.9 = ${b.floor()}");

  //5.remainder: Returns the truncated remainder after dividing the two numbers.
  print(a.remainder(b));

  //6.Round: Returns the integer closest to the current numbers.
  print(b);

  //7.toDouble: Returns the double equivalent of the number.
  print(neg.toDouble());

  //8.toInt: Returns the integer equivalent of the number.
  print(b.toInt());

  //9.toString: Returns the string equivalent representation of the number.
  print(b.toString());

  //10.truncate: Returns an integer after discarding any fractional digits.
  print(toCeil.truncate());
}
