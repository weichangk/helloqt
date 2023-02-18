#pragma once
#include "ui_helloqml.h"
#include <QMainWindow>

class helloqml : public QMainWindow {
    Q_OBJECT
    
public:
    helloqml(QWidget* parent = nullptr);
    ~helloqml();

private:
    Ui_helloqml* ui;
};