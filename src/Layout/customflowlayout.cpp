#include "customflowlayout.h"

CustomFlowLayout::CustomFlowLayout(QWidget *parent) : QWidget(parent), ui(new (Ui_customflowlayout))
{
  ui->setupUi(this);
  setAttribute(Qt::WA_StyledBackground);
  SetFlItems();
}

CustomFlowLayout::~CustomFlowLayout()
{
  delete ui;
}

void CustomFlowLayout::resizeEvent(QResizeEvent *event)
{
  this->SetFlowLayout(ui->scrollArea, ui->gridLayout, Qt::AlignCenter, flItems, 240);
}

void CustomFlowLayout::SetFlowLayout(QScrollArea *scr, QGridLayout *gri, Qt::Alignment alig, QList<CustomFlowLayoutItem *> items, int item_w)
{
  int col_cnt = (scr->width() - scr->widget()->layout()->contentsMargins().left() - scr->widget()->layout()->contentsMargins().right() - gri->contentsMargins().left() - gri->contentsMargins().right()) / (item_w + gri->horizontalSpacing());
  int row_cnt = 0;
  if (!col_cnt)
    return;
  if (!items.size())
    return;
  if (items.size() % col_cnt)
    row_cnt = items.size() / col_cnt + 1;
  else
    row_cnt = items.size() / col_cnt;

  for (int i = 0; i < row_cnt; i++)
  {
    for (int j = 0; j < col_cnt; j++)
    {
      if (col_cnt * i + j < items.size())
        gri->addWidget(items.at(col_cnt * i + j), i, j, alig);
    }
    // gri->setColumnStretch(i,1);
  }
}

void CustomFlowLayout::SetFlItems()
{
  int item_w = 240;
  int item_h = 140;

  CustomFlowLayoutItem *item1 = new CustomFlowLayoutItem(this);
  item1->setObjectName("CustomFlowLayoutItem1");
  item1->Widget()->setObjectName("CustomFlowLayoutItem1_Widget");
  item1->PushButton()->setObjectName("CustomFlowLayoutItem1_PushButton");
  item1->setMaximumSize(QSize(item_w, item_h));
  item1->setMinimumSize(QSize(item_w, item_h));

  flItems.append(item1);
  ui->gridLayout->addWidget(item1);

  CustomFlowLayoutItem *item2 = new CustomFlowLayoutItem(this);
  item2->setObjectName("CustomFlowLayoutItem2");
  item2->Widget()->setObjectName("CustomFlowLayoutItem2_Widget");
  item2->PushButton()->setObjectName("CustomFlowLayoutItem2_PushButton");
  item2->setMaximumSize(QSize(item_w, item_h));
  item2->setMinimumSize(QSize(item_w, item_h));
  flItems.append(item2);
  ui->gridLayout->addWidget(item2);

  CustomFlowLayoutItem *item3 = new CustomFlowLayoutItem(this);
  item3->setObjectName("CustomFlowLayoutItem3");
  item3->Widget()->setObjectName("CustomFlowLayoutItem3_Widget");
  item3->PushButton()->setObjectName("CustomFlowLayoutItem3_PushButton");
  item3->setMaximumSize(QSize(item_w, item_h));
  item3->setMinimumSize(QSize(item_w, item_h));
  flItems.append(item3);
  ui->gridLayout->addWidget(item3);

  CustomFlowLayoutItem *item4 = new CustomFlowLayoutItem(this);
  item4->setObjectName("CustomFlowLayoutItem4");
  item4->Widget()->setObjectName("CustomFlowLayoutItem4_Widget");
  item4->PushButton()->setObjectName("CustomFlowLayoutItem4_PushButton");
  item4->setMaximumSize(QSize(item_w, item_h));
  item4->setMinimumSize(QSize(item_w, item_h));
  flItems.append(item4);
  ui->gridLayout->addWidget(item4);

  CustomFlowLayoutItem *item5 = new CustomFlowLayoutItem(this);
  item5->setObjectName("CustomFlowLayoutItem5");
  item5->Widget()->setObjectName("CustomFlowLayoutItem5_Widget");
  item5->PushButton()->setObjectName("CustomFlowLayoutItem5_PushButton");
  item5->setMaximumSize(QSize(item_w, item_h));
  item5->setMinimumSize(QSize(item_w, item_h));
  flItems.append(item5);
  ui->gridLayout->addWidget(item5);

  CustomFlowLayoutItem *item6 = new CustomFlowLayoutItem(this);
  item6->setObjectName("CustomFlowLayoutItem6");
  item6->Widget()->setObjectName("CustomFlowLayoutItem6_Widget");
  item6->PushButton()->setObjectName("CustomFlowLayoutItem6_PushButton");
  item6->setMaximumSize(QSize(item_w, item_h));
  item6->setMinimumSize(QSize(item_w, item_h));
  flItems.append(item6);
  ui->gridLayout->addWidget(item6);

  CustomFlowLayoutItem *item7 = new CustomFlowLayoutItem(this);
  item7->setObjectName("CustomFlowLayoutItem7");
  item7->Widget()->setObjectName("CustomFlowLayoutItem7_Widget");
  item7->PushButton()->setObjectName("CustomFlowLayoutItem7_PushButton");
  item7->setMaximumSize(QSize(item_w, item_h));
  item7->setMinimumSize(QSize(item_w, item_h));
  flItems.append(item7);
  ui->gridLayout->addWidget(item7);

  CustomFlowLayoutItem *item8 = new CustomFlowLayoutItem(this);
  item8->setObjectName("CustomFlowLayoutItem8");
  item8->Widget()->setObjectName("CustomFlowLayoutItem8_Widget");
  item8->PushButton()->setObjectName("CustomFlowLayoutItem8_PushButton");
  item8->setMaximumSize(QSize(item_w, item_h));
  item8->setMinimumSize(QSize(item_w, item_h));
  flItems.append(item8);
  ui->gridLayout->addWidget(item8);

  CustomFlowLayoutItem *item9 = new CustomFlowLayoutItem(this);
  item9->setObjectName("CustomFlowLayoutItem9");
  item9->Widget()->setObjectName("CustomFlowLayoutItem9_Widget");
  item9->PushButton()->setObjectName("CustomFlowLayoutItem9_PushButton");
  item9->setMaximumSize(QSize(item_w, item_h));
  item9->setMinimumSize(QSize(item_w, item_h));
  flItems.append(item9);
  ui->gridLayout->addWidget(item9);

  CustomFlowLayoutItem *item10 = new CustomFlowLayoutItem(this);
  item10->setObjectName("CustomFlowLayoutItem10");
  item10->Widget()->setObjectName("CustomFlowLayoutItem10_Widget");
  item10->PushButton()->setObjectName("CustomFlowLayoutItem10_PushButton");
  item10->setMaximumSize(QSize(item_w, item_h));
  item10->setMinimumSize(QSize(item_w, item_h));
  flItems.append(item10);
  ui->gridLayout->addWidget(item10);

  CustomFlowLayoutItem *item11 = new CustomFlowLayoutItem(this);
  item11->setObjectName("CustomFlowLayoutItem11");
  item11->Widget()->setObjectName("CustomFlowLayoutItem11_Widget");
  item11->PushButton()->setObjectName("CustomFlowLayoutItem11_PushButton");
  item11->setMaximumSize(QSize(item_w, item_h));
  item11->setMinimumSize(QSize(item_w, item_h));
  flItems.append(item11);
  ui->gridLayout->addWidget(item11);

  CustomFlowLayoutItem *item12 = new CustomFlowLayoutItem(this);
  item12->setObjectName("CustomFlowLayoutItem12");
  item12->Widget()->setObjectName("CustomFlowLayoutItem12_Widget");
  item12->PushButton()->setObjectName("CustomFlowLayoutItem12_PushButton");
  item12->setMaximumSize(QSize(item_w, item_h));
  item12->setMinimumSize(QSize(item_w, item_h));
  flItems.append(item12);
  ui->gridLayout->addWidget(item12);

  CustomFlowLayoutItem *item13 = new CustomFlowLayoutItem(this);
  item13->setObjectName("CustomFlowLayoutItem13");
  item13->Widget()->setObjectName("CustomFlowLayoutItem13_Widget");
  item13->PushButton()->setObjectName("CustomFlowLayoutItem13_PushButton");
  item13->setMaximumSize(QSize(item_w, item_h));
  item13->setMinimumSize(QSize(item_w, item_h));
  flItems.append(item13);
  ui->gridLayout->addWidget(item13);

  CustomFlowLayoutItem *item14 = new CustomFlowLayoutItem(this);
  item14->setObjectName("CustomFlowLayoutItem14");
  item14->Widget()->setObjectName("CustomFlowLayoutItem14_Widget");
  item14->PushButton()->setObjectName("CustomFlowLayoutItem14_PushButton");
  item14->setMaximumSize(QSize(item_w, item_h));
  item14->setMinimumSize(QSize(item_w, item_h));
  flItems.append(item14);
  ui->gridLayout->addWidget(item14);

  CustomFlowLayoutItem *item15 = new CustomFlowLayoutItem(this);
  item15->setObjectName("CustomFlowLayoutItem15");
  item15->Widget()->setObjectName("CustomFlowLayoutItem15_Widget");
  item15->PushButton()->setObjectName("CustomFlowLayoutItem15_PushButton");
  item15->setMaximumSize(QSize(item_w, item_h));
  item15->setMinimumSize(QSize(item_w, item_h));
  flItems.append(item15);
  ui->gridLayout->addWidget(item15);
}
