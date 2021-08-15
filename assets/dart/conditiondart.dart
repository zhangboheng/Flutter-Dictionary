// ignore_for_file: avoid_print
/*

A conditional/decision-making construct evaluates a condition before the 
instructions are executed.

*/
void main() {
  //if statement
  var num = 5;
  if (num > 0) {
    print("number is positive");
  }

  //if...elseif...else statement
  var even = 12;
  if (even % 2 == 0) {
    print("Even");
  } else if (even % 2 != 0) {
    print("Odd");
  } else {
    print('Others');
  }

  //switch case
  var grade = "A";
  switch (grade) {
    case "A":
      {
        print("Excellent");
      }
      break;

    case "B":
      {
        print("Good");
      }
      break;

    case "C":
      {
        print("Fair");
      }
      break;

    case "D":
      {
        print("Poor");
      }
      break;

    default:
      {
        print("Invalid choice");
      }
      break;
  }
}
