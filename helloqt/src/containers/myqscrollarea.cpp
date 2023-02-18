#include "myqscrollarea.h"

MyQScrollArea::MyQScrollArea(QWidget *parent) : QScrollArea(parent)
{
  // setMouseTracking(true);
  verticalScrollBar()->hide();
  horizontalScrollBar()->hide();
}

MyQScrollArea::~MyQScrollArea()
{
}

void MyQScrollArea::enterEvent(QEvent *event)
{
  verticalScrollBar()->show();
  horizontalScrollBar()->show();
  QAbstractScrollArea::enterEvent(event);
}
void MyQScrollArea::leaveEvent(QEvent *event)
{
  verticalScrollBar()->hide();
  horizontalScrollBar()->hide();
  QAbstractScrollArea::leaveEvent(event);
}
