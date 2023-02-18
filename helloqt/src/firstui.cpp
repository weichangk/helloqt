#include "firstui.h"

Firstui::Firstui(QWidget *parent) : QWidget(parent), ui(new Ui_firstui)
{
  ui->setupUi(this);
  ui->pushButton->setStyleSheet("border-image:url(:/first/resources/image/icons8-steam-96.png)");
}

Firstui::~Firstui()
{
  delete ui;
}
