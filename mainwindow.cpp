#include "mainwindow.h"
#include "ui_mainwindow.h"

#include <mylib.h>
#include <mylibext.h>

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);
}

MainWindow::~MainWindow()
{
    delete ui;
}

void test(){

}

void MainWindow::on_pushButton_clicked()
{
    ui->textEdit->append( "Hello World! ");
    ui->textEdit->append( tr("测试中文"));

    MyLib mylib;
    MyLibExt mylibExt;
    ui->textEdit->append( "mylib.sayHello ");
    ui->textEdit->append(QString::fromStdString(mylib.sayHello("wiseking")));
    ui->textEdit->append( tr(""));
    ui->textEdit->append( "mylibExt.sayHello ");
    ui->textEdit->append(QString::fromStdString(mylibExt.sayHello("wiseking")));
    ui->textEdit->append( tr(""));
    ui->textEdit->append( "mylibExt.sayHelloExt ");
    ui->textEdit->append(QString::fromStdString(mylibExt.sayHelloExt("wiseking")));
    ui->textEdit->append( tr(""));
    ui->textEdit->repaint();
}

void MainWindow::on_pbLib_clicked()
{
    MyLib mylib;
    MyLibExt mylibExt;
    ui->textEdit->append( "mylib.sayHello ");
    ui->textEdit->append(QString::fromStdString(mylib.sayHello("wiseking")));
    ui->textEdit->append( tr(""));
    ui->textEdit->append( "mylibExt.sayHello ");
    ui->textEdit->append(QString::fromStdString(mylibExt.sayHello("wiseking")));
    ui->textEdit->append( tr(""));
    ui->textEdit->append( "mylibExt.sayHelloExt ");
    ui->textEdit->append(QString::fromStdString(mylibExt.sayHelloExt("wiseking")));
    ui->textEdit->append( tr(""));
    ui->textEdit->repaint();

}
