#include "helloqt.h"
#include "firstui.h"
#include "common/stylemgr.h"
#include <QApplication>
#pragma comment(lib, "user32.lib")

int main(int argc, char *argv[])
{
  QApplication a(argc, argv);
  StyleMgr::SetStyleToAppByCssFolder(":/helloqt/resources/qss/global");
  Helloqt w;
  w.show();
  return a.exec();
}
