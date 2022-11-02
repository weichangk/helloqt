#pragma once
#include "ui_aboutui.h"
#include <QWidget>

class Aboutui : public QWidget
{
  Q_OBJECT
public:
  Aboutui(QWidget *parent = nullptr);
  ~Aboutui();

private:
  Ui_aboutui *ui;
};
