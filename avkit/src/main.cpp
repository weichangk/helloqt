#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtQml>
#include "framelesswindow.h"

// static QJSValue example_qjsvalue_singletontype_provider(QQmlEngine *engine, QJSEngine *scriptEngine)
// {
//     Q_UNUSED(engine)

//     static int seedValue = 5;
//     QJSValue example = scriptEngine->newObject();
//     example.setProperty("someProperty", seedValue++);
//     return example;
// }

int main(int argc, char *argv[])
{
  qmlRegisterType<FramelessWindow>("FramelessWindow", 1, 0, "FramelessWindow");
  // qmlRegisterSingletonType("MyFiles", 1, 0, "MyFiles", example_qjsvalue_singletontype_provider);
  // qmlRegisterSingletonType(QUrl("qrc:/MyFiles.qml"), "App", 1, 0, "MyFiles");
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
  QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
  QGuiApplication app(argc, argv);

  QSurfaceFormat format;
  format.setSamples(8);
  QSurfaceFormat::setDefaultFormat(format);

  QQmlApplicationEngine engine;
  const QUrl url(QStringLiteral("qrc:/main.qml"));
  QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                  &app, [url](QObject *obj, const QUrl &objUrl) {
    if (!obj && url == objUrl)
      QCoreApplication::exit(-1);
  }, Qt::QueuedConnection);
  engine.load(url);
  return app.exec();
}
