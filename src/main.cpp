#include "helloqt.h"
#include "firstui.h"
#include "common/stylemgr.h"
#include <QApplication>
#pragma comment(lib, "user32.lib")

int main(int argc, char *argv[])
{
  QApplication a(argc, argv);
  StyleMgr::SetStyle(":/helloqt/resources/qss");
  Helloqt w;
  w.show();
  return a.exec();
}
