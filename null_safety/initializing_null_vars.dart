// In DART v2.9 and newer versions we get a feature of Null Safety
// It means as earliar we were able to initialize a null var lik int a = null;
// We can't do this in newer versions, We have to do something like this
// In previous version we didn't get any error while performing operations on null and non-null vars
// Hence, it is a much better approach, coz. you will get compile time error

void main() {
  int? a; // sets a to null without any explicit errors
  print(a);
}
