#include "dockwidget.h"

DockWidget::DockWidget(QWidget *parent) : QMainWindow(parent), ui(new Ui_dockwidget)
{
  ui->setupUi(this);
}

DockWidget::~DockWidget()
{
  delete ui;
}
