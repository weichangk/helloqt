#pragma once
#include <QtWidgets>
#include "ui_itemviews.h"
#include "../common/stylemgr.h"
#include <QFileSystemModel>

class ItemViews : public QWidget
{
  Q_OBJECT
private:
  Ui_itemviews *ui;

private:
  void SetTreeView();
  void SetListView();

public:
  ItemViews(QWidget *parent = nullptr);
  ~ItemViews();
};
