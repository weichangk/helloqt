import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

GridLayout{
  id: layout
  anchors.fill: parent
  anchors.margins: 8
  columns: 5
  rows: 3
  //图片-基础
  //图片路径通过source属性指定，可绝对路径或相对路径，支持任何图片格式，如png、jpeg、svg等
  //如果没有指定width和height，image自动加载图片宽高，指定了宽高图片会自动缩放大小，可以通过fillModel来指定图片的缩放方式
  //本地图片加载是同步的，会阻塞用户界面，可设置asynchronous:true将加载设置为异步
  Rectangle {
    id: rect1
    width: 300
    Layout.fillHeight: true
    Image {
      y: 0
      width: 200; height: 200
      fillMode: Image.Tile
      source: "qrc:/qmlexample/qmlexample/resources/images/qtlogo.png"
      horizontalAlignment: Image.AlignLeft
      verticalAlignment: Image.AlignTop
    }
    //设置image的width和height属性会在绘制图片时进行缩放，但是内存中还是保存图片原始大小，而sourcrSize属性则会设置图片在内存中的大小，使用sourcrSize裁剪图片内存(会失真)。
    //cache设置缓存，默认true
    //mirror设图片水平翻转，实现镜像效果
    //smooth表示图像在缩放或转换时是否平滑过滤，平滑过滤可以提供更好的视觉质量，但在某些硬件上可能会慢一些，如果图像以其自然大小显示，则此属性没有视觉或性能影响。默认为true
    Image {
      y: 250
      width: 200; height: 200
      fillMode: Image.Tile
      mirror: true
      source: "qrc:/qmlexample/qmlexample/resources/images/qtlogo.png"
      sourceSize.width: 100; sourceSize.height: 100
      horizontalAlignment: Image.AlignLeft
      verticalAlignment: Image.AlignTop
    }
    //网络加载图片默认是异步加载的
    //可以通过progress和status属性可以获取实时进度
    Image {
      id: images_network
      y: 500
      width: 200; height: 200
      source: "https://eoimages.gsfc.nasa.gov/images/imagerecords/74000/74393/world.topo.200407.3x5400x2700.jpg"
      fillMode: Image.PreserveAspectFit
      onStatusChanged: {
        console.log(sourceSize)
        if(images_network.status == Image.Ready) console.log("Loaded")
        else if(images_network.status == Image.Loading) console.log("Loading")
        else if(images_network.status == Image.Null) console.log("Null")
        else if(images_network.status == Image.Error) console.log("Error")
      }
    }
    Rectangle {
      color: "red"
      anchors { left: images_network.left; bottom: images_network.bottom }
      height: 10
      width: images_network.width * images_network.progress
      visible: images_network.progress != 1
    }

  }

  //图片-边界
  //BorderImage类型为图片创建边框，将图片分为9个区域（9宫格），通过4条边界线（border.top、border.bottom、border.left、border.right）进行划分，以像素为单位设置相应边框的宽高

  //各区域边框填充模式：
  //1.四个角区域（1、3、7、9）不进行缩放
  //2.上下区域（2、8）通过horizontalTileModel设置横向缩放
  //3.左右区域（4、6）通过verticalTileModel设置纵向缩放
  //4.中间区域（5）结合horizontalTileModel和verticalTileModel设置缩放

  //可填充模式有：
  //1.BorderImage.Stretch 拉伸
  //2.BorderImage.Repeat 平铺，直到没有空间，最后一张图片可能被裁剪
  //3.BorderImage.Round 平铺，将图像缩小以确保最后一张图像没有裁剪
  Rectangle {
    id: rect2
    width: 300
    Layout.fillHeight: true
    BorderImage {
      y: 0
      width: 180; height: 180
      border.left: 10; border.top: 30; border.right: 10; border.bottom: 30
      horizontalTileMode: BorderImage.Stretch
      verticalTileMode: BorderImage.Stretch
      // horizontalTileMode: BorderImage.Repeat
      // verticalTileMode: BorderImage.Repeat
      source: "qrc:/qmlexample/qmlexample/resources/images/colors.png"
    }
  }


  //图片-动态图片
  //AnimatedImage类型扩展了Image类型，可用来播放一系列帧的图片动画，比如gif
  // 包含以下属性：
  // currentFrame : int
  // frameCount : int
  // paused : bool
  // playing : bool
  // source : url
  // speed : real

  Rectangle {
    id: rect3
    width: 300
    Layout.fillHeight: true
    // width: animation.width; height: animation.height
    AnimatedImage{ id: xiaorenanimation; source: "qrc:/qmlexample/qmlexample/resources/images/xiaoren.gif" }
    Component.onCompleted: {
      console.log(xiaorenanimation.frameCount)
    }
    //GIF进度条
    Rectangle{
        width: 4; height: 8
        x: (xiaorenanimation.width - width) * xiaorenanimation.currentFrame / xiaorenanimation.frameCount
        y: xiaorenanimation.height-8
        color: "red"
    }
  }
}
