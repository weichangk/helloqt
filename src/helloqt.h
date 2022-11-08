#pragma once
#include "ui_helloqt.h"
#include "home.h"
#include "Layout/customflowlayout.h"
#include <QtWidgets>

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
private:
  void SetTree();
  void SetHome();

private slots:
  void NavigationToView(QTreeWidgetItem *item, int column);
};
