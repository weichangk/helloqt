#include "aboutui.h"

Aboutui::Aboutui(QWidget *parent) : QWidget(parent), ui(new (Ui_aboutui))
{
  ui->setupUi(this);
}

Aboutui::~Aboutui()
{
  delete ui;
}
