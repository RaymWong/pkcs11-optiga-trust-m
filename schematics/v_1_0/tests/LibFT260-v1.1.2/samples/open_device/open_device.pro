TEMPLATE = app
CONFIG  -= qt
CONFIG  += console

TARGET = open_device

#####################
debug:OBJECTS_DIR   = ./tmp/debug_obj
release:OBJECTS_DIR = ./tmp/release_obj
MOC_DIR     = ./tmp
UI_DIR      = ./tmp

#####################
# LibFT260

INCLUDEPATH  += ../../imports/LibFT260/inc
QMAKE_LIBDIR += ../../imports/LibFT260/lib
debug:LIBS += -lLibFT260

#####################

INCLUDEPATH += ../../common

SOURCES += open_device.cpp