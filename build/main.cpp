#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "theprice.h"


int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_DisableHighDpiScaling);

    QGuiApplication app(argc, argv);

    qmlRegisterType<ThePrice>("com.seeme.theprice",1,0,"ThePrice");

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
