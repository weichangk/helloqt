#pragma once
#include "ui_firstui.h"
#include <QWidget>

class Firstui : public QWidget
{
  Q_OBJECT
public:
  Firstui(QWidget *parent = nullptr);
  ~Firstui();

private:
  Ui_firstui *ui;
};
