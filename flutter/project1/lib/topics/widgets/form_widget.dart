/// Forms are an integral part of all modern mobile and web applications.
/// It is mainly used to interact with the app as well as gather information from the users.
///
/// A form can contain
///        text fields,
///        buttons,
///        checkboxes,
///        radio buttons, etc.
///
/// We have use a Global Key for uniquely identify the form and validate it.
///
/// For decorating input field:
///                   InputDecoration
///
/// syntex:
///    Form(
///        key: global_key,
///        children: Column(
///         children: [
///         TextFormField()
///         ]
///        )
///
/// Form validation:
///      Validation is a method, which allows us to correct or confirms a
///      certain standard.
///      It ensures the authentication of the entered data.
///
///     To validate a form in a flutter, we need to implement mainly 3 steps.
///     Step-1: Use the form with globalkey.
///     Step-2: Use TextFormField to give the input field with validator property.
///     Step-3: Create a button to validate form fields and display validation errors.
///
///     For validating Input, we have to use use
///           validator() method in TextFormInput(),
///           if use gives a wrong input, this will return a string that
///           contains error message.
///           otherwise it will return null.
///
///