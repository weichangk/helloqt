#include "helloqmlmingw.h"

helloqmlmingw::helloqmlmingw(QWidget* parent)
    : QMainWindow(parent)
    , ui(new Ui_helloqmlmingw)
{
    ui->setupUi(this);
}

helloqmlmingw::~helloqmlmingw()
{
    delete ui;
}
