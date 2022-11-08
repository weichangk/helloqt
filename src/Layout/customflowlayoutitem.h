#pragma once
#include <QtWidgets>
#include "ui_customflowlayoutitem.h"

class CustomFlowLayoutItem : public QWidget
{
  Q_OBJECT
private:
  Ui_customflowlayoutitem *ui;

public:
  CustomFlowLayoutItem(QWidget *parent = nullptr);
  ~CustomFlowLayoutItem();

public:
	QWidget* Widget();
	QPushButton* PushButton();
};
