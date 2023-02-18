#include "layouts.h"

Layouts::Layouts(QWidget *parent) : QWidget(parent), ui(new(Ui_layouts))
{
  ui->setupUi(this);
}

Layouts::~Layouts()
{
  delete ui;
}
