#pragma once
#include "ui_home.h"
#include <QtWidgets>
#include "common/stylemgr.h"

class Home : public QWidget
{
  Q_OBJECT
public:
  Home(QWidget *parent = nullptr);
  ~Home();

private:
  Ui_home *ui;
};
