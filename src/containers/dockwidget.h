#pragma once
#include <QtWidgets>
#include "ui_dockwidget.h"

class DockWidget : public QMainWindow
{
  Q_OBJECT
private:
  Ui_dockwidget *ui;

public:
  DockWidget(QWidget *parent = nullptr);
  ~DockWidget();
};
