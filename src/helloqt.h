#pragma once
#include <QtWidgets>
#include "ui_helloqt.h"
#include "home.h"
#include "layouts/customflowlayout.h"
#include "layouts/splitter.h"
#include "containers/scrollarea.h"
#include "containers/dockwidget.h"
#include "containers/stackedwidget.h"

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
  ScrollArea *scrollarea = nullptr;
  DockWidget *dockwidget = nullptr;
  StackedWidget *stackedwidget = nullptr;

private:
  void SetTree();
  void SetHome();

private slots:
  void NavigationToView(QTreeWidgetItem *item, int column);
};
