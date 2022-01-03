# Strategy pattern

Define a family of algorithms, encapsulate each one, and make them interchangeable. The Strategy pattern lets the algorithm vary independently from client that use it.

When to use Strategy pattern?
- When need to define class that will have one behavior that is similar to other behaviors in a list
- Class object to be able to choose form
    - Not flying
    - Fly with wings
    - Fly super fast
- When need to use one of several behaviors dynamically
- Reduces long lists of conditionals
- Avoids duplicate code
- Keeps class changes from forcing other class changes
- Can hide complicated/secret code form the user
- Negative: increased number of objects / classes

## Example:
Animal Bird fly => if in animal class all subclass need to make changes if interface all animal has to identify fly itself 
We make a new class that incapsulate flying behavior.
We use composition instead of Method in class we have attribute that deals with fly behavior 
