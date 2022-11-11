#pragma once
#include <QtWidgets>

class MyQWidget : public QWidget
{
  Q_OBJECT
private:

public:
  MyQWidget(QWidget *parent = nullptr);
  ~MyQWidget();
};
