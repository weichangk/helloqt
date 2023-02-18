#pragma once
#include <QtWidgets>

class MyQScrollArea : public QScrollArea
{
  Q_OBJECT
private:
protected:
  void enterEvent(QEvent *event) override;
  void leaveEvent(QEvent *event) override;

public:
  MyQScrollArea(QWidget *parent = nullptr);
  ~MyQScrollArea();
};
