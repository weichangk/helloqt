#include "helloqt.h"

Helloqt::Helloqt(QWidget *parent) : QWidget(parent), ui(new Ui_helloqt)
{
  ui->setupUi(this);
  ui->treeWidget->setHeaderHidden(true);
  ui->tabWidget->tabBar()->hide();
  // 去边框
  ui->tabWidget->setDocumentMode(true);

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
  QTreeWidgetItem *layouts_splitter = new QTreeWidgetItem(layoutsItem);
  layouts_splitter->setText(0, tr("Splitter"));
  QTreeWidgetItem *layouts_vertical_layout = new QTreeWidgetItem(layoutsItem);
  layouts_vertical_layout->setText(0, tr("QBoxLayout"));
  QTreeWidgetItem *layouts_grid_layout = new QTreeWidgetItem(layoutsItem);
  layouts_grid_layout->setText(0, tr("QGridLayout"));
  QTreeWidgetItem *layouts_form_layout = new QTreeWidgetItem(layoutsItem);
  layouts_form_layout->setText(0, tr("QFormLayout"));
  QTreeWidgetItem *layouts_flow_layout = new QTreeWidgetItem(layoutsItem);
  layouts_flow_layout->setText(0, tr("CustomFlowLayout"));

  QTreeWidgetItem *containeritem = new QTreeWidgetItem(ui->treeWidget);
  containeritem->setText(0, tr("Containers"));
  QTreeWidgetItem *scrollarea = new QTreeWidgetItem(containeritem);
  scrollarea->setText(0, tr("ScrollArea"));
  QTreeWidgetItem *dockwidget = new QTreeWidgetItem(containeritem);
  dockwidget->setText(0, tr("DockWidget"));
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
    qDebug("Home");
    ui->tabWidget->setCurrentWidget(home);
  }
  else if (item->text(column) == tr("CustomFlowLayout"))
  {
    if (customflowlayout == nullptr)
    {
      customflowlayout = new CustomFlowLayout(ui->tabWidget);
      ui->tabWidget->addTab(customflowlayout, tr("CustomFlowLayout"));
    }
    ui->tabWidget->setCurrentWidget(customflowlayout);
  }
  else if (item->text(column) == tr("Splitter"))
  {
    if (splitter == nullptr)
    {
      splitter = new Splitter(ui->tabWidget);
      ui->tabWidget->addTab(splitter, tr("Splitter"));
    }
    ui->tabWidget->setCurrentWidget(splitter);
  }
  else if (item->text(column) == tr("ScrollArea"))
  {
    if (scrollarea == nullptr)
    {
      scrollarea = new ScrollArea(ui->tabWidget);
      ui->tabWidget->addTab(scrollarea, tr("ScrollArea"));
    }
    ui->tabWidget->setCurrentWidget(scrollarea);
  }
  else if (item->text(column) == tr("DockWidget"))
  {
    if (dockwidget == nullptr)
    {
      dockwidget = new DockWidget(ui->tabWidget);
      ui->tabWidget->addTab(dockwidget, tr("DockWidget"));
    }
    ui->tabWidget->setCurrentWidget(dockwidget);
  }
}
