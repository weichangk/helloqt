#pragma once
#include <QtWidgets>
#include "ui_layouts.h"

class Layouts : public QWidget
{
  Q_OBJECT
private:
  Ui_layouts *ui;
public:
  Layouts(QWidget *parent = nullptr);
  ~Layouts();
};
