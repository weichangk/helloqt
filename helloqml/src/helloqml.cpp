#include "helloqml.h"

helloqml::helloqml(QWidget* parent)
    : QMainWindow(parent)
    , ui(new Ui_helloqml)
{
    ui->setupUi(this);
}

helloqml::~helloqml()
{
    delete ui; 
}