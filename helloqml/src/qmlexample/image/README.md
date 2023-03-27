# qmlexample
https://github.com/weichangk/helloqt/tree/master/helloqml/src/qmlexample/image

## image
QML Image是一个用于显示图像的QML元素，它具有以下属性：
- source：指定要显示的图像的路径或URL。
- fillMode：指定如何缩放图像以适应元素的大小。可选值包括：Stretch（拉伸）、PreserveAspectFit（保持宽高比并适应元素大小）、PreserveAspectCrop（保持宽高比并裁剪图像以适应元素大小）。
- smooth：指定是否使用平滑缩放算法来缩放图像。
- asynchronous：指定是否异步加载图像。如果设置为true，则图像将在后台加载，而不会阻塞应用程序的UI线程。
- cache：指定是否缓存图像。如果设置为true，则图像将在第一次加载后缓存，以便在以后的使用中更快地加载。
- progress：指定图像加载的进度。它是一个介于0和1之间的数字，表示图像加载的百分比。
- status：指定图像的加载状态。可选值包括：Null（未加载）、Ready（已加载）、Loading（正在加载）、Error（加载错误）。
- error：如果加载图像时出现错误，则此属性包含错误消息。
- sourceSize：指定图像的原始大小。它是一个包含width和height属性的Size对象。
- mipmap：指定是否使用mipmap来缩放图像。mipmap是一组缩小版本的图像，用于在不同大小的显示器上显示图像时提高图像质量。
- mirrored：指定是否水平翻转图像。
- verticalMirrored：指定是否垂直翻转图像。
- opacity：指定图像的不透明度。它是一个介于0和1之间的数字，表示图像的透明度级别。
- layer.enabled：指定是否启用图像的图层。如果启用，则可以在图像上绘制其他元素。
- layer.effect：指定应用于图像的图层效果。它可以是一个QML元素或一个QML文件路径。
- layer.sourceRect：指定应用于图像的图层效果的源矩形。它是一个包含x、y、width和height属性的矩形对象。
- layer.destinationRect：指定应用于图像的图层效果的目标矩形。它是一个包含x、y、width和height属性的矩形对象。
- layer.smooth：指定是否使用平滑缩放算法来缩放图像的图层效果。
- layer.opacity：指定图像的图层效果的不透明度。它是一个介于0和1之间的数字，表示图像的透明度级别。
- layer.enabled：指定是否启用图像的图层。如果启用，则可以在图像上绘制其他元素。

