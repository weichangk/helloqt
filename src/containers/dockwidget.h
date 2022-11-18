#pragma once
#include <QtWidgets>
#include "ui_dockwidget.h"
#include "../common/stylemgr.h"

class DockWidget : public QMainWindow
{
  Q_OBJECT
private:
  Ui_dockwidget *ui;
  //记录所有dockWidget的指针集合
  QList<QDockWidget *> m_docks;
public:
  DockWidget(QWidget *parent = nullptr);
  ~DockWidget();
  void ShowDockLayout(int type);
  //移除并隐藏所有dock
  void RemoveAllDock();
  //显示dock窗口
  void ShowDock(const QList<int> &index = QList<int>());
};
