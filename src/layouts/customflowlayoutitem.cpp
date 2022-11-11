#include "customflowlayoutitem.h"

CustomFlowLayoutItem::CustomFlowLayoutItem(QWidget *parent) : QWidget(parent), ui(new (Ui_customflowlayoutitem))
{
  ui->setupUi(this);
  setAttribute(Qt::WA_StyledBackground);
}

CustomFlowLayoutItem::~CustomFlowLayoutItem()
{
  delete ui;
}

QWidget *CustomFlowLayoutItem::Widget()
{
  return ui->widget;
}

QPushButton *CustomFlowLayoutItem::PushButton()
{
  return ui->pushButton;
}
