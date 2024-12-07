///Image widget is that kind of widget that helps to display imag ein flutter app.
///
/// Supported Image formats are:
///     1. JPEG,
///     2. WebP,
///     3. PNG,
///     4. GIF,
///     5. animated WebP/GIF,
///     6. BMP, and
///     7. WBMP
///
/// Steps of displaying Images in flutter app:
///     Step-1: created folder at the root of the project,
///             named /assets/
///
///     Step-2: add image manually in the folder
///     Step-3: Update pubspec.yml
///             syntex:
///             assets:
///               - assets/tablet.png
///               - assets/background.png
///
///     Step-4: Now use in code
///             syntex:
///             Image.asset('assets/image.png')
///
/// There is an special widget Called [FaceInImage()]:
///         it shows a placeholder image while the target image is loading,
///         then fades in the new image when it loads.
///
///         Syntex:
///         FadeInImage.assetNetwork(
///           placeHodler: 'assets/image.png',
///           image: 'link address'
///         )
///
///
/// Ways of using iamge:
///   1. From Assets: Image.asset(asset location)
///   2. From Internet: Image.network(iamge link)
///   3. From Memory: 