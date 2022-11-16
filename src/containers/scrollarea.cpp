#include "scrollarea.h"

ScrollArea::ScrollArea(QWidget *parent) : QWidget(parent), ui(new (Ui_scrollarea))
{
  ui->setupUi(this);
  setAttribute(Qt::WA_StyledBackground);
  StyleMgr::SetStyleToWidgetByCssFile(ui->scrollarea_scrollArea_1, ":/helloqt/resources/qss/custom/scrollarea1.qss");
  StyleMgr::SetStyleToWidgetByCssFile(ui->scrollarea_scrollArea_2, ":/helloqt/resources/qss/custom/scrollarea2.qss");
  StyleMgr::SetStyleToWidgetByCssFile(ui->scrollarea_scrollArea_3, ":/helloqt/resources/qss/custom/scrollarea3.qss");

  ui->scrollarea_widget_1->setMinimumSize(500, 1100);
  ui->scrollarea_widget_2->setMinimumSize(500, 1100);
  ui->scrollarea_widget_3->setMinimumSize(500, 1100);
  QString text = ":/customflowlayout/resources/image/customflowlayout/icons8-class-dojo-96.png";
  SetScrollArea(ui->scrollarea_widget_1, text);
  text = ":/customflowlayout/resources/image/customflowlayout/icons8-class-dojo-96.png";
  SetScrollArea(ui->scrollarea_widget_2, text);
  text = ":/customflowlayout/resources/image/customflowlayout/icons8-class-dojo-96.png";
  SetScrollArea(ui->scrollarea_widget_3, text);
}

ScrollArea::~ScrollArea()
{
  delete ui;
}

void ScrollArea::SetScrollArea(QWidget *widget, QString text)
{
  QVBoxLayout *layout = new QVBoxLayout(widget);
  QImage image(text);
  QLabel *label = new QLabel(widget);
  label->setPixmap(QPixmap::fromImage(image));
  layout->addWidget(label);
  widget->setLayout(layout);
}
