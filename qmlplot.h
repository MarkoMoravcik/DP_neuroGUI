#ifndef QMLPLOT_H
#define QMLPLOT_H

#include <QtQuick>
#include "qcustomplot.h"

class QCustomPlot;
class QCPAbstractPlottable;

class CustomPlotItem : public QQuickPaintedItem
{
    Q_OBJECT

public:
    CustomPlotItem( QQuickItem* parent = 0 );
    virtual ~CustomPlotItem();

    void paint( QPainter* painter );

    Q_INVOKABLE void initCustomPlot();

protected:
    void routeMouseEvents( QMouseEvent* event );
    void routeWheelEvents( QWheelEvent* event );

    virtual void mousePressEvent( QMouseEvent* event );
    virtual void mouseReleaseEvent( QMouseEvent* event );
    virtual void mouseMoveEvent( QMouseEvent* event );
    virtual void mouseDoubleClickEvent( QMouseEvent* event );
    virtual void wheelEvent( QWheelEvent *event );

    virtual void timerEvent(QTimerEvent *event);

private:
    QCustomPlot*         mPlot;
    int                  m_timerId;
    QPointer<QCPGraph> mGraph1;
    QPointer<QCPGraph> mGraph2;
    bool rescaleXFlag;

private slots:
    void onCustomReplot();
    void updateCustomPlotSize();

};

#endif // QMLPLOT_H
