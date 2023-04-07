## 图形动画基础
- 颜色
  - 颜色-基础
    - 使用svg颜色
    - 使用十六进制颜色
    - 使用Qt.rgba、Qt.hsla、Qt.darker、Qt.lighter、Qt.tint
  - 颜色-渐变（Gradient）
  - 颜色-系统调色板（SystemPalette）
- 图片
  - 图片-基础
  - 图片-边界（BorderImage）
  - 图片-动态图片（AnimatedImage）
- 缩放、旋转、平移变换
  - 属性缩放Scale
  - 属性旋转Rotation
  - 高级变换（旋转）Transform
  - 高级变换（缩放）Transform
  - 高级变换（平移）Transform
- 状态
  - 状态State
  - State搭配when属性和MouseArea使用
- 动画和过渡
  - 动画和过渡-属性动画：
  - 动画和过渡-使用预定义的目标和属性-1：PropertyAnimation
  - 动画和过渡-使用预定义的目标和属性-2：SequentialAnimation ParallelAnimation  ColorAnimation
  - 动画和过渡-在状态改变时使用过渡：transitions Transition
  - 动画和过渡-使用默认的行为（Behavior）动画
  - 动画和过渡-使用顺序动画组
  - 精灵动画（Sprite Animations）-动画过渡	SpriteSequence Sprite
  - 精灵动画（Sprite Animations）-动画无过渡 AnimatedSprite
  - 弹动效果（Flickable）-基础-没有区域限制
  - 弹动效果（Flickable）-基础-指定区域显示
  - 弹动效果（Flickable）-基础-指定区域显示-添加进度条
  - 弹动效果（Flickable）-基础-指定方向弹跳
  - 翻转效果（Flipable）-transform:Rotation states:State transitions:Transition


## 模型与视图
	数据模型部分
11-01	模型(Model) 视图(View) 委托(Delegate)
		ListModel ListView Component
11-02	数据模型：ListModel
11-03	WorkerScript 在新线程js文件中执行一些操作
		WorkerScript sendMessage onMessage信号处理器
		ListModel model.sync()
11-04	ObjectModel 不需要委托直接在视图上显示
11-05	DelegateModel 									----有点复杂
11-06	Package 会通过Package.name附加属性分配一个名称
11-07	XmlListModel-基本显示
11-08	LocalStorage 读写SQLite数据库					----有点复杂
11-09	C++扩展QML模型：QStringList(code) 拓：QObjectList QAbstractItemModel
	视图类型部分 
11-10	ListView: 键盘导航和高亮 clip snapMode header footer highlight  keyNavigationWraps highlightMoveVelocity
		头部、尾部、高亮部分都在ListView中处理
11-11	ListView: preferredHighlightBegin preferredHighlightEnd highlightRangeMode SpringAnimation
		高亮部分设定在一定范围，高亮部分动作由组件单独处理
11-12	ListView: 数据分组 section.property section.criteria section.delegate
11-13	GridView: 表格视图
11-14	视图过渡：populate add remove move displaced addDisplaced removeDisplaced moveDisplaced
11-15	PathView: 路径分布 按键控制 动态显示			----有点复杂
11-16	WebView:  网页视图 
		注意：Qt5.7以上版本已经没有 QtWebKit 升级为 QWebEngine 基于chromium内核
		并且mingW编译器不支持QWebEngine 只支持MSVC编译器版本