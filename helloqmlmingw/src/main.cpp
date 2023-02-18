#include "helloqmlmingw.h"

#include <QApplication>
#pragma comment(lib, "user32.lib")

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    helloqmlmingw w;
    w.show();
    QString s("123456");
    return a.exec();
}