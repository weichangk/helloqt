#pragma once
#include "ui_helloqt.h"
#include <QMainWindow>

class helloqt : public QMainWindow
{
  Q_OBJECT

public:
  helloqt(QWidget *parent = nullptr);
  ~helloqt();

private:
  Ui_helloqt *ui;
};
