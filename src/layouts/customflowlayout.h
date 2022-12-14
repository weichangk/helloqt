#pragma once
#include <QtWidgets>
#include "ui_customflowlayout.h"
#include "customflowlayoutitem.h"
#include "qflowlayout.h"
#include "../common/stylemgr.h"

class CustomFlowLayout : public QWidget
{
  Q_OBJECT
private:
  Ui_customflowlayout *ui;

private:
  void SetFlItemsToCustomFlowLayout();
  void SetFlItemsToQFlowLayout();
protected:
  void resizeEvent(QResizeEvent *event);

public:
  QList<CustomFlowLayoutItem *> flItems;

public:
  CustomFlowLayout(QWidget *parent = nullptr);
  ~CustomFlowLayout();
  void SetFlowLayout(QScrollArea *scr, QGridLayout *gri, Qt::Alignment alig, QList<CustomFlowLayoutItem *> items, int item_w);
};
