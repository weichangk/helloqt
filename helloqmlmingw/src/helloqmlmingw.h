#pragma once
#include "ui_helloqmlmingw.h"
#include <QMainWindow>

class helloqmlmingw : public QMainWindow {
    Q_OBJECT
    
public:
    helloqmlmingw(QWidget* parent = nullptr);
    ~helloqmlmingw();

private:
    Ui_helloqmlmingw* ui;
};