QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = HelloWorldGui
TEMPLATE = app


SOURCES += main.cpp\
        mainwindow.cpp

HEADERS  += mainwindow.h

FORMS    += mainwindow.ui
## Added by IDE : mylib
EXT_LIBS +=    -lmylib
## Added by IDE : mylib-ext
EXT_LIBS +=    -lmylibExt
LIBS += $${EXT_LIBS}
