#include "splitter.h"

Splitter::Splitter(QWidget *parent) : QWidget(parent), ui(new (Ui_splitter))
{
  ui->setupUi(this);
  // setAttribute(Qt::WA_StyledBackground);
  // ui->splitter_widget_1->setAttribute(Qt::WA_StyledBackground);
  // ui->splitter_widget_2->setAttribute(Qt::WA_StyledBackground);
  StyleMgr::SetStyleToWidgetByCssFile(this, ":/helloqt/resources/qss/custom/splitter.qss");

  QList<int> spliteList_3;
  spliteList_3.append(320);
  spliteList_3.append(896 - 320);
  ui->splitter_3->setSizes(spliteList_3);

  ui->splitter_2->setStretchFactor(0, 1);
  ui->splitter_2->setStretchFactor(1, 2);
  ui->splitter_2->setStretchFactor(2, 3);
}

Splitter::~Splitter()
{
  delete ui;
}
