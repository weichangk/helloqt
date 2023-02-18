#include "stackedwidget.h"

StackedWidget::StackedWidget(QWidget *parent) : QWidget(parent), ui(new Ui_stackedwidget())
{
  ui->setupUi(this);
  StyleMgr::SetStyleToWidgetByCssFile(this, ":/helloqt/resources/qss/custom/stackedwidget.qss");
  QStringList list;
  list << "one page"
       << "two page"
       << "third page";
  ui->stackedwidget_comboBox->addItems(list);
  connect(ui->stackedwidget_comboBox, QOverload<int>::of(&QComboBox::activated), ui->stackedwidget_stackedWidget, &QStackedWidget::setCurrentIndex);
  connect(ui->stackedwidget_stackedWidget, QOverload<int>::of(&QStackedWidget::currentChanged), this, &StackedWidget::ShowCurrentChanged);
  connect(ui->stackedwidget_stackedWidget, QOverload<int>::of(&QStackedWidget::widgetRemoved), this, &StackedWidget::ShowWidgetRemoved);

  connect(ui->stackedwidget_pushButton_1, &QPushButton::clicked, this, &StackedWidget::AddAWidget);
  connect(ui->stackedwidget_pushButton_2, &QPushButton::clicked, this, &StackedWidget::ShowAWidget);
  connect(ui->stackedwidget_pushButton_3, &QPushButton::clicked, this, &StackedWidget::DelAWidget);
  connect(ui->stackedwidget_pushButton_4, &QPushButton::clicked, this, &StackedWidget::ShowIndex0);
}

StackedWidget::~StackedWidget()
{
  delete ui;
}

void StackedWidget::AddAWidget()
{
  if (aqwidget == nullptr)
  {
    aqwidget = new QWidget(ui->stackedwidget_stackedWidget);
    aqwidget->setObjectName("stackedwidget_page_a");
  }

  int index = ui->stackedwidget_stackedWidget->indexOf(aqwidget);
  qDebug() << index;
  if (index < 0)
  {
    ui->stackedwidget_stackedWidget->addWidget(aqwidget);
  }
}

void StackedWidget::ShowAWidget()
{
  if (aqwidget != nullptr)
  {
    ui->stackedwidget_stackedWidget->setCurrentWidget(aqwidget);
  }
}

void StackedWidget::DelAWidget()
{
  if (aqwidget != nullptr)
  {
    ui->stackedwidget_stackedWidget->removeWidget(aqwidget);
  }
}

void StackedWidget::ShowIndex0()
{
  ui->stackedwidget_stackedWidget->setCurrentIndex(0);
}

void StackedWidget::ShowCurrentChanged(int index)
{
  QMessageBox msgBox;
  msgBox.setText(QString("ShowCurrentChanged index %1").arg(index));
  msgBox.exec();
}

void StackedWidget::ShowWidgetRemoved(int index)
{
  QMessageBox msgBox;
  msgBox.setText(QString("ShowWidgetRemoved index %1").arg(index));
  msgBox.exec();
}
