// "has"  ----> composition
// "is-a" ----> inheritence

//? For e.g:-
// There is a base class Shape and Circle extends it, We can say Circle is a Shape. This is called inheritence
// There is a collection List, and we made use of it for for making a class Stack. We can say Stack has List. This is called composition.

//TODO let's see this by the Flutter's deafult widget example

abstract class Widget {}

// Inheritence as "Text is a widget"
class Text extends Widget {
  Text({this.text});
  final String text;
}

// Inheritence as "Button is a widget"
class Button extends Widget {
  Button({
    this.child,
    this.onPressed,
  });
  // Compositon coz. "Button has Widget" as child
  final Widget child;
  final void Function() onPressed;
  //* Use final void Function()? onPressed; if using null-safety
  //* Adding funtion()? says that this function can be null. // Technically speaking it is a Nullable Datatype
}

void main() {
  final button = Button(
    child: Text(text: 'Click Me'),
    onPressed: () => print("Hello"),
  );
}
