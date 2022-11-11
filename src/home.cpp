#include "home.h"

Home::Home(QWidget *parent) : QWidget(parent), ui(new (Ui_home))
{
  ui->setupUi(this);
  setAttribute(Qt::WA_StyledBackground);
  StyleMgr::SetStyleToWidgetByCssFile(this, ":/helloqt/resources/qss/custom/home.qss");
}

Home::~Home()
{
  delete ui;
}
