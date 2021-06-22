#include "helper.h"

Helper::Helper(QObject *parent) : QObject(parent)
{

}

QVector<int> tabs;

QVector<int> Helper::newGame()
{
    QVector<int> tabs;

    for (int i = 0; i <10; i++ ) {
        int x = rand() % 4;
        tabs.push_back(x);
    }

    return tabs;
}
