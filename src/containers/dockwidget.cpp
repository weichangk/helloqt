#include "dockwidget.h"
#include <QtCore/QtCore>

DockWidget::DockWidget(QWidget *parent) : QMainWindow(parent), ui(new Ui_dockwidget)
{
  ui->setupUi(this);
  StyleMgr::SetStyleToWidgetByCssFile(this, ":/helloqt/resources/qss/custom/dockwidget.qss");

  // 如果不需要MainWindow的中间窗口，整个视图都由QDockWidget组成，可以把QMainWindow的中间窗口部件去除
  // QWidget *p = takeCentralWidget();
  // if (p)
  //   delete p;

  // 当不需要MainWindow的中间窗口时，发现不能拖动QDockWidget到中间，需要设置
  // setDockNestingEnabled(true);

  ui->dockwidget_dockWidget_1->setWindowTitle("Dock 1");
  ui->dockwidget_dockWidget_2->setWindowTitle("Dock 2");
  ui->dockwidget_dockWidget_3->setWindowTitle("Dock 3");
  ui->dockwidget_dockWidget_4->setWindowTitle("Dock 4");
  ui->dockwidget_dockWidget_5->setWindowTitle("Dock 5");
  ui->dockwidget_dockWidget_6->setWindowTitle("Dock 6");
  ui->dockwidget_dockWidget_7->setWindowTitle("Dock 7");
  ui->dockwidget_dockWidget_8->setWindowTitle("Dock 8");
  ui->dockwidget_dockWidget_9->setWindowTitle("Dock 9");

  ui->dockwidget_dockWidget_1->setFeatures(QDockWidget::DockWidgetMovable);                                   //可移动
  ui->dockwidget_dockWidget_2->setFeatures(QDockWidget::DockWidgetClosable | QDockWidget::DockWidgetMovable); //可关闭、移动
  ui->dockwidget_dockWidget_3->setFeatures(QDockWidget::DockWidgetMovable);                                   //可移动
  ui->dockwidget_dockWidget_4->setFeatures(QDockWidget::DockWidgetClosable | QDockWidget::DockWidgetMovable); //可关闭、移动
  ui->dockwidget_dockWidget_5->setFeatures(QDockWidget::DockWidgetClosable | QDockWidget::DockWidgetMovable); //可关闭、移动
  ui->dockwidget_dockWidget_6->setFeatures(QDockWidget::DockWidgetMovable);                                   //可移动
  ui->dockwidget_dockWidget_7->setFeatures(QDockWidget::DockWidgetClosable | QDockWidget::DockWidgetMovable); //可关闭、移动
  ui->dockwidget_dockWidget_8->setFeatures(QDockWidget::DockWidgetMovable);                                   //可移动
  ui->dockwidget_dockWidget_9->setFeatures(QDockWidget::DockWidgetClosable | QDockWidget::DockWidgetMovable); //可关闭、移动

  ui->dockwidget_dockWidget_1->setAllowedAreas(Qt::TopDockWidgetArea);    //可在主窗口的上侧停靠。
  ui->dockwidget_dockWidget_3->setAllowedAreas(Qt::LeftDockWidgetArea);   //可在主窗口的左侧停靠。
  ui->dockwidget_dockWidget_6->setAllowedAreas(Qt::RightDockWidgetArea);  //可在主窗口的右侧停靠。
  ui->dockwidget_dockWidget_8->setAllowedAreas(Qt::BottomDockWidgetArea); //可在主窗口的下侧停靠。

  // 去掉标题栏
  // QWidget *Widget = new QWidget;
  // ui->dockwidget_dockWidget_1->setTitleBarWidget(Widget);

  // 把QDockWidget标题栏竖起来
  // ui->dockwidget_dockWidget_6->setFeatures(QDockWidget::DockWidgetVerticalTitleBar);

  m_docks.append(ui->dockwidget_dockWidget_1);
  m_docks.append(ui->dockwidget_dockWidget_2);
  m_docks.append(ui->dockwidget_dockWidget_3);
  m_docks.append(ui->dockwidget_dockWidget_4);
  m_docks.append(ui->dockwidget_dockWidget_5);
  m_docks.append(ui->dockwidget_dockWidget_6);
  m_docks.append(ui->dockwidget_dockWidget_7);
  m_docks.append(ui->dockwidget_dockWidget_8);
  m_docks.append(ui->dockwidget_dockWidget_9);
}

DockWidget::~DockWidget()
{
  delete ui;
}

void DockWidget::ShowDockLayout(int type)
{
  RemoveAllDock();
  switch (type)
  {
  case 1:
    addDockWidget(Qt::TopDockWidgetArea, ui->dockwidget_dockWidget_1);
    addDockWidget(Qt::LeftDockWidgetArea, ui->dockwidget_dockWidget_3);
    addDockWidget(Qt::RightDockWidgetArea, ui->dockwidget_dockWidget_6);
    addDockWidget(Qt::BottomDockWidgetArea, ui->dockwidget_dockWidget_8);
    resizeDocks({ui->dockwidget_dockWidget_1, ui->dockwidget_dockWidget_8}, {200, 100}, Qt::Vertical);   //上下
    resizeDocks({ui->dockwidget_dockWidget_3, ui->dockwidget_dockWidget_6}, {300, 300}, Qt::Horizontal); //左右
    ShowDock(QList<int>() << 0 << 2 << 5 << 7);
    break;
  case 2:
    addDockWidget(Qt::TopDockWidgetArea, ui->dockwidget_dockWidget_1);
    addDockWidget(Qt::LeftDockWidgetArea, ui->dockwidget_dockWidget_3);
    addDockWidget(Qt::RightDockWidgetArea, ui->dockwidget_dockWidget_6);
    addDockWidget(Qt::BottomDockWidgetArea, ui->dockwidget_dockWidget_8);

    resizeDocks({ui->dockwidget_dockWidget_1, ui->dockwidget_dockWidget_8}, {200, 100}, Qt::Vertical);   //上下，初始化高度
    resizeDocks({ui->dockwidget_dockWidget_3, ui->dockwidget_dockWidget_6}, {300, 300}, Qt::Horizontal); //左右，初始化宽度

    resizeDocks({ui->dockwidget_dockWidget_1}, {200}, Qt::Horizontal);
    splitDockWidget(ui->dockwidget_dockWidget_1, ui->dockwidget_dockWidget_2, Qt::Horizontal);

    resizeDocks({ui->dockwidget_dockWidget_3}, {50}, Qt::Vertical);
    splitDockWidget(ui->dockwidget_dockWidget_3, ui->dockwidget_dockWidget_4, Qt::Vertical);
    resizeDocks({ui->dockwidget_dockWidget_4}, {100}, Qt::Vertical);
    splitDockWidget(ui->dockwidget_dockWidget_4, ui->dockwidget_dockWidget_5, Qt::Vertical);

    resizeDocks({ui->dockwidget_dockWidget_6}, {150}, Qt::Vertical);
    splitDockWidget(ui->dockwidget_dockWidget_6, ui->dockwidget_dockWidget_7, Qt::Vertical);

    resizeDocks({ui->dockwidget_dockWidget_8}, {300}, Qt::Horizontal);
    splitDockWidget(ui->dockwidget_dockWidget_8, ui->dockwidget_dockWidget_9, Qt::Horizontal);

    ShowDock(QList<int>() << 0 << 1 << 2 << 3 << 4 << 5 << 6 << 7 << 8);
    break;
  case 3:
    addDockWidget(Qt::TopDockWidgetArea, ui->dockwidget_dockWidget_1);
    tabifyDockWidget(ui->dockwidget_dockWidget_1, ui->dockwidget_dockWidget_2);

    addDockWidget(Qt::LeftDockWidgetArea, ui->dockwidget_dockWidget_3);
    tabifyDockWidget(ui->dockwidget_dockWidget_3, ui->dockwidget_dockWidget_4);
    tabifyDockWidget(ui->dockwidget_dockWidget_4, ui->dockwidget_dockWidget_5);

    addDockWidget(Qt::RightDockWidgetArea, ui->dockwidget_dockWidget_6);
    tabifyDockWidget(ui->dockwidget_dockWidget_6, ui->dockwidget_dockWidget_7);

    addDockWidget(Qt::BottomDockWidgetArea, ui->dockwidget_dockWidget_8);
    tabifyDockWidget(ui->dockwidget_dockWidget_8, ui->dockwidget_dockWidget_9);

    resizeDocks({ui->dockwidget_dockWidget_1, ui->dockwidget_dockWidget_8}, {200, 100}, Qt::Vertical);   //上下
    resizeDocks({ui->dockwidget_dockWidget_3, ui->dockwidget_dockWidget_6}, {300, 300}, Qt::Horizontal); //左右
    ShowDock(QList<int>() << 0 << 1 << 2 << 3 << 4 << 5 << 6 << 7 << 8);
    break;
  default:
    break;
  }

  // 解决Tabbar上方有一行间隙无法填充背景色问题
  Q_FOREACH (QTabBar *bar, this->findChildren<QTabBar *>())
  {
    bar->setDrawBase(false);
  }
}

/// @brief 移除并隐藏所有的dock
void DockWidget::RemoveAllDock()
{
  for (int i = 0; i < 9; ++i)
  {
    removeDockWidget(m_docks[i]);
  }
}

/// @brief 显示指定序号的dock
/// @param index 指定序号，如果不指定，则会显示所有
void DockWidget::ShowDock(const QList<int> &index)
{
  if (index.isEmpty())
  {
    for (int i = 0; i < 9; ++i)
    {
      m_docks[i]->show();
    }
  }
  else
  {
    foreach (int i, index)
    {
      m_docks[i]->show();
    }
  }
}
