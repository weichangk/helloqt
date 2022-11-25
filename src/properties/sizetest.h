#pragma once
#include <QtWidgets>
#include "ui_sizetest.h"

class SizeTest : public QWidget
{
  Q_OBJECT
private:
  Ui_sizetest *ui;

public:
  SizeTest(QWidget *parent = nullptr);
  ~SizeTest();
};
