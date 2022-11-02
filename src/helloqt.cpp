#include "helloqt.h"

helloqt::helloqt(QWidget *parent) : QMainWindow(parent), ui(new Ui_helloqt)
{
  ui->setupUi(this);
}

helloqt::~helloqt()
{
  delete ui;
}
