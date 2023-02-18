#include "itemviews.h"

ItemViews::ItemViews(QWidget *parent) : QWidget(parent), ui(new (Ui_itemviews))
{
  ui->setupUi(this);
  setAttribute(Qt::WA_StyledBackground);
  StyleMgr::SetStyleToWidgetByCssFile(this, ":/helloqt/resources/qss/custom/itemviews.qss");

  SetTreeView();
  SetListView();
}

ItemViews::~ItemViews()
{
}

void ItemViews::SetTreeView()
{
  // 创建文件系统模型
  QFileSystemModel *fsmodel = new QFileSystemModel;
  qDebug() << QDir::currentPath();
  // 指定要监视的目录
  fsmodel->setRootPath(QDir::currentPath());
  // 为视图指定模型
  ui->itemviews_treeView->setModel(fsmodel);
  // 指定根索引
  ui->itemviews_treeView->setRootIndex(fsmodel->index(QDir::currentPath()));
}

void ItemViews::SetListView()
{
  QFileSystemModel *fsmodel = new QFileSystemModel;
  fsmodel->setRootPath(QDir::currentPath());
  ui->itemviews_listView->setModel(fsmodel);
  ui->itemviews_listView->setRootIndex(fsmodel->index(QDir::currentPath()));
}
