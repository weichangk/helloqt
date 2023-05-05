#include <QGuiApplication>
#include <QQmlApplicationEngine>

int main(int argc, char *argv[])
{
  QGuiApplication app(argc, argv);

  QQmlApplicationEngine engine;

  engine.addImportPath(":/weick.com");
  engine.load(QUrl(u"qrc:/weick.com/helloqt6/qml/Main.qml"_qs));

  return app.exec();
}
