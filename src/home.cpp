#include "home.h"

Home::Home(QWidget *parent) : QWidget(parent), ui(new (Ui_home))
{
  ui->setupUi(this);
  setAttribute(Qt::WA_StyledBackground);
}

Home::~Home()
{
  delete ui;
}
