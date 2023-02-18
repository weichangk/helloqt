#pragma once
#include <QtWidgets>
#include "ui_stackedwidget.h"
#include "common/stylemgr.h"

class StackedWidget : public QWidget
{
  Q_OBJECT
private:
  Ui_stackedwidget *ui;
  QWidget *aqwidget = nullptr;

public:
  StackedWidget(QWidget *parent = nullptr);
  ~StackedWidget();

public slots:
  void AddAWidget();
  void ShowAWidget();
  void DelAWidget();
  void ShowIndex0();
  void ShowCurrentChanged(int index);
  void ShowWidgetRemoved(int index);
};

