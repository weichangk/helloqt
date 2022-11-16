#pragma once
#include <QtWidgets>
#include "ui_splitter.h"
#include "../common/stylemgr.h"

class Splitter : public QWidget
{
  Q_OBJECT
private:
  Ui_splitter *ui;
public:
  Splitter(QWidget *parent = nullptr);
  ~Splitter();
};


