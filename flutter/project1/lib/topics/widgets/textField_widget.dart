/// A TextField or TextBox is an input element which holds the alphanumeric data,
///    such as name, password, address, etc.
///
/// We can use the TextField widget in building forms, sending messages,
/// creating search experiences, and many more.
///
/// TextField properties:
///   1. decoration: It is used to show the decoration around TextField.
///   2. border: It is used to create a default rounded rectangle border around TextField.
///   3. labelText: It is used to show the label text on the selection of TextField.
///   4. hintText: It is used to show the hint text inside TextField.
///   5. icon: It is used to add icons directly to the TextField.
///
/// For Retrieving values of textField there are some methods:
///   1. onChanged: It is the easiest way to retrieve the text field value.
///                 This method store the current value in a simple variable
///                 and then use it in the TextField widget.
///
///                 Syntex:
///                 String value = "";
///                  TextField(
///                       onChanged: (text) {
///                                value = text;
///                                 },
///                            )
///
///   2. controller: It is a popular method to retrieve text field value using
///                  TextEditingController. It will be attached to the TextField
///                  widget and then listen to change and control the widget's text value.
///
///                  syntex:
///                  TextEditingController mycontroller = TextEditingController();
///                  TextField(
///                       controller: mycontroller,
///                       )
///
/// making textField expandable:
///       => maxLines: this property is used for that.
///
/// control the size of the textField value:
///      => maxLength: this property is used for controlling length of the value
///
/// obscure textField value (boolean):
///      => obscure: Obscure means to make the field not readable or not
///                  understandable easily.