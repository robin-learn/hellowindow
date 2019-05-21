//
// Created by robin on 2019-05-01.
//

#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <ui_mainwindowbase.h>

class MainWindow: public QMainWindow, private Ui::MainWindowBase {
    Q_OBJECT

public:
    MainWindow(QWidget *parent = 0);
};


#endif //MAINWINDOW_H
