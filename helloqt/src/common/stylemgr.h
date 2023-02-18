#pragma once
#include <QApplication>
#include <QWidget>
#include <QtCore/qdir.h>

class StyleMgr
{
public:
  static void SetStyleToAppByCssFolder(const QString &qssfolder);
  static void SetStyleToWidgetByCssFile(QWidget *widget, const QString& fileName);
};
