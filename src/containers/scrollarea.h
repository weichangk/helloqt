#pragma once
#include <QtWidgets>
#include "ui_scrollarea.h"
#include "../common/stylemgr.h"

class ScrollArea : public QWidget
{
  Q_OBJECT
private:
  Ui_scrollarea *ui;

protected:

public:
  ScrollArea(QWidget *parent = nullptr);
  ~ScrollArea();
  void SetScrollArea(QWidget *widget, QString text);
};
