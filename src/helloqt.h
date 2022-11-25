#pragma once
#include <QtWidgets>
#include "ui_helloqt.h"
#include "home.h"
#include "layouts/customflowlayout.h"
#include "layouts/splitter.h"
#include "layouts/layouts.h"
#include "containers/scrollarea.h"
#include "containers/dockwidget.h"
#include "containers/stackedwidget.h"
#include "properties/sizetest.h"

class Helloqt : public QWidget
{
  Q_OBJECT

public:
  Helloqt(QWidget *parent = nullptr);
  ~Helloqt();

private:
  Ui_helloqt *ui = nullptr;
  Home *home = nullptr;
  Splitter *splitter = nullptr;
  CustomFlowLayout *customflowlayout = nullptr;
  Layouts *layouts = nullptr;
  ScrollArea *scrollarea = nullptr;
  DockWidget *dockwidget = nullptr;
  StackedWidget *stackedwidget = nullptr;
  SizeTest *sizetest = nullptr;

private:
  void SetTree();
  void SetHome();

private slots:
  void NavigationToView(QTreeWidgetItem *item, int column);
};
