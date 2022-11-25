#include "sizetest.h"

SizeTest::SizeTest(QWidget *parent) : QWidget(parent), ui(new Ui_sizetest)
{
  ui->setupUi(this);
  connect(ui->sizetest_pushButton_1, &QPushButton::clicked, this, [=]()
          { qDebug() << "width:" << this->width() << ","
                     << "height:" << this->height()<< "   "
                     << "sizeHintwidth:" << this->sizeHint().width() << ","
                     << "sizeHintheight:" << this->sizeHint().height(); });
}

SizeTest::~SizeTest()
{
  delete ui;
}
