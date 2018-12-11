#include <QtPrintSupport/QPrinter>
//#include <QGuiApplication>
#include<QApplication>
#include <QQmlApplicationEngine>

#include "qmlplot.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QApplication app(argc, argv);

    //QGuiApplication app(argc, argv);
    qmlRegisterSingletonType(QUrl(QStringLiteral("qrc:/patient/PatientModel.qml")), "", 1, 0, "PatientModel");
    qmlRegisterType<CustomPlotItem>("CustomPlot", 1, 0, "CustomPlotItem");

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
