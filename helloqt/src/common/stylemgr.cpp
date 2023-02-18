#include "stylemgr.h"

void StyleMgr::SetStyleToAppByCssFolder(const QString &qssfolder)
{
  QString all_style;
  QDir dir(qssfolder);
  QFileInfoList file_list = dir.entryInfoList(QDir::Files);
  for (auto fileinfo : file_list)
  {
    if (fileinfo.suffix() != "qss")
      continue;
    QString path = QString("%1/%2").arg(qssfolder).arg(fileinfo.fileName());
    QFile file(path);
    file.open(QIODevice::ReadOnly);
    QString style = file.readAll();
    if (!style.isEmpty())
    {
      all_style += style;
    }
    file.close();
  }
  qApp->setStyleSheet(all_style);
}

void StyleMgr::SetStyleToWidgetByCssFile(QWidget *widget, const QString &fileName)
{
  QFile fileQss(fileName);
  fileQss.open(QFile::ReadOnly);
  widget->setStyleSheet(fileQss.readAll());
  fileQss.close();
}
