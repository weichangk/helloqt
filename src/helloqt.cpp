#include "helloqt.h"

Helloqt::Helloqt(QWidget *parent) : QWidget(parent), ui(new Ui_helloqt)
{
  ui->setupUi(this);
  ui->treeWidget->setHeaderHidden(true);
  ui->tabWidget->tabBar()->hide();
  // 去边框
  // ui->tabWidget->setDocumentMode(true);

  SetTree();
  SetHome();

  connect(ui->treeWidget, SIGNAL(itemClicked(QTreeWidgetItem *, int)), this, SLOT(NavigationToView(QTreeWidgetItem *, int)));
}

Helloqt::~Helloqt()
{
  delete ui;
}

void Helloqt::SetTree()
{
  QTreeWidgetItem *home = new QTreeWidgetItem(ui->treeWidget);
  home->setText(0, tr("Home"));

  QTreeWidgetItem *layoutsItem = new QTreeWidgetItem(ui->treeWidget);
  layoutsItem->setText(0, tr("Layouts"));
  QTreeWidgetItem *layouts_vertical_layout = new QTreeWidgetItem(layoutsItem);
  layouts_vertical_layout->setText(0, tr("QBoxLayout"));
  QTreeWidgetItem *layouts_grid_layout = new QTreeWidgetItem(layoutsItem);
  layouts_grid_layout->setText(0, tr("QGridLayout"));
  QTreeWidgetItem *layouts_form_layout = new QTreeWidgetItem(layoutsItem);
  layouts_form_layout->setText(0, tr("QFormLayout"));
  QTreeWidgetItem *layouts_flow_layout = new QTreeWidgetItem(layoutsItem);
  layouts_flow_layout->setText(0, tr("CustomFlowLayout"));
}

void Helloqt::SetHome()
{
  home = new Home(ui->tabWidget);
  ui->tabWidget->addTab(home, tr("Home"));
  ui->tabWidget->setCurrentWidget(home);
}

void Helloqt::NavigationToView(QTreeWidgetItem *item, int column)
{
  if (item->text(column) == tr("Home"))
  {
    qDebug("xxxxx");
    ui->tabWidget->setCurrentWidget(home);
  }
  // else if (item->text(column) == tr("QBoxLayout"))
  // {
  //   if (qboxlayouttestui == nullptr)
  //   {
  //     qboxlayouttestui = new QBoxLayoutTestUI(ui.tabWidget);
  //     ui.tabWidget->addTab(qboxlayouttestui, tr("QBoxLayout"));
  //   }
  //   ui.tabWidget->setCurrentWidget(qboxlayouttestui);
  // }
  else if (item->text(column) == tr("CustomFlowLayout"))
  {
    if (customflowlayout == nullptr)
    {
      customflowlayout = new CustomFlowLayout(ui->tabWidget);
      ui->tabWidget->addTab(customflowlayout, tr("CustomFlowLayout"));
    }
    ui->tabWidget->setCurrentWidget(customflowlayout);
  }
}
