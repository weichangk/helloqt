#pragma once
#include <QtWidgets>
#include "ui_helloqt.h"
#include "home.h"
#include "layouts/customflowlayout.h"
#include "containers/scrollarea.h"

class Helloqt : public QWidget
{
  Q_OBJECT

public:
  Helloqt(QWidget *parent = nullptr);
  ~Helloqt();

private:
  Ui_helloqt *ui;
  Home *home;
  CustomFlowLayout *customflowlayout;
  ScrollArea *scrollarea;
private:
  void SetTree();
  void SetHome();

private slots:
  void NavigationToView(QTreeWidgetItem *item, int column);
};
