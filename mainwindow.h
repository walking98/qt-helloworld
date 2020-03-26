#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>

extern void test();

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();
    void test();

private slots:
    void on_pushButton_clicked();
    void on_pbLib_clicked();

private:
    Ui::MainWindow *ui;
};

#endif // MAINWINDOW_H
